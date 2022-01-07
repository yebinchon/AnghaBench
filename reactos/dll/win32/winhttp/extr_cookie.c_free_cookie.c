
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* path; struct TYPE_4__* value; struct TYPE_4__* name; } ;
typedef TYPE_1__ cookie_t ;


 int heap_free (TYPE_1__*) ;

__attribute__((used)) static void free_cookie( cookie_t *cookie )
{
    heap_free( cookie->name );
    heap_free( cookie->value );
    heap_free( cookie->path );
    heap_free( cookie );
}
