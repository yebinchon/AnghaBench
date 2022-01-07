
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADV_LEN ;
 int cleanup_adv (unsigned char*) ;
 int memset (unsigned char*,int ,int ) ;

void syslinux_reset_adv(unsigned char *advbuf)
{

    memset(advbuf + 2 * 4, 0, ADV_LEN);
    cleanup_adv(advbuf);
}
