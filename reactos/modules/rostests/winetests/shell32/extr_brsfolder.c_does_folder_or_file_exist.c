
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 scalar_t__ GetFileAttributesA (int ) ;
 scalar_t__ INVALID_FILE_ATTRIBUTES ;

__attribute__((used)) static BOOL does_folder_or_file_exist(LPCSTR folder_path)
{
    DWORD file_attributes = GetFileAttributesA(folder_path);
    return !(file_attributes == INVALID_FILE_ATTRIBUTES);
}
