
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;


 scalar_t__ GlobalAlloc (int,int ) ;
 int GlobalFree (int *) ;
 int a2w (char*,int *) ;
 int lstrlenA (char*) ;
 int wmain (int,int **) ;

int main(int argc, char *argv[])
{
 wchar_t ** wargv;
 int i;
 int ec;

 wargv = (wchar_t **) GlobalAlloc(
    sizeof(void*) * argc,
    0
    );
 for(i=0;i<argc;++i)
 {
  wargv[i] = (wchar_t*) GlobalAlloc(
    sizeof(wchar_t) * (1+lstrlenA(argv[i])),
    0
    );
  a2w(argv[i],wargv[i]);
 }
 wargv[i] = ((void*)0);
 ec = wmain(argc,wargv);
 for (i=0;wargv[i];++i) GlobalFree(wargv[i]);
 return ec;
}
