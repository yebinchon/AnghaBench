
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ curl; } ;
typedef TYPE_1__ CurlGlue ;
typedef int CURL ;


 int assert (TYPE_1__*) ;
 int curl_easy_cleanup (int *) ;
 int curl_multi_remove_handle (scalar_t__,int *) ;

void curl_glue_remove_and_free(CurlGlue *g, CURL *c) {
        assert(g);

        if (!c)
                return;

        if (g->curl)
                curl_multi_remove_handle(g->curl, c);

        curl_easy_cleanup(c);
}
