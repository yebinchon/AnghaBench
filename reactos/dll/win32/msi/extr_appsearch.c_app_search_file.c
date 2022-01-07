
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwFileVersionMS; scalar_t__ dwFileVersionLS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
struct TYPE_5__ {scalar_t__ MinVersionLS; scalar_t__ MinVersionMS; scalar_t__ MaxVersionLS; scalar_t__ MaxVersionMS; int File; } ;
typedef TYPE_2__ MSISIGNATURE ;
typedef int * LPWSTR ;
typedef int LPVOID ;
typedef int LPBYTE ;
typedef int DWORD ;


 int FILE_ATTRIBUTE_DIRECTORY ;
 int GetFileAttributesW (int *) ;
 int GetFileVersionInfoSizeW (int *,int*) ;
 int GetFileVersionInfoW (int *,int ,int,int ) ;
 int INVALID_FILE_ATTRIBUTES ;
 int PathAddBackslashW (int *) ;
 int PathRemoveFileSpecW (int *) ;
 int VerQueryValueW (int ,int ,int ,int*) ;
 int msi_alloc (int) ;
 int msi_free (int ) ;
 int * strdupW (int *) ;
 int szBackSlash ;

__attribute__((used)) static LPWSTR app_search_file(LPWSTR path, MSISIGNATURE *sig)
{
    VS_FIXEDFILEINFO *info;
    DWORD attr, handle, size;
    LPWSTR val = ((void*)0);
    LPBYTE buffer;

    if (!sig->File)
    {
        PathRemoveFileSpecW(path);
        PathAddBackslashW(path);

        attr = GetFileAttributesW(path);
        if (attr != INVALID_FILE_ATTRIBUTES &&
            (attr & FILE_ATTRIBUTE_DIRECTORY))
            return strdupW(path);

        return ((void*)0);
    }

    attr = GetFileAttributesW(path);
    if (attr == INVALID_FILE_ATTRIBUTES ||
        (attr & FILE_ATTRIBUTE_DIRECTORY))
        return ((void*)0);

    size = GetFileVersionInfoSizeW(path, &handle);
    if (!size)
        return strdupW(path);

    buffer = msi_alloc(size);
    if (!buffer)
        return ((void*)0);

    if (!GetFileVersionInfoW(path, 0, size, buffer))
        goto done;

    if (!VerQueryValueW(buffer, szBackSlash, (LPVOID)&info, &size) || !info)
        goto done;

    if (sig->MinVersionLS || sig->MinVersionMS)
    {
        if (info->dwFileVersionMS < sig->MinVersionMS)
            goto done;

        if (info->dwFileVersionMS == sig->MinVersionMS &&
            info->dwFileVersionLS < sig->MinVersionLS)
            goto done;
    }

    if (sig->MaxVersionLS || sig->MaxVersionMS)
    {
        if (info->dwFileVersionMS > sig->MaxVersionMS)
            goto done;

        if (info->dwFileVersionMS == sig->MaxVersionMS &&
            info->dwFileVersionLS > sig->MaxVersionLS)
            goto done;
    }

    val = strdupW(path);

done:
    msi_free(buffer);
    return val;
}
