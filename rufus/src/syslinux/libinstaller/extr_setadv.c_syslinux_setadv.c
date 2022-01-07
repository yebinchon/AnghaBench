
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int ADV_END ;
 size_t ADV_LEN ;
 int ADV_SIZE ;
 int EINVAL ;
 int ENOSPC ;
 int cleanup_adv (int*) ;
 int errno ;
 int memcpy (int*,int*,size_t) ;
 int memmove (int*,int*,size_t) ;
 int memset (int*,int ,size_t) ;
 int* syslinux_adv ;

int syslinux_setadv(int tag, size_t size, const void *data)
{
    uint8_t *p;
    size_t left;
    uint8_t advtmp[ADV_SIZE];

    if ((unsigned)tag - 1 > 254) {
 errno = EINVAL;
 return -1;
    }

    if (size > 255) {
 errno = ENOSPC;
 return -1;
    }

    left = ADV_LEN;
    p = advtmp;
    memcpy(p, syslinux_adv + 2 * 4, left);

    while (left >= 2) {
 uint8_t ptag = p[0];
 size_t plen = p[1] + 2;

 if (ptag == ADV_END)
     break;

 if (ptag == tag) {


     if (plen >= left) {

  break;
     }
     memmove(p, p + plen, left - plen);
 } else {

     if (plen > left)
  break;

     left -= plen;
     p += plen;
 }
    }




    if (size) {
 if (left < size + 2) {
     errno = ENOSPC;
     return -1;
 }

 *p++ = tag;
 *p++ = size;
 memcpy(p, data, size);
 p += size;
 left -= size + 2;
    }

    memset(p, 0, left);


    memcpy(syslinux_adv + 2 * 4, advtmp, ADV_LEN);
    cleanup_adv(syslinux_adv);

    return 0;
}
