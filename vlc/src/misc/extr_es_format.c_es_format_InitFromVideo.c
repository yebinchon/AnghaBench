
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int i_chroma; } ;
typedef TYPE_1__ video_format_t ;
struct TYPE_8__ {int video; } ;
typedef TYPE_2__ es_format_t ;


 int VIDEO_ES ;
 int es_format_Init (TYPE_2__*,int ,int ) ;
 int video_format_Copy (int *,TYPE_1__ const*) ;

void es_format_InitFromVideo( es_format_t *p_es, const video_format_t *p_fmt )
{
    es_format_Init( p_es, VIDEO_ES, p_fmt->i_chroma );
    video_format_Copy( &p_es->video, p_fmt );
}
