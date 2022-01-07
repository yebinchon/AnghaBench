
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int wind_type; int f_kaiser_alpha; } ;
typedef TYPE_1__ window_param ;
typedef int vlc_object_t ;


 int NB_WINDOWS ;
 int NONE ;
 int free (char*) ;
 int msg_Warn (int *,char*) ;
 int strcasecmp (char*,int ) ;
 int var_InheritFloat (int *,char*) ;
 char* var_InheritString (int *,char*) ;
 int * window_list ;

void window_get_param( vlc_object_t * p_aout, window_param * p_param )
{

    p_param->f_kaiser_alpha = var_InheritFloat( p_aout, "effect-kaiser-param" );


    char * psz_preset = var_InheritString( p_aout, "effect-fft-window" );
    if( !psz_preset )
    {
        goto no_preset;
    }

    for( int i = 0; i < NB_WINDOWS; i++ )
    {
        if( !strcasecmp( psz_preset, window_list[i] ) )
        {
            free( psz_preset );
            p_param->wind_type = i;
            return;
        }
    }
    free( psz_preset );

no_preset:
    msg_Warn( p_aout, "No matching window preset found; using rectangular "
                      "window (i.e. no window)" );
    p_param->wind_type = NONE;
}
