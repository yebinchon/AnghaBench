
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int result; } ;
struct TYPE_10__ {scalar_t__ msg; TYPE_1__ data; int easy_handle; } ;
struct TYPE_9__ {int (* on_finished ) (TYPE_2__*,int ,int ) ;int curl; } ;
typedef TYPE_2__ CurlGlue ;
typedef TYPE_3__ CURLMsg ;


 scalar_t__ CURLMSG_DONE ;
 int assert (TYPE_2__*) ;
 TYPE_3__* curl_multi_info_read (int ,int*) ;
 int stub1 (TYPE_2__*,int ,int ) ;

__attribute__((used)) static void curl_glue_check_finished(CurlGlue *g) {
        CURLMsg *msg;
        int k = 0;

        assert(g);

        msg = curl_multi_info_read(g->curl, &k);
        if (!msg)
                return;

        if (msg->msg != CURLMSG_DONE)
                return;

        if (g->on_finished)
                g->on_finished(g, msg->easy_handle, msg->data.result);
}
