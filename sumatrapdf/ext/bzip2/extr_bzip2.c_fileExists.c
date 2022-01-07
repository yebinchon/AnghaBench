
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int Char ;
typedef int Bool ;


 int fclose (int *) ;
 int * fopen (int *,char*) ;

__attribute__((used)) static
Bool fileExists ( Char* name )
{
   FILE *tmp = fopen ( name, "rb" );
   Bool exists = (tmp != ((void*)0));
   if (tmp != ((void*)0)) fclose ( tmp );
   return exists;
}
