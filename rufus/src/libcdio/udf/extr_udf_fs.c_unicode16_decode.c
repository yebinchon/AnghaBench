
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 scalar_t__ calloc (int,int) ;
 int cdio_charset_to_utf8 (char*,int,char**,char*) ;

__attribute__((used)) static char*
unicode16_decode(const uint8_t *data, int i_len)
{
  int i;
  char* r = ((void*)0);

  switch (data[0])
  {
  case 8:
    r = (char*)calloc(i_len, 1);
    if (r == ((void*)0))
      return r;
    for (i=0; i<i_len-1; i++)
      r[i] = data[i+1];
    return r;
  case 16:
    cdio_charset_to_utf8((char*)&data[1], i_len-1, &r, "UCS-2BE");
    return r;
  default:

    r = (char*)calloc(1, 1);
    return r;
  }
}
