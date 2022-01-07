
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int cmsContext ;
typedef int cmsBool ;
struct TYPE_2__ {int nlocks; } ;
typedef TYPE_1__ MyMtx ;


 int TRUE ;

__attribute__((used)) static
cmsBool MyMtxLock(cmsContext id, void* mtx)
{
    MyMtx* mtx_ = (MyMtx*) mtx;
    mtx_->nlocks++;

    return TRUE;
}
