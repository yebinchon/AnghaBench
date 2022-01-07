
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fmd_hdl_t ;


 int umem_free (void*,size_t) ;

void
fmd_hdl_free(fmd_hdl_t *hdl, void *data, size_t size)
{
 umem_free(data, size);
}
