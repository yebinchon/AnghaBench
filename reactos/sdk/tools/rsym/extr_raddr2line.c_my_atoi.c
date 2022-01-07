
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char const*,int*) ;

long
my_atoi ( const char* a )
{
 int i = 0;
 const char* fmt = "%x";

 if ( *a == '0' )
 {
  switch ( *++a )
  {
  case 'x':
   fmt = "%x";
   ++a;
   break;
  case 'd':
   fmt = "%d";
   ++a;
   break;
  default:
   fmt = "%o";
   break;
  }
 }
 sscanf ( a, fmt, &i );
 return i;
}
