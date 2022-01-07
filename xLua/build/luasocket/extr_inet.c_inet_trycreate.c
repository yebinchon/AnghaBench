
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int p_socket ;


 int socket_create (int ,int,int,int ) ;
 char const* socket_strerror (int ) ;

const char *inet_trycreate(p_socket ps, int family, int type) {
    return socket_strerror(socket_create(ps, family, type, 0));
}
