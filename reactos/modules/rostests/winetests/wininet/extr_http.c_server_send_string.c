
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int send (int ,char const*,int ,int ) ;
 int server_socket ;
 int strlen (char const*) ;

__attribute__((used)) static void server_send_string(const char *msg)
{
    send(server_socket, msg, strlen(msg), 0);
}
