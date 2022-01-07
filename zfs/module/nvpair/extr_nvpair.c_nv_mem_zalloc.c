
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {TYPE_3__* nvp_nva; } ;
typedef TYPE_2__ nvpriv_t ;
struct TYPE_8__ {TYPE_1__* nva_ops; } ;
typedef TYPE_3__ nv_alloc_t ;
struct TYPE_6__ {void* (* nv_ao_alloc ) (TYPE_3__*,size_t) ;} ;


 int bzero (void*,size_t) ;
 void* stub1 (TYPE_3__*,size_t) ;

__attribute__((used)) static void *
nv_mem_zalloc(nvpriv_t *nvp, size_t size)
{
 nv_alloc_t *nva = nvp->nvp_nva;
 void *buf;

 if ((buf = nva->nva_ops->nv_ao_alloc(nva, size)) != ((void*)0))
  bzero(buf, size);

 return (buf);
}
