
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef int BOOL ;


 scalar_t__ GetFileAttributesW (int ) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;

__attribute__((used)) static BOOL file_existsW(LPCWSTR name)
{
  return GetFileAttributesW(name) != INVALID_FILE_ATTRIBUTES;
}
