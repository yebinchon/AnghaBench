
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IO_CLOSED ;
 char const* socket_strerror (int) ;

const char *udp_strerror(int err) {


    if (err == IO_CLOSED) return "refused";
    else return socket_strerror(err);
}
