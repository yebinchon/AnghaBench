
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tos ;
typedef int evutil_socket_t ;


 int IPPROTO_IP ;
 int IP_TOS ;
 int setsockopt (int ,int ,int ,char*,int) ;

int
ccnet_netSetTOS (evutil_socket_t s, int tos)
{



    return 0;

}
