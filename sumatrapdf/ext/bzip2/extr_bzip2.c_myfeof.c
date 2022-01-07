
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Int32 ;
typedef int FILE ;
typedef int Bool ;


 scalar_t__ EOF ;
 int False ;
 int True ;
 scalar_t__ fgetc (int *) ;
 int ungetc (scalar_t__,int *) ;

__attribute__((used)) static
Bool myfeof ( FILE* f )
{
   Int32 c = fgetc ( f );
   if (c == EOF) return True;
   ungetc ( c, f );
   return False;
}
