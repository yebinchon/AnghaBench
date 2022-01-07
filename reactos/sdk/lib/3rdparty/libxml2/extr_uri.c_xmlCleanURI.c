
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_3__ {int * query_raw; int * query; int * authority; int * opaque; int * fragment; int * path; int * user; int * server; int * scheme; } ;


 int xmlFree (int *) ;

__attribute__((used)) static void
xmlCleanURI(xmlURIPtr uri) {
    if (uri == ((void*)0)) return;

    if (uri->scheme != ((void*)0)) xmlFree(uri->scheme);
    uri->scheme = ((void*)0);
    if (uri->server != ((void*)0)) xmlFree(uri->server);
    uri->server = ((void*)0);
    if (uri->user != ((void*)0)) xmlFree(uri->user);
    uri->user = ((void*)0);
    if (uri->path != ((void*)0)) xmlFree(uri->path);
    uri->path = ((void*)0);
    if (uri->fragment != ((void*)0)) xmlFree(uri->fragment);
    uri->fragment = ((void*)0);
    if (uri->opaque != ((void*)0)) xmlFree(uri->opaque);
    uri->opaque = ((void*)0);
    if (uri->authority != ((void*)0)) xmlFree(uri->authority);
    uri->authority = ((void*)0);
    if (uri->query != ((void*)0)) xmlFree(uri->query);
    uri->query = ((void*)0);
    if (uri->query_raw != ((void*)0)) xmlFree(uri->query_raw);
    uri->query_raw = ((void*)0);
}
