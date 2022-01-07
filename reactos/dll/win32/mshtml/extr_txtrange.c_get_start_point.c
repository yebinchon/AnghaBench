
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int rangepoint_t ;
typedef int nsIDOMNode ;
struct TYPE_3__ {int nsrange; } ;
typedef int LONG ;
typedef TYPE_1__ HTMLTxtRange ;


 int init_rangepoint (int *,int *,int ) ;
 int nsIDOMNode_Release (int *) ;
 int nsIDOMRange_GetStartContainer (int ,int **) ;
 int nsIDOMRange_GetStartOffset (int ,int *) ;

__attribute__((used)) static void get_start_point(HTMLTxtRange *This, rangepoint_t *ret)
{
    nsIDOMNode *node;
    LONG off;

    nsIDOMRange_GetStartContainer(This->nsrange, &node);
    nsIDOMRange_GetStartOffset(This->nsrange, &off);

    init_rangepoint(ret, node, off);

    nsIDOMNode_Release(node);
}
