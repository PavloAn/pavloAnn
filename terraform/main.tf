resource "virtualbox_vm" "my-vm" {
count = 2 # Цей операнд вказує скільки ресурсів буде створено

  name        = "my-vm-${count.index + 1}" # Оскільки віртуальних машин повинно створити дві, то й імена повинні відрізнятись. В даному випадку, використовуємо звичні арифметичні дії, для ітерації.
  image       = var.img
  memory      = var.ram
  cpus        = "1"
  boot_order  = ["disk"]

  network_adapter {
       type = "bridged"
       host_interface="en0"
    }
}
