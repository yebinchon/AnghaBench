
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* mcode; } ;
struct TYPE_5__ {int g; TYPE_1__ cb; } ;
typedef TYPE_2__ CTState ;


 int CALLBACK_MCODE_SIZE ;
 int MEM_RELEASE ;
 int UNUSED (size_t) ;
 int VirtualFree (void*,int ,int ) ;
 int lj_mem_free (int ,void*,size_t) ;
 int munmap (void*,size_t) ;

void lj_ccallback_mcode_free(CTState *cts)
{
  size_t sz = (size_t)CALLBACK_MCODE_SIZE;
  void *p = cts->cb.mcode;
  if (p == ((void*)0)) return;






  lj_mem_free(cts->g, p, sz);

}
