
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ dwFileVersionMS; scalar_t__ dwFileVersionLS; } ;
typedef TYPE_1__ VS_FIXEDFILEINFO ;
typedef int UINT ;
struct TYPE_5__ {scalar_t__ MinVersionMS; scalar_t__ MinVersionLS; scalar_t__ MaxVersionMS; scalar_t__ MaxVersionLS; int Languages; } ;
typedef TYPE_2__ MSISIGNATURE ;
typedef int LPCWSTR ;
typedef int DWORD ;
typedef int BOOL ;


 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int FALSE ;
 int GetFileVersionInfoSizeW (int ,int *) ;
 scalar_t__ GetFileVersionInfoW (int ,int ,int ,void*) ;
 int HIWORD (scalar_t__) ;
 int LOWORD (scalar_t__) ;
 int TRACE (char*,int ,...) ;
 int TRUE ;
 int VerQueryValueW (void*,int ,void**,int *) ;
 int debugstr_w (int ) ;
 int match_languages (void*,int ) ;
 void* msi_alloc (int ) ;
 int msi_free (void*) ;
 int szBackSlash ;

__attribute__((used)) static UINT ACTION_FileVersionMatches(const MSISIGNATURE *sig, LPCWSTR filePath,
 BOOL *matches)
{
    UINT len;
    void *version;
    VS_FIXEDFILEINFO *info = ((void*)0);
    DWORD zero, size = GetFileVersionInfoSizeW( filePath, &zero );

    *matches = FALSE;

    if (!size) return ERROR_SUCCESS;
    if (!(version = msi_alloc( size ))) return ERROR_OUTOFMEMORY;

    if (GetFileVersionInfoW( filePath, 0, size, version ))
        VerQueryValueW( version, szBackSlash, (void **)&info, &len );

    if (info)
    {
        TRACE("comparing file version %d.%d.%d.%d:\n",
              HIWORD(info->dwFileVersionMS),
              LOWORD(info->dwFileVersionMS),
              HIWORD(info->dwFileVersionLS),
              LOWORD(info->dwFileVersionLS));
        if (info->dwFileVersionMS < sig->MinVersionMS
            || (info->dwFileVersionMS == sig->MinVersionMS &&
                info->dwFileVersionLS < sig->MinVersionLS))
        {
            TRACE("less than minimum version %d.%d.%d.%d\n",
                   HIWORD(sig->MinVersionMS),
                   LOWORD(sig->MinVersionMS),
                   HIWORD(sig->MinVersionLS),
                   LOWORD(sig->MinVersionLS));
        }
        else if ((sig->MaxVersionMS || sig->MaxVersionLS) &&
                 (info->dwFileVersionMS > sig->MaxVersionMS ||
                  (info->dwFileVersionMS == sig->MaxVersionMS &&
                   info->dwFileVersionLS > sig->MaxVersionLS)))
        {
            TRACE("greater than maximum version %d.%d.%d.%d\n",
                   HIWORD(sig->MaxVersionMS),
                   LOWORD(sig->MaxVersionMS),
                   HIWORD(sig->MaxVersionLS),
                   LOWORD(sig->MaxVersionLS));
        }
        else if (!match_languages( version, sig->Languages ))
        {
            TRACE("languages %s not supported\n", debugstr_w( sig->Languages ));
        }
        else *matches = TRUE;
    }
    msi_free( version );
    return ERROR_SUCCESS;
}
