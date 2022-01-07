
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int node; } ;
typedef TYPE_1__ rangepoint_t ;


 int nsIDOMNode_Release (int ) ;

__attribute__((used)) static inline void free_rangepoint(rangepoint_t *rangepoint)
{
    nsIDOMNode_Release(rangepoint->node);
}
