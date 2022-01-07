
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char* utf8_bytes ;

unsigned char
utf8_char_length(const char *string)
{
 int c = *(unsigned char *) string;

 return utf8_bytes[c];
}
