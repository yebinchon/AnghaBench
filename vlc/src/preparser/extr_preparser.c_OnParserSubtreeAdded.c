
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_3__* req; } ;
typedef TYPE_2__ input_preparser_task_t ;
struct TYPE_6__ {int userdata; int item; TYPE_1__* cbs; } ;
typedef TYPE_3__ input_preparser_req_t ;
typedef int input_item_t ;
typedef int input_item_node_t ;
struct TYPE_4__ {int (* on_subtree_added ) (int ,int *,int ) ;} ;


 int VLC_UNUSED (int *) ;
 int stub1 (int ,int *,int ) ;

__attribute__((used)) static void OnParserSubtreeAdded(input_item_t *item, input_item_node_t *subtree,
                                 void *task_)
{
    VLC_UNUSED(item);
    input_preparser_task_t* task = task_;
    input_preparser_req_t *req = task->req;

    if (req->cbs && req->cbs->on_subtree_added)
        req->cbs->on_subtree_added(req->item, subtree, req->userdata);
}
