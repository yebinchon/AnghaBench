
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_13__ {int File; } ;
struct TYPE_12__ {int entry; void* Sequence; TYPE_4__* File; void* Attributes; void* PatchSize; } ;
struct TYPE_11__ {int filepatches; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFILEPATCH ;
typedef TYPE_1__* LPVOID ;


 int ERR (char*) ;
 int ERROR_FUNCTION_FAILED ;
 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 void* MSI_RecordGetInteger (int *,int) ;
 int * MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ,void*) ;
 int debugstr_w (int ) ;
 int list_add_tail (int *,int *) ;
 int load_patch_disk_id (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* msi_alloc_zero (int) ;
 int msi_free (TYPE_2__*) ;
 TYPE_4__* msi_get_loaded_file (TYPE_1__*,int const*) ;

__attribute__((used)) static UINT load_patch(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    MSIFILEPATCH *patch;
    const WCHAR *file_key;

    patch = msi_alloc_zero( sizeof (MSIFILEPATCH) );
    if (!patch)
        return ERROR_NOT_ENOUGH_MEMORY;

    file_key = MSI_RecordGetString( row, 1 );
    patch->File = msi_get_loaded_file( package, file_key );
    if (!patch->File)
    {
        ERR("Failed to find target for patch in File table\n");
        msi_free(patch);
        return ERROR_FUNCTION_FAILED;
    }

    patch->Sequence = MSI_RecordGetInteger( row, 2 );
    patch->PatchSize = MSI_RecordGetInteger( row, 3 );
    patch->Attributes = MSI_RecordGetInteger( row, 4 );






    load_patch_disk_id( package, patch );

    TRACE("Patch loaded (file %s sequence %u)\n", debugstr_w(patch->File->File), patch->Sequence);

    list_add_tail( &package->filepatches, &patch->entry );

    return ERROR_SUCCESS;
}
