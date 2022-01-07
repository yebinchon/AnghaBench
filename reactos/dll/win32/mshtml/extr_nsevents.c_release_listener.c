
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int ref; } ;
typedef TYPE_1__ nsDocumentEventListener ;
typedef int LONG ;


 int InterlockedDecrement (int *) ;
 int TRACE (char*,TYPE_1__*,int ) ;
 int heap_free (TYPE_1__*) ;

__attribute__((used)) static LONG release_listener(nsDocumentEventListener *This)
{
    LONG ref = InterlockedDecrement(&This->ref);

    TRACE("(%p) ref=%d\n", This, ref);

    if(!ref)
        heap_free(This);

    return ref;
}
