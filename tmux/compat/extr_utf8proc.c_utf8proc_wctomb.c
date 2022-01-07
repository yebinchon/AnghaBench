
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 int utf8proc_codepoint_valid (int ) ;
 int utf8proc_encode_char (int ,char*) ;

int
utf8proc_wctomb(char *s, wchar_t wc)
{
 if (s == ((void*)0))
  return (0);

 if (!utf8proc_codepoint_valid(wc))
  return (-1);
 return (utf8proc_encode_char(wc, s));
}
