
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int webvtt_text_parser_t ;
typedef int webvtt_cue_t ;
struct callback_ctx {int b_ordered; int styles; int regions; TYPE_4__* p_demux; } ;
struct TYPE_11__ {int s; TYPE_5__* p_sys; } ;
typedef TYPE_4__ demux_t ;
struct TYPE_10__ {int i_data; int p_data; } ;
struct TYPE_9__ {int i_data; int p_data; } ;
struct TYPE_8__ {int i_count; int p_array; } ;
struct TYPE_12__ {TYPE_3__ styles_headers; TYPE_2__ regions_headers; TYPE_1__ cues; } ;
typedef TYPE_5__ demux_sys_t ;


 int BuildIndex (TYPE_4__*) ;
 int ParserCueDoneHandler ;
 int ParserGetCueHandler ;
 int ParserHeaderHandler ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int cue_Compare ;
 int memstream_Grab (int *,int *,int *) ;
 int qsort (int ,int ,int,int ) ;
 int vlc_memstream_open (int *) ;
 char* vlc_stream_ReadLine (int ) ;
 int webvtt_text_parser_Delete (int *) ;
 int webvtt_text_parser_Feed (int *,char*) ;
 int * webvtt_text_parser_New (struct callback_ctx*,int ,int ,int ) ;

__attribute__((used)) static int ReadWEBVTT( demux_t *p_demux )
{
    demux_sys_t *p_sys = p_demux->p_sys;

    struct callback_ctx ctx;
    ctx.p_demux = p_demux;
    ctx.b_ordered = 1;

    webvtt_text_parser_t *p_parser =
            webvtt_text_parser_New( &ctx, ParserGetCueHandler,
                                          ParserCueDoneHandler,
                                          ParserHeaderHandler );
    if( p_parser == ((void*)0) )
        return VLC_EGENERIC;

    (void) vlc_memstream_open( &ctx.regions );
    (void) vlc_memstream_open( &ctx.styles );

    char *psz_line;
    while( (psz_line = vlc_stream_ReadLine( p_demux->s )) )
        webvtt_text_parser_Feed( p_parser, psz_line );
    webvtt_text_parser_Feed( p_parser, ((void*)0) );

    if( !ctx.b_ordered )
        qsort( p_sys->cues.p_array, p_sys->cues.i_count, sizeof(webvtt_cue_t), cue_Compare );

    BuildIndex( p_demux );

    memstream_Grab( &ctx.regions, &p_sys->regions_headers.p_data,
                                  &p_sys->regions_headers.i_data );
    memstream_Grab( &ctx.styles, &p_sys->styles_headers.p_data,
                                 &p_sys->styles_headers.i_data );

    webvtt_text_parser_Delete( p_parser );

    return VLC_SUCCESS;
}
