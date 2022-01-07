
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _mbsinc (unsigned char const*) ;

unsigned char * _mbstok(unsigned char *s, const unsigned char *delim)
{
  const unsigned char *spanp;
  int c, sc;
  unsigned char *tok;
  static unsigned char *last;


  if (s == ((void*)0) && (s = last) == ((void*)0))
    return (((void*)0));




 cont:
  c = *s;
  s = _mbsinc(s);

  for (spanp = delim; (sc = *spanp) != 0; spanp = _mbsinc(spanp)) {
    if (c == sc)
      goto cont;
  }

  if (c == 0) {
    last = ((void*)0);
    return (((void*)0));
  }
  tok = s - 1;





  for (;;) {
    c = *s;
    s = _mbsinc(s);
    spanp = delim;
    do {
      if ((sc = *spanp) == c) {
 if (c == 0)
   s = ((void*)0);
 else
   s[-1] = 0;
 last = s;
 return (tok);
      }
      spanp = _mbsinc(spanp);
    } while (sc != 0);
  }

}
