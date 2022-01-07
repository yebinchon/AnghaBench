
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexbuf {int dummy; } ;
typedef int fz_pool ;
typedef int fz_css_property ;
typedef int fz_context ;


 int css_lex_init (int *,struct lexbuf*,int *,char const*,char*) ;
 int next (struct lexbuf*) ;
 int * parse_declaration_list (struct lexbuf*) ;

fz_css_property *fz_parse_css_properties(fz_context *ctx, fz_pool *pool, const char *source)
{
 struct lexbuf buf;
 css_lex_init(ctx, &buf, pool, source, "<inline>");
 next(&buf);
 return parse_declaration_list(&buf);
}
