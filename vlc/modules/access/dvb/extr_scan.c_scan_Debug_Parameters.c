
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vlc_object_t ;
struct TYPE_6__ {int i_max; int i_min; } ;
struct TYPE_5__ {int i_max; int i_min; } ;
struct TYPE_7__ {int type; char* psz_scanlist_file; scalar_t__ b_free_only; scalar_t__ b_use_nit; scalar_t__ b_modulation_set; scalar_t__ b_exhaustive; TYPE_2__ bandwidth; TYPE_1__ frequency; } ;
typedef TYPE_3__ scan_parameter_t ;


 int SCAN_DVB_C ;
 int SCAN_DVB_S ;
 int msg_Dbg (int *,char*,...) ;

__attribute__((used)) static void scan_Debug_Parameters( vlc_object_t *p_obj, const scan_parameter_t *p_parameter )
{
    const char rgc_types[3] = {'T', 'S', 'C' };
    if( !p_parameter->type )
        return;

    msg_Dbg( p_obj, "DVB-%c scanning:", rgc_types[ p_parameter->type - 1 ] );

    if( p_parameter->type != SCAN_DVB_S )
    {
        msg_Dbg( p_obj, " - frequency [%d, %d]",
                 p_parameter->frequency.i_min, p_parameter->frequency.i_max );
        msg_Dbg( p_obj, " - bandwidth [%d,%d]",
                 p_parameter->bandwidth.i_min, p_parameter->bandwidth.i_max );
        msg_Dbg( p_obj, " - exhaustive mode %s", p_parameter->b_exhaustive ? "on" : "off" );
    }

    if( p_parameter->type == SCAN_DVB_C )
        msg_Dbg( p_obj, " - scannin modulations %s", p_parameter->b_modulation_set ? "off" : "on" );

    if( p_parameter->type == SCAN_DVB_S && p_parameter->psz_scanlist_file )
        msg_Dbg( p_obj, " - satellite [%s]", p_parameter->psz_scanlist_file );

    msg_Dbg( p_obj, " - use NIT %s", p_parameter->b_use_nit ? "on" : "off" );
    msg_Dbg( p_obj, " - FTA only %s", p_parameter->b_free_only ? "on" : "off" );
}
