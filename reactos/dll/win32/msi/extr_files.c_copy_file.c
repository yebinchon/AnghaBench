
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_3__ {int TargetPath; } ;
typedef TYPE_1__ MSIFILE ;
typedef int LPWSTR ;
typedef int BOOL ;


 int CopyFileW (int ,int ,int ) ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int GetLastError () ;
 int SetFileAttributesW (int ,int ) ;

__attribute__((used)) static UINT copy_file(MSIFILE *file, LPWSTR source)
{
    BOOL ret;

    ret = CopyFileW(source, file->TargetPath, FALSE);
    if (!ret)
        return GetLastError();

    SetFileAttributesW(file->TargetPath, FILE_ATTRIBUTE_NORMAL);
    return ERROR_SUCCESS;
}
