
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rc; void* userdata; int const* cbs; int options; int * item; } ;
typedef TYPE_1__ input_preparser_req_t ;
typedef int input_preparser_callbacks_t ;
typedef int input_item_t ;
typedef int input_item_meta_request_option_t ;


 int input_item_Hold (int *) ;
 TYPE_1__* malloc (int) ;
 scalar_t__ unlikely (int) ;
 int vlc_atomic_rc_init (int *) ;

__attribute__((used)) static input_preparser_req_t *ReqCreate(input_item_t *item,
                                        input_item_meta_request_option_t options,
                                        const input_preparser_callbacks_t *cbs,
                                        void *userdata)
{
    input_preparser_req_t *req = malloc(sizeof(*req));
    if (unlikely(!req))
        return ((void*)0);

    req->item = item;
    req->options = options;
    req->cbs = cbs;
    req->userdata = userdata;
    vlc_atomic_rc_init(&req->rc);

    input_item_Hold(item);

    return req;
}
