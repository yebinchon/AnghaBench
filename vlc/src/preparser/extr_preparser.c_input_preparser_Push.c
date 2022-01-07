
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct input_preparser_req_t {scalar_t__ cbs; } ;
struct TYPE_11__ {int worker; int deactivated; } ;
typedef TYPE_1__ input_preparser_t ;
struct TYPE_12__ {int (* on_preparse_ended ) (TYPE_3__*,int ,void*) ;} ;
typedef TYPE_2__ input_preparser_callbacks_t ;
struct TYPE_13__ {int i_type; int b_net; int b_preparse_interact; int lock; } ;
typedef TYPE_3__ input_item_t ;
typedef int input_item_meta_request_option_t ;
typedef enum input_item_type_e { ____Placeholder_input_item_type_e } input_item_type_e ;


 int ITEM_PREPARSE_FAILED ;
 int ITEM_PREPARSE_SKIPPED ;




 int META_REQUEST_OPTION_DO_INTERACT ;
 int META_REQUEST_OPTION_SCOPE_NETWORK ;
 struct input_preparser_req_t* ReqCreate (TYPE_3__*,int,TYPE_2__ const*,void*) ;
 int ReqRelease (struct input_preparser_req_t*) ;
 scalar_t__ atomic_load (int *) ;
 scalar_t__ background_worker_Push (int ,struct input_preparser_req_t*,void*,int) ;
 int stub1 (TYPE_3__*,int ,void*) ;
 int stub2 (TYPE_3__*,int ,void*) ;
 int vlc_mutex_lock (int *) ;
 int vlc_mutex_unlock (int *) ;

void input_preparser_Push( input_preparser_t *preparser,
    input_item_t *item, input_item_meta_request_option_t i_options,
    const input_preparser_callbacks_t *cbs, void *cbs_userdata,
    int timeout, void *id )
{
    if( atomic_load( &preparser->deactivated ) )
        return;

    vlc_mutex_lock( &item->lock );
    enum input_item_type_e i_type = item->i_type;
    int b_net = item->b_net;
    if( i_options & META_REQUEST_OPTION_DO_INTERACT )
        item->b_preparse_interact = 1;
    vlc_mutex_unlock( &item->lock );

    switch( i_type )
    {
        case 129:
        case 130:
        case 131:
        case 128:
            if( !b_net || i_options & META_REQUEST_OPTION_SCOPE_NETWORK )
                break;

        default:
            if (cbs && cbs->on_preparse_ended)
                cbs->on_preparse_ended(item, ITEM_PREPARSE_SKIPPED, cbs_userdata);
            return;
    }

    struct input_preparser_req_t *req = ReqCreate(item, i_options,
                                                  cbs, cbs_userdata);

    if (background_worker_Push(preparser->worker, req, id, timeout))
        if (req->cbs && cbs->on_preparse_ended)
            cbs->on_preparse_ended(item, ITEM_PREPARSE_FAILED, cbs_userdata);

    ReqRelease(req);
}
