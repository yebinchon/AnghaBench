
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int refs; } ;
typedef TYPE_1__ object_header_t ;
typedef int ULONG ;


 int InterlockedIncrement (int *) ;
 int TRACE (char*,TYPE_1__*,int ) ;

object_header_t *addref_object( object_header_t *hdr )
{
    ULONG refs = InterlockedIncrement( &hdr->refs );
    TRACE("%p -> refcount = %d\n", hdr, refs);
    return hdr;
}
