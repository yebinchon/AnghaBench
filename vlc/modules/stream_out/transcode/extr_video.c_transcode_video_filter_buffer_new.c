
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int picture_t ;
struct TYPE_7__ {int i_chroma; } ;
struct TYPE_5__ {TYPE_4__ video; int i_codec; } ;
struct TYPE_6__ {TYPE_1__ fmt_out; } ;
typedef TYPE_2__ filter_t ;


 int * picture_NewFromFormat (TYPE_4__*) ;

__attribute__((used)) static picture_t *transcode_video_filter_buffer_new( filter_t *p_filter )
{
    p_filter->fmt_out.video.i_chroma = p_filter->fmt_out.i_codec;
    return picture_NewFromFormat( &p_filter->fmt_out.video );
}
