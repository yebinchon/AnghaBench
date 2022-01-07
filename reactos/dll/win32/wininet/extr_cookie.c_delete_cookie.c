
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; struct TYPE_4__* name; int entry; } ;
typedef TYPE_1__ cookie_t ;


 int heap_free (TYPE_1__*) ;
 int list_remove (int *) ;

__attribute__((used)) static void delete_cookie(cookie_t *cookie)
{
    list_remove(&cookie->entry);

    heap_free(cookie->name);
    heap_free(cookie->data);
    heap_free(cookie);
}
