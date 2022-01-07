
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_7__ {int hash; int TargetPath; } ;
struct TYPE_6__ {int dwFileHashInfoSize; } ;
typedef TYPE_1__ MSIFILEHASHINFO ;
typedef TYPE_2__ MSIFILE ;
typedef int BOOL ;


 scalar_t__ ERROR_SUCCESS ;
 int FALSE ;
 int memcmp (TYPE_1__*,int *,int) ;
 scalar_t__ msi_get_filehash (int ,TYPE_1__*) ;

BOOL msi_file_hash_matches( MSIFILE *file )
{
    UINT r;
    MSIFILEHASHINFO hash;

    hash.dwFileHashInfoSize = sizeof(MSIFILEHASHINFO);
    r = msi_get_filehash( file->TargetPath, &hash );
    if (r != ERROR_SUCCESS)
        return FALSE;

    return !memcmp( &hash, &file->hash, sizeof(MSIFILEHASHINFO) );
}
