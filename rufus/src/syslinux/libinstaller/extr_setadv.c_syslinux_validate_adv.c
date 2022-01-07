
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ADV_SIZE ;
 scalar_t__ adv_consistent (unsigned char*) ;
 int memcpy (unsigned char*,unsigned char*,int) ;
 int syslinux_reset_adv (unsigned char*) ;

int syslinux_validate_adv(unsigned char *advbuf)
{
    if (adv_consistent(advbuf + 0 * ADV_SIZE)) {
 memcpy(advbuf + ADV_SIZE, advbuf, ADV_SIZE);
 return 0;
    } else if (adv_consistent(advbuf + 1 * ADV_SIZE)) {
 memcpy(advbuf, advbuf + ADV_SIZE, ADV_SIZE);
 return 0;
    } else {
 syslinux_reset_adv(advbuf);
 return -1;
    }
}
