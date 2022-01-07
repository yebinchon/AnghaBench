
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry; } ;
typedef TYPE_1__ ifref_t ;
typedef int ifref_list_t ;


 int list_add_tail (int *,int *) ;
 int list_init (int *) ;
 int * xmalloc (int) ;

__attribute__((used)) static ifref_list_t *append_ifref(ifref_list_t *list, ifref_t *iface)
{
    if (!iface) return list;
    if (!list)
    {
        list = xmalloc( sizeof(*list) );
        list_init( list );
    }
    list_add_tail( list, &iface->entry );
    return list;
}
