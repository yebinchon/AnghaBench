
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_3__ {scalar_t__ p_sys; } ;
typedef TYPE_1__ dvbpsi_t ;
typedef int dvbpsi_msg_level_t ;






 int msg_Dbg (int *,char*,char const*) ;
 int msg_Err (int *,char*,char const*) ;
 int msg_Warn (int *,char*,char const*) ;
 int strncmp (char const*,char*,int) ;

__attribute__((used)) static inline void dvbpsi_messages(dvbpsi_t *p_dvbpsi, const dvbpsi_msg_level_t level, const char* msg)
{
    vlc_object_t *obj = (vlc_object_t *)p_dvbpsi->p_sys;


    switch(level)
    {
        case 130:
        {

            if( strncmp( msg, "libdvbpsi (PMT decoder): ", 25 ) ||
                ( strncmp( &msg[25], "invalid section", 15 ) &&
                  strncmp( &msg[25], "'program_number' don't match", 28 ) ) )

            msg_Err( obj, "%s", msg ); break;
        }
        case 128: msg_Warn( obj, "%s", msg ); break;
        case 129:
        case 131:



            break;
    }
}
