
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int item; int rc; } ;
typedef TYPE_1__ input_preparser_req_t ;


 int free (TYPE_1__*) ;
 int input_item_Release (int ) ;
 scalar_t__ vlc_atomic_rc_dec (int *) ;

__attribute__((used)) static void ReqRelease(input_preparser_req_t *req)
{
    if (vlc_atomic_rc_dec(&req->rc))
    {
        input_item_Release(req->item);
        free(req);
    }
}
