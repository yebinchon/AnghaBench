
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int FILE ;


 char* GlobalAlloc (int,int ) ;
 int GlobalFree (char*) ;
 int a2w (char*,int *) ;
 int fgets (char*,int,int *) ;

wchar_t *
fgetws(wchar_t *buf, int bufsize, FILE *file)
{
 char * abuf = GlobalAlloc(bufsize,0);
 if (!buf)return ((void*)0);
 fgets(abuf,bufsize,file);
 a2w(abuf,buf);
 GlobalFree(abuf);
 return buf;
}
