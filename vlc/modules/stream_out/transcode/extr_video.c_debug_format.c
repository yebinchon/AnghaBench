
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int sout_stream_t ;
struct TYPE_4__ {int orientation; int i_height; int i_width; int i_visible_height; int i_visible_width; int i_chroma; } ;
struct TYPE_5__ {TYPE_1__ video; int i_codec; } ;
typedef TYPE_2__ es_format_t ;


 int msg_Dbg (int *,char*,char const*,char const*,int ,int ,int ,int ,int ) ;

__attribute__((used)) static void debug_format( sout_stream_t *p_stream, const es_format_t *fmt )
{
    msg_Dbg( p_stream, "format now %4.4s/%4.4s %dx%d(%dx%d) ø%d",
             (const char *) &fmt->i_codec,
             (const char *) &fmt->video.i_chroma,
             fmt->video.i_visible_width, fmt->video.i_visible_height,
             fmt->video.i_width, fmt->video.i_height,
             fmt->video.orientation );
}
