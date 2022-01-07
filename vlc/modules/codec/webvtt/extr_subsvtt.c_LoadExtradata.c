
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int webvtt_text_parser_t ;
struct TYPE_7__ {int * stream; } ;
struct parser_ctx {TYPE_3__* p_dec; int * p_region; TYPE_2__ css; } ;
typedef int stream_t ;
struct TYPE_6__ {int i_extra; int p_extra; } ;
struct TYPE_8__ {TYPE_1__ fmt_in; } ;
typedef TYPE_3__ decoder_t ;


 int ParserHeaderHandler (struct parser_ctx*,int ,int,int *) ;
 int vlc_stream_Delete (int *) ;
 int * vlc_stream_MemoryNew (TYPE_3__*,int ,int ,int) ;
 char* vlc_stream_ReadLine (int *) ;
 int webvtt_text_parser_Delete (int *) ;
 int webvtt_text_parser_Feed (int *,char*) ;
 int * webvtt_text_parser_New (struct parser_ctx*,int *,int *,int (*) (struct parser_ctx*,int ,int,int *)) ;

__attribute__((used)) static void LoadExtradata( decoder_t *p_dec )
{
    stream_t *p_stream = vlc_stream_MemoryNew( p_dec,
                                               p_dec->fmt_in.p_extra,
                                               p_dec->fmt_in.i_extra,
                                               1 );
    if( !p_stream )
        return;

   struct parser_ctx ctx;



   ctx.p_region = ((void*)0);
   ctx.p_dec = p_dec;
   webvtt_text_parser_t *p_parser =
           webvtt_text_parser_New( &ctx, ((void*)0), ((void*)0), ParserHeaderHandler );
   if( p_parser )
   {
        char *psz_line;
        while( (psz_line = vlc_stream_ReadLine( p_stream )) )
            webvtt_text_parser_Feed( p_parser, psz_line );
        webvtt_text_parser_Delete( p_parser );

        ParserHeaderHandler( &ctx, 0, 0, ((void*)0) );
   }

    vlc_stream_Delete( p_stream );
}
