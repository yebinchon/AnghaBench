
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

object_header_t *WININET_AddRef( object_header_t *info )
{
    ULONG refs = InterlockedIncrement(&info->refs);
    TRACE("%p -> refcount = %d\n", info, refs );
    return info;
}
