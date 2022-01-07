
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FALSE ;
 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (int ) ;
 int INVALID_FILE_ATTRIBUTES ;

__attribute__((used)) static BOOL is_directory(LPCWSTR target)
{

 DWORD target_attr = GetFileAttributesW(target);

 if (target_attr == INVALID_FILE_ATTRIBUTES)
  return FALSE;

 return (target_attr & FILE_ATTRIBUTE_DIRECTORY) != 0;
}
