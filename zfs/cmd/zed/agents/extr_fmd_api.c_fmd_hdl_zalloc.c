
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmd_hdl_t ;


 void* umem_zalloc (size_t,int) ;

void *
fmd_hdl_zalloc(fmd_hdl_t *hdl, size_t size, int flags)
{
 return (umem_zalloc(size, flags));
}
