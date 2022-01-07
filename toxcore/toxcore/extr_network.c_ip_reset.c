
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int IP ;


 int memset (int *,int ,int) ;

void ip_reset(IP *ip)
{
    if (!ip)
        return;

    memset(ip, 0, sizeof(IP));
}
