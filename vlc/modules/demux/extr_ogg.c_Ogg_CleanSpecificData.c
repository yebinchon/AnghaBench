
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {scalar_t__ i_headers_flags; scalar_t__ p_comment; scalar_t__ p_info; } ;
struct TYPE_8__ {TYPE_3__ vorbis; } ;
struct TYPE_7__ {scalar_t__ i_codec; } ;
struct TYPE_10__ {TYPE_2__ special; TYPE_1__ fmt; } ;
typedef TYPE_4__ logical_stream_t ;


 int FREENULL (scalar_t__) ;
 scalar_t__ VLC_CODEC_VORBIS ;
 int VLC_UNUSED (TYPE_4__*) ;
 int vorbis_comment_clear (scalar_t__) ;
 int vorbis_info_clear (scalar_t__) ;

__attribute__((used)) static void Ogg_CleanSpecificData( logical_stream_t *p_stream )
{
    VLC_UNUSED( p_stream );

}
