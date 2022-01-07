
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct callback_ctx {int regions; int styles; } ;
typedef enum webvtt_header_line_e { ____Placeholder_webvtt_header_line_e } webvtt_header_line_e ;


 int VLC_UNUSED (int) ;
 int WEBVTT_HEADER_REGION ;
 int WEBVTT_HEADER_STYLE ;
 int memstream_Append (int *,char const*) ;

__attribute__((used)) static void ParserHeaderHandler( void *priv, enum webvtt_header_line_e s,
                                 bool b_new, const char *psz_line )
{
    VLC_UNUSED(b_new);
    struct callback_ctx *ctx = (struct callback_ctx *) priv;
    if( s == WEBVTT_HEADER_STYLE )
        memstream_Append( &ctx->styles, psz_line );
    else if( s == WEBVTT_HEADER_REGION )
        memstream_Append( &ctx->regions, psz_line );
}
