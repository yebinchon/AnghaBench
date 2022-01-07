
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
inline int BatTranslate( int batu, int batl, int virt ) {
    int mask;
    if(batu & 0x3fc)
    {
 mask = ~(0x1ffff | ((batu & 0x3fc)>>2)<<17);
 if((batu & 2) && ((batu & mask) == (virt & mask)))
     return (batl & mask) | (virt & ~mask);
    } else {
 mask = ~(0x1ffff | (batl << 17));
 if(!(batl & 0x40) || ((batu & mask) != (virt & mask)))
     return (batl & mask) | (virt & ~mask);
    }
    return -1;
}
