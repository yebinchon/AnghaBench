
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ memid; } ;
struct TYPE_6__ {TYPE_1__ funcdesc; } ;
typedef TYPE_2__ TLBFuncDesc ;
typedef scalar_t__ MEMBERID ;



__attribute__((used)) static inline TLBFuncDesc *TLB_get_funcdesc_by_memberid(TLBFuncDesc *funcdescs,
        UINT n, MEMBERID memid)
{
    while(n){
        if(funcdescs->funcdesc.memid == memid)
            return funcdescs;
        ++funcdescs;
        --n;
    }
    return ((void*)0);
}
