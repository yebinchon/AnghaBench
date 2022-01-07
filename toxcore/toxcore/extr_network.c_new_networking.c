
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint16_t ;
typedef int Networking_Core ;
typedef int IP ;


 scalar_t__ TOX_PORTRANGE_FROM ;
 scalar_t__ TOX_PORTRANGE_TO ;
 int * new_networking_ex (int ,scalar_t__,scalar_t__,int ) ;

Networking_Core *new_networking(IP ip, uint16_t port)
{
    return new_networking_ex(ip, port, port + (TOX_PORTRANGE_TO - TOX_PORTRANGE_FROM), 0);
}
