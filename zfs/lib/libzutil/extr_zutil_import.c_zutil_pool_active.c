
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_5__ {int lpc_lib_handle; TYPE_1__* lpc_ops; } ;
typedef TYPE_2__ libpc_handle_t ;
typedef int boolean_t ;
struct TYPE_4__ {int (* pco_pool_active ) (int ,char const*,int ,int *) ;} ;


 int ASSERT (int ) ;
 int stub1 (int ,char const*,int ,int *) ;

__attribute__((used)) static int
zutil_pool_active(libpc_handle_t *hdl, const char *name, uint64_t guid,
    boolean_t *isactive)
{
 ASSERT(hdl->lpc_ops->pco_pool_active != ((void*)0));

 int error = hdl->lpc_ops->pco_pool_active(hdl->lpc_lib_handle, name,
     guid, isactive);

 return (error);
}
