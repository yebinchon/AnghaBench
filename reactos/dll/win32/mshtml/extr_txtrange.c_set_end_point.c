
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int off; int node; } ;
typedef TYPE_1__ rangepoint_t ;
typedef int nsresult ;
struct TYPE_6__ {int nsrange; } ;
typedef TYPE_2__ HTMLTxtRange ;


 int ERR (char*,int ) ;
 scalar_t__ NS_FAILED (int ) ;
 int nsIDOMRange_SetEnd (int ,int ,int ) ;

__attribute__((used)) static void set_end_point(HTMLTxtRange *This, const rangepoint_t *end)
{
    nsresult nsres = nsIDOMRange_SetEnd(This->nsrange, end->node, end->off);
    if(NS_FAILED(nsres))
        ERR("failed: %08x\n", nsres);
}
