
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ svg_is_digit (char const) ;
 scalar_t__ svg_is_whitespace_or_comma (char const) ;
 char* svg_lex_number (float*,char const*) ;

__attribute__((used)) static void
svg_lex_viewbox(const char *s, float *x, float *y, float *w, float *h)
{
 while (svg_is_whitespace_or_comma(*s)) ++s;
 if (svg_is_digit(*s)) s = svg_lex_number(x, s);
 while (svg_is_whitespace_or_comma(*s)) ++s;
 if (svg_is_digit(*s)) s = svg_lex_number(y, s);
 while (svg_is_whitespace_or_comma(*s)) ++s;
 if (svg_is_digit(*s)) s = svg_lex_number(w, s);
 while (svg_is_whitespace_or_comma(*s)) ++s;
 if (svg_is_digit(*s)) s = svg_lex_number(h, s);
}
