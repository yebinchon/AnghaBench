
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ WCHAR ;
typedef scalar_t__ UINT ;
struct TYPE_7__ {scalar_t__ state; scalar_t__* TargetPath; } ;
struct TYPE_6__ {int need_reboot_at_end; } ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFILE ;
typedef scalar_t__* LPWSTR ;
typedef int DWORD ;


 scalar_t__ CopyFileW (scalar_t__*,scalar_t__*,int ) ;
 int DeleteFileW (scalar_t__*) ;
 scalar_t__ ERROR_ACCESS_DENIED ;
 scalar_t__ ERROR_ALREADY_EXISTS ;
 scalar_t__ ERROR_OUTOFMEMORY ;
 scalar_t__ ERROR_SHARING_VIOLATION ;
 scalar_t__ ERROR_SUCCESS ;
 scalar_t__ ERROR_USER_MAPPED_FILE ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 scalar_t__ GetLastError () ;
 int GetTempFileNameW (scalar_t__*,int ,int ,scalar_t__*) ;
 int MOVEFILE_DELAY_UNTIL_REBOOT ;
 scalar_t__ MoveFileExW (scalar_t__*,scalar_t__*,int ) ;
 int SetFileAttributesW (scalar_t__*,int ) ;
 int TRACE (char*,...) ;
 int WARN (char*,scalar_t__) ;
 scalar_t__ copy_file (TYPE_2__*,scalar_t__*) ;
 int debugstr_w (scalar_t__*) ;
 scalar_t__* msi_alloc (int) ;
 int msi_free (scalar_t__*) ;
 scalar_t__ msifs_overwrite ;
 scalar_t__* strdupW (scalar_t__*) ;
 int strlenW (scalar_t__*) ;
 scalar_t__* strrchrW (scalar_t__*,char) ;
 int szMsi ;

__attribute__((used)) static UINT copy_install_file(MSIPACKAGE *package, MSIFILE *file, LPWSTR source)
{
    UINT gle;

    TRACE("Copying %s to %s\n", debugstr_w(source), debugstr_w(file->TargetPath));

    gle = copy_file(file, source);
    if (gle == ERROR_SUCCESS)
        return gle;

    if (gle == ERROR_ALREADY_EXISTS && file->state == msifs_overwrite)
    {
        TRACE("overwriting existing file\n");
        return ERROR_SUCCESS;
    }
    else if (gle == ERROR_ACCESS_DENIED)
    {
        SetFileAttributesW(file->TargetPath, FILE_ATTRIBUTE_NORMAL);

        gle = copy_file(file, source);
        TRACE("Overwriting existing file: %d\n", gle);
    }
    if (gle == ERROR_SHARING_VIOLATION || gle == ERROR_USER_MAPPED_FILE)
    {
        WCHAR *tmpfileW, *pathW, *p;
        DWORD len;

        TRACE("file in use, scheduling rename operation\n");

        if (!(pathW = strdupW( file->TargetPath ))) return ERROR_OUTOFMEMORY;
        if ((p = strrchrW(pathW, '\\'))) *p = 0;
        len = strlenW( pathW ) + 16;
        if (!(tmpfileW = msi_alloc(len * sizeof(WCHAR))))
        {
            msi_free( pathW );
            return ERROR_OUTOFMEMORY;
        }
        if (!GetTempFileNameW( pathW, szMsi, 0, tmpfileW )) tmpfileW[0] = 0;
        msi_free( pathW );

        if (CopyFileW(source, tmpfileW, FALSE) &&
            MoveFileExW(file->TargetPath, ((void*)0), MOVEFILE_DELAY_UNTIL_REBOOT) &&
            MoveFileExW(tmpfileW, file->TargetPath, MOVEFILE_DELAY_UNTIL_REBOOT))
        {
            package->need_reboot_at_end = 1;
            gle = ERROR_SUCCESS;
        }
        else
        {
            gle = GetLastError();
            WARN("failed to schedule rename operation: %d)\n", gle);
            DeleteFileW( tmpfileW );
        }
        msi_free(tmpfileW);
    }

    return gle;
}
