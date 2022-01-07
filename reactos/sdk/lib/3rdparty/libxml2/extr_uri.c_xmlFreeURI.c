
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* xmlURIPtr ;
struct TYPE_4__ {struct TYPE_4__* query_raw; struct TYPE_4__* query; struct TYPE_4__* authority; struct TYPE_4__* opaque; struct TYPE_4__* fragment; struct TYPE_4__* path; struct TYPE_4__* user; struct TYPE_4__* server; struct TYPE_4__* scheme; } ;


 int xmlFree (TYPE_1__*) ;

void
xmlFreeURI(xmlURIPtr uri) {
    if (uri == ((void*)0)) return;

    if (uri->scheme != ((void*)0)) xmlFree(uri->scheme);
    if (uri->server != ((void*)0)) xmlFree(uri->server);
    if (uri->user != ((void*)0)) xmlFree(uri->user);
    if (uri->path != ((void*)0)) xmlFree(uri->path);
    if (uri->fragment != ((void*)0)) xmlFree(uri->fragment);
    if (uri->opaque != ((void*)0)) xmlFree(uri->opaque);
    if (uri->authority != ((void*)0)) xmlFree(uri->authority);
    if (uri->query != ((void*)0)) xmlFree(uri->query);
    if (uri->query_raw != ((void*)0)) xmlFree(uri->query_raw);
    xmlFree(uri);
}
