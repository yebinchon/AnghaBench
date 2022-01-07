
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int FILE_ATTRIBUTE_HIDDEN ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_ATTRIBUTE_READONLY ;
 int GetFileAttributesA (int ) ;
 int INVALID_FILE_ATTRIBUTES ;
 int SetFileAttributesA (int ,int ) ;

__attribute__((used)) static BOOL check_ini_file_attr(LPSTR filename)
{
    BOOL ret;
    DWORD expected = FILE_ATTRIBUTE_HIDDEN | FILE_ATTRIBUTE_READONLY;
    DWORD attr = GetFileAttributesA(filename);

    ret = (attr & expected) && (attr != INVALID_FILE_ATTRIBUTES);
    SetFileAttributesA(filename, FILE_ATTRIBUTE_NORMAL);

    return ret;
}
