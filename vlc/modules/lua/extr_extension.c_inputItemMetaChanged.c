
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ type; } ;
typedef TYPE_1__ vlc_event_t ;
typedef int extension_t ;


 int CMD_UPDATE_META ;
 int PushCommandUnique (int *,int ) ;
 int assert (int ) ;
 scalar_t__ vlc_InputItemMetaChanged ;

__attribute__((used)) static void inputItemMetaChanged( const vlc_event_t *p_event,
                                  void *data )
{
    assert( p_event && p_event->type == vlc_InputItemMetaChanged );

    extension_t *p_ext = ( extension_t* ) data;
    assert( p_ext != ((void*)0) );

    PushCommandUnique( p_ext, CMD_UPDATE_META );
}
