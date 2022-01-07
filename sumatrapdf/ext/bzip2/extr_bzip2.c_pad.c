
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Int32 ;
typedef int Char ;


 int fprintf (int ,char*) ;
 scalar_t__ longestFileName ;
 int stderr ;
 scalar_t__ strlen (int *) ;

__attribute__((used)) static
void pad ( Char *s )
{
   Int32 i;
   if ( (Int32)strlen(s) >= longestFileName ) return;
   for (i = 1; i <= longestFileName - (Int32)strlen(s); i++)
      fprintf ( stderr, " " );
}
