
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char Char ;
typedef int Bool ;


 int False ;
 int True ;

__attribute__((used)) static
Bool containsDubiousChars ( Char* name )
{
   for (; *name != '\0'; name++)
      if (*name == '?' || *name == '*') return True;
   return False;

}
