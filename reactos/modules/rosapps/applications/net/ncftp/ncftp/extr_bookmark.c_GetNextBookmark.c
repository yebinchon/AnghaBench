
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int line ;
typedef int FILE ;
typedef int Bookmark ;


 int * FGets (char*,int,int *) ;
 scalar_t__ ParseHostLine (char*,int *) ;

int
GetNextBookmark(FILE *fp, Bookmark *bmp)
{
 char line[512];

 while (FGets(line, sizeof(line), fp) != ((void*)0)) {
  if (ParseHostLine(line, bmp) >= 0)
   return (0);
 }
 return (-1);
}
