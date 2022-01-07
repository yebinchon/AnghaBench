
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_4__ {int psz_name; } ;
typedef TYPE_1__ stream_t ;


 int MMSHOpen (TYPE_1__*) ;
 int MMSTUOpen (TYPE_1__*) ;
 int VLC_SUCCESS ;
 int strncmp (int ,char*,int) ;

__attribute__((used)) static int Open( vlc_object_t *p_this )
{
    stream_t *p_access = (stream_t*)p_this;


    if( !strncmp( p_access->psz_name, "mmsu", 4 ) )
        return MMSTUOpen ( p_access );
    else if( !strncmp( p_access->psz_name, "mmst", 4 ) )
        return MMSTUOpen ( p_access );
    else if( !strncmp( p_access->psz_name, "mmsh", 4 ) )
        return MMSHOpen ( p_access );

    if( MMSTUOpen ( p_access ) )
    {
        return MMSHOpen ( p_access );
    }
    return VLC_SUCCESS;
}
