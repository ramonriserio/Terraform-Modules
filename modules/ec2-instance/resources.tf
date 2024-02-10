resource "aws_instance" "webserver" {
    ami = "ami-0230bd60aa48260c6"
    instance_type = "t2.micro"
    count = 1
    
    tags = {
        Name = "webserver-${count.index + 1}"
    }
}