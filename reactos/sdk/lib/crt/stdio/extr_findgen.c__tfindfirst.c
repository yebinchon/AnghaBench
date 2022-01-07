
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef void* time_t ;
struct _tfinddata_t {int name; scalar_t__ size; void* time_write; void* time_access; void* time_create; int attrib; } ;
typedef int __int64 ;
typedef int _TCHAR ;
struct TYPE_3__ {int cFileName; scalar_t__ nFileSizeLow; scalar_t__ nFileSizeHigh; int ftLastWriteTime; int ftLastAccessTime; int ftCreationTime; int dwFileAttributes; } ;
typedef TYPE_1__ WIN32_FIND_DATA ;
typedef scalar_t__ HANDLE ;


 scalar_t__ FileTimeToUnixTime (int *,int *) ;
 scalar_t__ FindFirstFile (int const*,TYPE_1__*) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 int MAX_PATH ;
 int _dosmaperr (int ) ;
 int _tcsncpy (int ,int ,int ) ;

intptr_t _tfindfirst(const _TCHAR* _name, struct _tfinddata_t* result)
{
    WIN32_FIND_DATA FindFileData;
    HANDLE hFindFile;

    hFindFile = FindFirstFile(_name, &FindFileData);
    if (hFindFile == INVALID_HANDLE_VALUE) {
        _dosmaperr(GetLastError());
        return -1;
    }

    result->attrib = FindFileData.dwFileAttributes;
    result->time_create = (time_t)FileTimeToUnixTime(&FindFileData.ftCreationTime,((void*)0));
    result->time_access = (time_t)FileTimeToUnixTime(&FindFileData.ftLastAccessTime,((void*)0));
    result->time_write = (time_t)FileTimeToUnixTime(&FindFileData.ftLastWriteTime,((void*)0));
    result->size = (((__int64)FindFileData.nFileSizeHigh)<<32) + FindFileData.nFileSizeLow;
    _tcsncpy(result->name,FindFileData.cFileName,MAX_PATH);

    return (intptr_t)hFindFile;
}
