
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {TYPE_1__* package; struct TYPE_6__* target; struct TYPE_6__* source; struct TYPE_6__* action; scalar_t__ handle; int entry; int refs; } ;
typedef TYPE_2__ msi_custom_action_info ;
struct TYPE_5__ {int hdr; } ;


 int CloseHandle (scalar_t__) ;
 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int list_remove (int *) ;
 int msi_custom_action_cs ;
 int msi_free (TYPE_2__*) ;
 int msiobj_release (int *) ;

__attribute__((used)) static void release_custom_action_data( msi_custom_action_info *info )
{
    EnterCriticalSection( &msi_custom_action_cs );

    if (!--info->refs)
    {
        list_remove( &info->entry );
        if (info->handle)
            CloseHandle( info->handle );
        msi_free( info->action );
        msi_free( info->source );
        msi_free( info->target );
        msiobj_release( &info->package->hdr );
        msi_free( info );
    }

    LeaveCriticalSection( &msi_custom_action_cs );
}
