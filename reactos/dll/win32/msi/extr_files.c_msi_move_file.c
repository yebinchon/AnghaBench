
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCWSTR ;
typedef scalar_t__ BOOL ;


 scalar_t__ CopyFileW (int ,int ,scalar_t__) ;
 scalar_t__ FALSE ;
 scalar_t__ FILE_ATTRIBUTE_DIRECTORY ;
 scalar_t__ GetFileAttributesW (int ) ;
 int GetLastError () ;
 int MOVEFILE_REPLACE_EXISTING ;
 scalar_t__ MoveFileExW (int ,int ,int ) ;
 int TRACE (char*,int ,int ) ;
 scalar_t__ TRUE ;
 int WARN (char*,...) ;
 int debugstr_w (int ) ;
 int msidbMoveFileOptionsMove ;

__attribute__((used)) static BOOL msi_move_file(LPCWSTR source, LPCWSTR dest, int options)
{
    BOOL ret;

    if (GetFileAttributesW(source) == FILE_ATTRIBUTE_DIRECTORY ||
        GetFileAttributesW(dest) == FILE_ATTRIBUTE_DIRECTORY)
    {
        WARN("Source or dest is directory, not moving\n");
        return FALSE;
    }

    if (options == msidbMoveFileOptionsMove)
    {
        TRACE("moving %s -> %s\n", debugstr_w(source), debugstr_w(dest));
        ret = MoveFileExW(source, dest, MOVEFILE_REPLACE_EXISTING);
        if (!ret)
        {
            WARN("MoveFile failed: %d\n", GetLastError());
            return FALSE;
        }
    }
    else
    {
        TRACE("copying %s -> %s\n", debugstr_w(source), debugstr_w(dest));
        ret = CopyFileW(source, dest, FALSE);
        if (!ret)
        {
            WARN("CopyFile failed: %d\n", GetLastError());
            return FALSE;
        }
    }

    return TRUE;
}
