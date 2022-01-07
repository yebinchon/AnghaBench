
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int psz_region; } ;
typedef TYPE_1__ webvtt_cue_settings_t ;


 int free (int ) ;

__attribute__((used)) static void webvtt_cue_settings_Clean( webvtt_cue_settings_t *p_settings )
{
    free( p_settings->psz_region );
}
