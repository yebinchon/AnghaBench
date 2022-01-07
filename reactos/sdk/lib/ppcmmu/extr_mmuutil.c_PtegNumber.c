
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vaddr_t ;


 int GetSR (int) ;
 int HTABSIZ ;
 int PPC_VSID_MASK ;

int PtegNumber(vaddr_t virt, int hfun)
{
    int sr = GetSR( (virt >> 28) & 0xf );
    int vsid = sr & PPC_VSID_MASK;
    return ((((vsid & 0x7ffff) ^ ((virt >> 12) & 0xffff)) ^ (hfun ? -1 : 0)) & ((HTABSIZ - 1) >> 3) & 0x3ff);
}
