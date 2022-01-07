
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int utf8_length (char const**,int,int ,int*,int,int*,int,int) ;

int
utf8_width_of(const char *text, int max_bytes, int max_width)
{
 int text_width = 0;
 const char *tmp = text;
 int trimmed = 0;

 utf8_length(&tmp, max_bytes, 0, &text_width, max_width, &trimmed, 0, 1);
 return text_width;
}
