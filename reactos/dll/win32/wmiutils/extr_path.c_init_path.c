
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct path {scalar_t__ flags; scalar_t__ num_keys; int * keys; scalar_t__ len_class; int * class; scalar_t__ num_namespaces; int * len_namespaces; int * namespaces; scalar_t__ len_server; int * server; scalar_t__ len_text; int * text; } ;



__attribute__((used)) static void init_path( struct path *path )
{
    path->text = ((void*)0);
    path->len_text = 0;
    path->server = ((void*)0);
    path->len_server = 0;
    path->namespaces = ((void*)0);
    path->len_namespaces = ((void*)0);
    path->num_namespaces = 0;
    path->class = ((void*)0);
    path->len_class = 0;
    path->keys = ((void*)0);
    path->num_keys = 0;
    path->flags = 0;
}
