
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HANDLE ;


 int FindClose (int ) ;
 int GetLastError () ;
 int _dosmaperr (int ) ;

int _findclose(intptr_t handle)
{
  if (!FindClose((HANDLE)handle)) {
    _dosmaperr(GetLastError());
    return -1;
  }

  return 0;
}
