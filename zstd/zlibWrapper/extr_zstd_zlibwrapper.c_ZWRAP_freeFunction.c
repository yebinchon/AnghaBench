
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef TYPE_1__* z_streamp ;
struct TYPE_2__ {int opaque; int (* zfree ) (int ,void*) ;} ;


 int stub1 (int ,void*) ;

__attribute__((used)) static void ZWRAP_freeFunction(void* opaque, void* address)
{
    z_streamp strm = (z_streamp) opaque;
    strm->zfree(strm->opaque, address);

}
