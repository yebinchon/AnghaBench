
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int vlc_fourcc_t ;
typedef enum at_dev { ____Placeholder_at_dev } at_dev ;
typedef int enc_fourccs ;
struct TYPE_9__ {TYPE_2__* sys; } ;
typedef TYPE_1__ audio_output_t ;
struct TYPE_10__ {int at_dev; long long i_encoding_flags; } ;
typedef TYPE_2__ aout_sys_t ;
struct TYPE_11__ {char* id; int at_dev; } ;


 int AOUT_RESTART_OUTPUT ;
 int AT_DEV_DEFAULT ;
 int AT_DEV_ENCODED ;
 scalar_t__ AudioTrack_HasEncoding (TYPE_1__*,int const) ;





 int VLC_SUCCESS ;
 int aout_DeviceReport (TYPE_1__*,char const*) ;
 int aout_RestartRequest (TYPE_1__*,int ) ;
 TYPE_4__* at_devs ;
 long long atoll (char const*) ;
 int msg_Dbg (TYPE_1__*,char*,char const*) ;
 size_t const strlen (char*) ;
 scalar_t__ strncmp (char const*,char*,size_t const) ;

__attribute__((used)) static int DeviceSelect(audio_output_t *p_aout, const char *p_id)
{
    aout_sys_t *p_sys = p_aout->sys;
    enum at_dev at_dev = AT_DEV_DEFAULT;

    if( p_id )
    {
        for( unsigned int i = 0; at_devs[i].id; ++i )
        {
            if( strncmp( p_id, at_devs[i].id, strlen( at_devs[i].id ) ) == 0 )
            {
                at_dev = at_devs[i].at_dev;
                break;
            }
        }
    }

    long long i_encoding_flags = 0;
    if( at_dev == AT_DEV_ENCODED )
    {
        const size_t i_prefix_size = strlen( "encoded:" );
        if( strncmp( p_id, "encoded:", i_prefix_size ) == 0 )
            i_encoding_flags = atoll( p_id + i_prefix_size );
    }

    if( at_dev != p_sys->at_dev || i_encoding_flags != p_sys->i_encoding_flags )
    {
        p_sys->at_dev = at_dev;
        p_sys->i_encoding_flags = i_encoding_flags;
        aout_RestartRequest( p_aout, AOUT_RESTART_OUTPUT );
        msg_Dbg( p_aout, "selected device: %s", p_id );

        if( at_dev == AT_DEV_ENCODED )
        {
            static const vlc_fourcc_t enc_fourccs[] = {
                131, 130, 132, 129,
                128,
            };
            for( size_t i = 0;
                 i < sizeof( enc_fourccs ) / sizeof( enc_fourccs[0] ); ++i )
            {
                if( AudioTrack_HasEncoding( p_aout, enc_fourccs[i] ) )
                    msg_Dbg( p_aout, "device has %4.4s passthrough support",
                             (const char *)&enc_fourccs[i] );
            }
        }
    }
    aout_DeviceReport( p_aout, p_id );
    return VLC_SUCCESS;
}
