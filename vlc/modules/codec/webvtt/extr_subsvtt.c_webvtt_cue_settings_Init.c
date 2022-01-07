
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {double value; int b_auto; } ;
struct TYPE_5__ {int b_auto; double value; } ;
struct TYPE_7__ {int b_snap_to_lines; int position; int align; TYPE_2__ size; void* positionalign; int linealign; TYPE_1__ line; void* vertical; int * psz_region; } ;
typedef TYPE_3__ webvtt_cue_settings_t ;


 void* WEBVTT_ALIGN_AUTO ;
 int WEBVTT_ALIGN_CENTER ;
 int WEBVTT_ALIGN_START ;

__attribute__((used)) static void webvtt_cue_settings_Init( webvtt_cue_settings_t *p_settings )
{
    p_settings->psz_region = ((void*)0);
    p_settings->vertical = WEBVTT_ALIGN_AUTO;
    p_settings->b_snap_to_lines = 1;
    p_settings->line.b_auto = 1;
    p_settings->line.value = 1.0;
    p_settings->linealign = WEBVTT_ALIGN_START;
    p_settings->position = -1;
    p_settings->positionalign = WEBVTT_ALIGN_AUTO;
    p_settings->size.value = 1.0;
    p_settings->size.b_auto = 1;
    p_settings->align = WEBVTT_ALIGN_CENTER;
}
