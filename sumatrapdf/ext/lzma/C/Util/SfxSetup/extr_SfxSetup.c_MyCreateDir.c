
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WRes ;
typedef int WCHAR ;


 scalar_t__ CreateDirectoryW (int const*,int *) ;
 int GetLastError () ;

__attribute__((used)) static WRes MyCreateDir(const WCHAR *name)
{
  return CreateDirectoryW(name, ((void*)0)) ? 0 : GetLastError();
}
