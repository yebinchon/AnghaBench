
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ nelem (char const**) ;
 char const** tokenstring ;

const char *jsY_tokenstring(int token)
{
 if (token >= 0 && token < (int)nelem(tokenstring))
  if (tokenstring[token])
   return tokenstring[token];
 return "<unknown>";
}
