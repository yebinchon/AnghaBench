
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static const char *tag_from_font_size(float size)
{
 if (size >= 20) return "h1";
 if (size >= 15) return "h2";
 if (size >= 12) return "h3";
 return "p";
}
