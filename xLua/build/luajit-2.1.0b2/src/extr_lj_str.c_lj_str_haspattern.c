
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_4__ {int len; } ;
typedef TYPE_1__ GCstr ;


 scalar_t__ lj_char_ispunct (int) ;
 scalar_t__ strchr (char*,int) ;
 char* strdata (TYPE_1__*) ;

int lj_str_haspattern(GCstr *s)
{
  const char *p = strdata(s), *q = p + s->len;
  while (p < q) {
    int c = *(const uint8_t *)p++;
    if (lj_char_ispunct(c) && strchr("^$*+?.([%-", c))
      return 1;
  }
  return 0;
}
