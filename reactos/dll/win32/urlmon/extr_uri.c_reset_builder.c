
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ modified_props; scalar_t__ port; int has_port; scalar_t__ username_len; int * username; scalar_t__ scheme_len; int * scheme; scalar_t__ query_len; int * query; scalar_t__ path_len; int * path; scalar_t__ password_len; int * password; scalar_t__ host_len; int * host; scalar_t__ fragment_len; int * fragment; TYPE_1__* uri; } ;
typedef TYPE_2__ UriBuilder ;
struct TYPE_4__ {int IUri_iface; } ;


 int FALSE ;
 int IUri_Release (int *) ;
 int heap_free (int *) ;

__attribute__((used)) static void reset_builder(UriBuilder *builder) {
    if(builder->uri)
        IUri_Release(&builder->uri->IUri_iface);
    builder->uri = ((void*)0);

    heap_free(builder->fragment);
    builder->fragment = ((void*)0);
    builder->fragment_len = 0;

    heap_free(builder->host);
    builder->host = ((void*)0);
    builder->host_len = 0;

    heap_free(builder->password);
    builder->password = ((void*)0);
    builder->password_len = 0;

    heap_free(builder->path);
    builder->path = ((void*)0);
    builder->path_len = 0;

    heap_free(builder->query);
    builder->query = ((void*)0);
    builder->query_len = 0;

    heap_free(builder->scheme);
    builder->scheme = ((void*)0);
    builder->scheme_len = 0;

    heap_free(builder->username);
    builder->username = ((void*)0);
    builder->username_len = 0;

    builder->has_port = FALSE;
    builder->port = 0;
    builder->modified_props = 0;
}
