
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 size_t recv (int ,char*,size_t,int ) ;
 int server_socket ;

__attribute__((used)) static size_t server_read_data(char *buf, size_t buf_size)
{
    return recv(server_socket, buf, buf_size, 0);
}
