
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int match_class (int,int) ;
 int matchbracketclass (int,char const*,char const*) ;
 int uchar (char const) ;

__attribute__((used)) static int singlematch(int c, const char *p, const char *ep)
{
  switch (*p) {
  case '.': return 1;
  case 128: return match_class(c, uchar(*(p+1)));
  case '[': return matchbracketclass(c, p, ep-1);
  default: return (uchar(*p) == c);
  }
}
