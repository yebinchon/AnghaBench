
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_10__ {int preparse_status; TYPE_4__* req; int parser; int state; } ;
typedef TYPE_2__ input_preparser_task_t ;
struct TYPE_11__ {scalar_t__ fetcher; } ;
typedef TYPE_3__ input_preparser_t ;
struct TYPE_12__ {int options; int userdata; int * item; TYPE_1__* cbs; } ;
typedef TYPE_4__ input_preparser_req_t ;
typedef int input_item_t ;
struct TYPE_9__ {int (* on_preparse_ended ) (int *,int,int ) ;} ;


 int ITEM_PREPARSE_DONE ;
 int ITEM_PREPARSE_FAILED ;
 int ITEM_PREPARSE_TIMEOUT ;
 int META_REQUEST_OPTION_FETCH_ANY ;
 int ReqHold (TYPE_4__*) ;
 int ReqRelease (TYPE_4__*) ;


 int atomic_load (int *) ;
 int free (TYPE_2__*) ;
 int input_fetcher_Push (scalar_t__,int *,int,int *,TYPE_2__*) ;
 int input_fetcher_callbacks ;
 int input_item_SetPreparsed (int *,int) ;
 int input_item_parser_id_Release (int ) ;
 int stub1 (int *,int,int ) ;

__attribute__((used)) static void PreparserCloseInput( void* preparser_, void* task_ )
{
    input_preparser_task_t* task = task_;
    input_preparser_req_t *req = task->req;

    input_preparser_t* preparser = preparser_;
    input_item_t* item = req->item;

    int status;
    switch( atomic_load( &task->state ) )
    {
        case 128:
            status = ITEM_PREPARSE_DONE;
            break;
        case 129:
            status = ITEM_PREPARSE_TIMEOUT;
            break;
        default:
            status = ITEM_PREPARSE_FAILED;
            break;
    }

    input_item_parser_id_Release( task->parser );

    if( preparser->fetcher && (req->options & META_REQUEST_OPTION_FETCH_ANY) )
    {
        task->preparse_status = status;
        ReqHold(task->req);
        if (!input_fetcher_Push(preparser->fetcher, item,
                                req->options & META_REQUEST_OPTION_FETCH_ANY,
                                &input_fetcher_callbacks, task))
        {
            return;
        }
        ReqRelease(task->req);
    }

    free(task);

    input_item_SetPreparsed( item, 1 );
    if (req->cbs && req->cbs->on_preparse_ended)
        req->cbs->on_preparse_ended(req->item, status, req->userdata);
}
