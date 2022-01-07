
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int curl; } ;
typedef TYPE_1__ CurlGlue ;
typedef TYPE_1__ CURL ;


 scalar_t__ CURLM_OK ;
 int EIO ;
 int assert (TYPE_1__*) ;
 scalar_t__ curl_multi_add_handle (int ,TYPE_1__*) ;

int curl_glue_add(CurlGlue *g, CURL *c) {
        assert(g);
        assert(c);

        if (curl_multi_add_handle(g->curl, c) != CURLM_OK)
                return -EIO;

        return 0;
}
