
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;


 int CreateWindow (char*,char const*,int,int,int,int ,int,int ,int *,int ,int *) ;
 int WS_CHILD ;
 int WS_VISIBLE ;
 int assert (int) ;
 int g_hInst ;
 int g_hwnd ;
 int * g_hwndCtrl ;
 int nMaxCtrls ;
 int nNextCtrl ;
 int nStaticHeight ;
 int nStaticWidth ;

__attribute__((used)) static void CreateStatic ( const char* lpWindowName, DWORD dwStyle )
{
 int n = nNextCtrl++;
 assert ( n < nMaxCtrls );
 g_hwndCtrl[n] = CreateWindow (
  "STATIC",
  lpWindowName,
  WS_VISIBLE|WS_CHILD|dwStyle,
  n+2,
  nStaticHeight*n+1,
  nStaticWidth,
  nStaticHeight-1,
  g_hwnd,
  ((void*)0),
  g_hInst,
  ((void*)0) );
}
