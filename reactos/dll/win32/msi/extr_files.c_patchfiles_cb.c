
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {scalar_t__ Action; int Component; int Enabled; } ;
struct TYPE_13__ {int extracted; TYPE_1__* File; int path; int disk_id; } ;
struct TYPE_12__ {int db; } ;
struct TYPE_11__ {scalar_t__ Attributes; int File; TYPE_4__* Component; } ;
typedef scalar_t__ PVOID ;
typedef TYPE_2__ MSIPACKAGE ;
typedef TYPE_3__ MSIFILEPATCH ;
typedef TYPE_4__ MSICOMPONENT ;
typedef int LPWSTR ;
typedef int LPCWSTR ;
typedef scalar_t__ DWORD ;
typedef int BOOL ;


 int FALSE ;
 scalar_t__ INSTALLSTATE_LOCAL ;
 scalar_t__ MSICABEXTRACT_BEGINEXTRACT ;
 scalar_t__ MSICABEXTRACT_FILEEXTRACTED ;
 int TRACE (char*,int ,int ) ;
 int TRUE ;
 int debugstr_w (int ) ;
 TYPE_3__* find_filepatch (TYPE_2__*,int ,int ) ;
 scalar_t__ is_registered_patch_media (TYPE_2__*,int ) ;
 int msi_create_temp_file (int ) ;
 scalar_t__ msi_get_component_action (TYPE_2__*,TYPE_4__*) ;
 int strdupW (int ) ;

__attribute__((used)) static BOOL patchfiles_cb(MSIPACKAGE *package, LPCWSTR file, DWORD action,
                          LPWSTR *path, DWORD *attrs, PVOID user)
{
    MSIFILEPATCH *patch = *(MSIFILEPATCH **)user;

    if (action == MSICABEXTRACT_BEGINEXTRACT)
    {
        MSICOMPONENT *comp;

        if (is_registered_patch_media( package, patch->disk_id ) ||
            !(patch = find_filepatch( package, patch->disk_id, file ))) return FALSE;

        comp = patch->File->Component;
        comp->Action = msi_get_component_action( package, comp );
        if (!comp->Enabled || comp->Action != INSTALLSTATE_LOCAL)
        {
            TRACE("file %s component %s not installed or disabled\n",
                  debugstr_w(patch->File->File), debugstr_w(comp->Component));
            return FALSE;
        }

        patch->path = msi_create_temp_file( package->db );
        *path = strdupW( patch->path );
        *attrs = patch->File->Attributes;
        *(MSIFILEPATCH **)user = patch;
    }
    else if (action == MSICABEXTRACT_FILEEXTRACTED)
    {
        patch->extracted = TRUE;
    }

    return TRUE;
}
