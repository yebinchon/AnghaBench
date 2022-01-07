
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int input_thread_t ;
struct TYPE_4__ {TYPE_1__* master; } ;
struct TYPE_3__ {float f_fps; } ;


 int RequestSubRate (int *,int ) ;
 TYPE_2__* input_priv (int *) ;
 int var_InheritFloat (int *,char*) ;
 int var_SetFloat (int *,char*,float const) ;

__attribute__((used)) static void SetSubtitlesOptions( input_thread_t *p_input )
{

    const float f_fps = input_priv(p_input)->master->f_fps;
    if( f_fps > 1.f )
    {
        var_SetFloat( p_input, "sub-original-fps", f_fps );
        RequestSubRate( p_input, var_InheritFloat( p_input, "sub-fps" ) );
    }
}
