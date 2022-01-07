
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOKEN_INFORMATION_CLASS ;
typedef scalar_t__ PVOID ;
typedef scalar_t__ PBYTE ;
typedef int HANDLE ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 int GetLastError () ;
 scalar_t__ GetTokenInformation (int ,int,scalar_t__,int ,int *) ;
 int free (scalar_t__) ;
 scalar_t__ malloc (int ) ;
 int printf (char*,int,int) ;

PVOID
GetFromToken(HANDLE hToken, TOKEN_INFORMATION_CLASS tic)
{
 BOOL bResult;
    DWORD n;
 PBYTE p = 0;

    bResult = GetTokenInformation(hToken, tic, 0, 0, &n);
    if ( ! bResult && GetLastError() != ERROR_INSUFFICIENT_BUFFER)
  return 0;

    p = (PBYTE) malloc(n);
    if ( ! GetTokenInformation(hToken, tic, p, n, &n) )
 {
  printf("GetFromToken() failed for TOKEN_INFORMATION_CLASS(%d): %d\n", tic, GetLastError());
  free(p);
  return 0;
 }

 return p;
}
