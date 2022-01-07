
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* canon_uri; int raw_uri; } ;
typedef TYPE_1__ Uri ;


 int SysFreeString (int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static inline void destroy_uri_obj(Uri *This)
{
    SysFreeString(This->raw_uri);
    heap_free(This->canon_uri);
    heap_free(This);
}
