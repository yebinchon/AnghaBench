
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct lexbuf {int dummy; } ;
struct TYPE_3__ {int rule; int pool; } ;
typedef TYPE_1__ fz_css ;
typedef int fz_context ;


 int css_lex_init (int *,struct lexbuf*,int ,char const*,char const*) ;
 int next (struct lexbuf*) ;
 int parse_stylesheet (struct lexbuf*,int ) ;

void fz_parse_css(fz_context *ctx, fz_css *css, const char *source, const char *file)
{
 struct lexbuf buf;
 css_lex_init(ctx, &buf, css->pool, source, file);
 next(&buf);
 css->rule = parse_stylesheet(&buf, css->rule);
}
