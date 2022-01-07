
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int preparse_status; TYPE_3__* req; } ;
typedef TYPE_2__ input_preparser_task_t ;
struct TYPE_8__ {int userdata; int item; TYPE_1__* cbs; } ;
typedef TYPE_3__ input_preparser_req_t ;
typedef int input_item_t ;
struct TYPE_6__ {int (* on_preparse_ended ) (int ,int ,int ) ;} ;


 int ReqRelease (TYPE_3__*) ;
 int VLC_UNUSED (int) ;
 int free (TYPE_2__*) ;
 int input_item_SetPreparsed (int ,int) ;
 int stub1 (int ,int ,int ) ;

__attribute__((used)) static void on_art_fetch_ended(input_item_t *item, bool fetched, void *userdata)
{
    VLC_UNUSED(item);
    VLC_UNUSED(fetched);
    input_preparser_task_t *task = userdata;
    input_preparser_req_t *req = task->req;

    input_item_SetPreparsed(req->item, 1);

    if (req->cbs && req->cbs->on_preparse_ended)
        req->cbs->on_preparse_ended(req->item, task->preparse_status, req->userdata);

    ReqRelease(req);
    free(task);
}
