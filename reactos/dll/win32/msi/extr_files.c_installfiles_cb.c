
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int Directory; } ;
struct TYPE_4__ {scalar_t__ state; scalar_t__ Attributes; TYPE_2__* Component; int TargetPath; int disk_id; } ;
typedef scalar_t__ PVOID ;
typedef int MSIPACKAGE ;
typedef TYPE_1__ MSIFILE ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ MSICABEXTRACT_BEGINEXTRACT ;
 scalar_t__ MSICABEXTRACT_FILEEXTRACTED ;
 int TRACE (char*,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 TYPE_1__* find_file (int *,int ,int ) ;
 int msi_create_directory (int *,int ) ;
 int msi_is_global_assembly (TYPE_2__*) ;
 scalar_t__ msifs_installed ;
 scalar_t__ msifs_missing ;
 scalar_t__ msifs_overwrite ;
 int strdupW (int ) ;

__attribute__((used)) static BOOL installfiles_cb(MSIPACKAGE *package, LPCWSTR filename, DWORD action,
                            LPWSTR *path, DWORD *attrs, PVOID user)
{
    MSIFILE *file = *(MSIFILE **)user;

    if (action == MSICABEXTRACT_BEGINEXTRACT)
    {
        if (!(file = find_file( package, file->disk_id, filename )))
        {
            TRACE("unknown file in cabinet (%s)\n", debugstr_w(filename));
            return FALSE;
        }
        if (file->state != msifs_missing && file->state != msifs_overwrite)
            return FALSE;

        if (!msi_is_global_assembly( file->Component ))
        {
            msi_create_directory( package, file->Component->Directory );
        }
        *path = strdupW( file->TargetPath );
        *attrs = file->Attributes;
        *(MSIFILE **)user = file;
    }
    else if (action == MSICABEXTRACT_FILEEXTRACTED)
    {
        if (!msi_is_global_assembly( file->Component )) file->state = msifs_installed;
    }

    return TRUE;
}
