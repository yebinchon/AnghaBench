
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char*) ;

__attribute__((used)) static int
is_italic_from_font_style(const char *style)
{
 return !strcmp(style, "italic") || !strcmp(style, "oblique");
}
