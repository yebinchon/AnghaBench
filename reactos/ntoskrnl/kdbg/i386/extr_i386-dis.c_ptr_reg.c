
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AFLAG ;
 int REX_MODE64 ;
 int USED_REX (int) ;
 int close_char ;
 int eAX_reg ;
 char** names16 ;
 char** names32 ;
 char** names64 ;
 int oappend (char const*) ;
 scalar_t__* obufp ;
 int open_char ;
 int rex ;

__attribute__((used)) static void
ptr_reg (int code, int sizeflag)
{
  const char *s;

  *obufp++ = open_char;
  USED_REX (REX_MODE64);
  if (rex & REX_MODE64)
    {
      if (!(sizeflag & AFLAG))
 s = names32[code - eAX_reg];
      else
 s = names64[code - eAX_reg];
    }
  else if (sizeflag & AFLAG)
    s = names32[code - eAX_reg];
  else
    s = names16[code - eAX_reg];
  oappend (s);
  *obufp++ = close_char;
  *obufp = 0;
}
