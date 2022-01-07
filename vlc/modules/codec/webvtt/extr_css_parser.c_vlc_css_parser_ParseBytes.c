
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int yyscan_t ;
typedef int vlc_css_parser_t ;
typedef int uint8_t ;
typedef int YY_BUFFER_STATE ;


 int yy_delete_buffer (int ,int ) ;
 int yy_scan_bytes (char const*,size_t,int ) ;
 int yylex_destroy (int ) ;
 int yylex_init (int *) ;
 int yyparse (int ,int *) ;

bool vlc_css_parser_ParseBytes( vlc_css_parser_t *p_parser, const uint8_t *p_data, size_t i_data )
{
    yyscan_t yy;
    yylex_init(&yy);

    YY_BUFFER_STATE buf = yy_scan_bytes( (const char*) p_data, i_data, yy );

    bool b_ret = !yyparse( yy, p_parser );

    yy_delete_buffer( buf, yy );
    yylex_destroy( yy );

    return b_ret;
}
