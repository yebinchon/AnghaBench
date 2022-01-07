
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct utf8_data {int size; int width; int data; } ;
typedef enum utf8_state { ____Placeholder_utf8_state } utf8_state ;


 int MB_LEN_MAX ;
 int UTF8_DONE ;
 int UTF8_ERROR ;
 int memcpy (int ,char*,int) ;
 int utf8_width (int ) ;
 int utf8proc_wctomb (char*,int ) ;
 int wctomb (char*,int ) ;

enum utf8_state
utf8_split(wchar_t wc, struct utf8_data *ud)
{
 char s[MB_LEN_MAX];
 int slen;




 slen = wctomb(s, wc);

 if (slen <= 0 || slen > (int)sizeof ud->data)
  return (UTF8_ERROR);

 memcpy(ud->data, s, slen);
 ud->size = slen;

 ud->width = utf8_width(wc);
 return (UTF8_DONE);
}
