
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsContext ;
struct TYPE_2__ {scalar_t__ nlocks; } ;
typedef TYPE_1__ MyMtx ;


 int Die (char*) ;
 int _cmsFree (int ,void*) ;

__attribute__((used)) static
void MyMtxDestroy(cmsContext id, void* mtx)
{
    MyMtx* mtx_ = (MyMtx*) mtx;

    if (mtx_->nlocks != 0)
        Die("Locks != 0 when setting free a mutex");

    _cmsFree(id, mtx);

}
