
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_5__ {scalar_t__ memid; } ;
struct TYPE_6__ {TYPE_1__ vardesc; } ;
typedef TYPE_2__ TLBVarDesc ;
typedef scalar_t__ MEMBERID ;



__attribute__((used)) static inline TLBVarDesc *TLB_get_vardesc_by_memberid(TLBVarDesc *vardescs,
        UINT n, MEMBERID memid)
{
    while(n){
        if(vardescs->vardesc.memid == memid)
            return vardescs;
        ++vardescs;
        --n;
    }
    return ((void*)0);
}
