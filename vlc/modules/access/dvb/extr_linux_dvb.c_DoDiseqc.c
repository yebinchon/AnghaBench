
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_13__ {int* msg; } ;
struct TYPE_12__ {int member_0; int member_1; int member_2; int member_3; int member_4; int member_5; } ;
struct TYPE_11__ {int member_1; TYPE_2__ member_0; } ;
struct diseqc_cmd_t {int wait; TYPE_3__ cmd; int member_1; TYPE_1__ member_0; } ;
typedef scalar_t__ fe_sec_voltage_t ;
typedef TYPE_3__* fe_sec_tone_mode_t ;
struct TYPE_14__ {int i_frontend_handle; } ;
typedef TYPE_4__ dvb_sys_t ;


 TYPE_3__* DecodeTone (int *) ;
 scalar_t__ DecodeVoltage (int *) ;
 int FE_DISEQC_SEND_BURST ;
 int FE_DISEQC_SEND_MASTER_CMD ;
 int FE_ENABLE_HIGH_LNB_VOLTAGE ;
 int FE_SET_TONE ;
 int FE_SET_VOLTAGE ;
 TYPE_3__* SEC_MINI_A ;
 TYPE_3__* SEC_MINI_B ;
 TYPE_3__* SEC_TONE_OFF ;
 TYPE_3__* SEC_TONE_ON ;
 scalar_t__ SEC_VOLTAGE_13 ;
 int VLC_EGENERIC ;
 int VLC_TICK_FROM_MS (int) ;
 int errno ;
 scalar_t__ ioctl (int ,int ,...) ;
 int msg_Err (int *,char*,char*,...) ;
 int var_GetBool (int *,char*) ;
 int var_GetInteger (int *,char*) ;
 int var_SetInteger (int *,char*,int) ;
 int vlc_strerror_c (int ) ;
 int vlc_tick_sleep (int ) ;

__attribute__((used)) static int DoDiseqc( vlc_object_t *p_access, dvb_sys_t *p_sys )
{
    int i_val;
    bool b_val;
    int i_frequency, i_lnb_slof;
    fe_sec_voltage_t fe_voltage;
    fe_sec_tone_mode_t fe_tone;

    i_frequency = var_GetInteger( p_access, "dvb-frequency" );
    i_lnb_slof = var_GetInteger( p_access, "dvb-lnb-slof" );

    i_val = var_GetInteger( p_access, "dvb-tone" );
    if( i_val == -1 )
    {
        if( i_frequency >= i_lnb_slof )
            i_val = 1;
        else
            i_val = 0;
        var_SetInteger( p_access, "dvb-tone", i_val );
    }

    fe_voltage = DecodeVoltage( p_access );
    fe_tone = DecodeTone( p_access );


    if( ioctl( p_sys->i_frontend_handle, FE_SET_TONE, SEC_TONE_OFF ) < 0 )
    {
        msg_Err( p_access, "switching tone %s error: %s", "off",
                 vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }


    if( ioctl( p_sys->i_frontend_handle, FE_SET_VOLTAGE, fe_voltage ) < 0 )
    {
        msg_Err( p_access, "voltage error: %s", vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }

    b_val = var_GetBool( p_access, "dvb-high-voltage" );
    if( ioctl( p_sys->i_frontend_handle,
               FE_ENABLE_HIGH_LNB_VOLTAGE, b_val ) < 0 && b_val )
    {
        msg_Err( p_access, "high LNB voltage error: %s",
                 vlc_strerror_c(errno) );
    }


    vlc_tick_sleep(VLC_TICK_FROM_MS(15));

    i_val = var_GetInteger( p_access, "dvb-satno" );
    if( i_val > 0 && i_val < 5 )
    {





        struct diseqc_cmd_t cmd = { {{0xe0, 0x10, 0x38, 0xf0, 0x00, 0x00}, 4}, 0 };




        cmd.cmd.msg[3] = 0xf0
                          | (((i_val - 1) * 4) & 0xc)
                          | (fe_voltage == SEC_VOLTAGE_13 ? 0 : 2)
                          | (fe_tone == SEC_TONE_ON ? 1 : 0);

        if( ioctl( p_sys->i_frontend_handle, FE_DISEQC_SEND_MASTER_CMD,
                   &cmd.cmd ) )
        {
            msg_Err( p_access, "master command sending error: %s",
                     vlc_strerror_c(errno) );
            return VLC_EGENERIC;
        }

        vlc_tick_sleep(VLC_TICK_FROM_MS(15 + cmd.wait));


        if( ioctl( p_sys->i_frontend_handle, FE_DISEQC_SEND_BURST,
                  ((i_val - 1) % 2) ? SEC_MINI_B : SEC_MINI_A ) )
        {
            msg_Err( p_access, "burst sending error: %s",
                     vlc_strerror_c(errno) );
            return VLC_EGENERIC;
        }

        vlc_tick_sleep(VLC_TICK_FROM_MS(15));
    }

    if( ioctl( p_sys->i_frontend_handle, FE_SET_TONE, fe_tone ) )
    {
        msg_Err( p_access, "switching tone %s error: %s",
                 (fe_tone == SEC_TONE_ON) ? "on" : "off",
                 vlc_strerror_c(errno) );
        return VLC_EGENERIC;
    }

    vlc_tick_sleep(VLC_TICK_FROM_MS(50));
    return 0;
}
