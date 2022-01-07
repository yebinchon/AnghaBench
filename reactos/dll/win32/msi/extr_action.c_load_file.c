
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_17__ {int Attributes; int IsCompressed; int entry; void* Sequence; struct TYPE_17__* File; int state; void* Language; void* Version; void* FileSize; void* ShortName; int LongName; void* FileName; int Component; } ;
struct TYPE_16__ {int WordCount; int files; } ;
typedef int MSIRECORD ;
typedef TYPE_1__ MSIPACKAGE ;
typedef TYPE_2__ MSIFILE ;
typedef TYPE_1__* LPVOID ;
typedef TYPE_2__* LPCWSTR ;


 int ERROR_NOT_ENOUGH_MEMORY ;
 int ERROR_SUCCESS ;
 void* FALSE ;
 void* MSI_RecordGetInteger (int *,int) ;
 TYPE_2__* MSI_RecordGetString (int *,int) ;
 int TRACE (char*,int ,void*) ;
 int TRUE ;
 int WARN (char*,int ) ;
 int debugstr_w (TYPE_2__*) ;
 int folder_split_path (void*,char) ;
 int list_add_tail (int *,int *) ;
 int load_file_disk_id (TYPE_1__*,TYPE_2__*) ;
 int load_file_hash (TYPE_1__*,TYPE_2__*) ;
 TYPE_2__* msi_alloc_zero (int) ;
 void* msi_dup_record_field (int *,int) ;
 int msi_free (TYPE_2__*) ;
 int msi_get_loaded_component (TYPE_1__*,TYPE_2__*) ;
 int msi_reduce_to_long_filename (void*) ;
 int msidbFileAttributesCompressed ;
 int msidbFileAttributesNoncompressed ;
 int msidbFileAttributesPatchAdded ;
 int msidbSumInfoSourceTypeAdminImage ;
 int msidbSumInfoSourceTypeCompressed ;
 int msifs_invalid ;
 int strdupW (int ) ;

__attribute__((used)) static UINT load_file(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE* package = param;
    LPCWSTR component;
    MSIFILE *file;



    file = msi_alloc_zero( sizeof (MSIFILE) );
    if (!file)
        return ERROR_NOT_ENOUGH_MEMORY;

    file->File = msi_dup_record_field( row, 1 );

    component = MSI_RecordGetString( row, 2 );
    file->Component = msi_get_loaded_component( package, component );

    if (!file->Component)
    {
        WARN("Component not found: %s\n", debugstr_w(component));
        msi_free(file->File);
        msi_free(file);
        return ERROR_SUCCESS;
    }

    file->FileName = msi_dup_record_field( row, 3 );
    msi_reduce_to_long_filename( file->FileName );

    file->ShortName = msi_dup_record_field( row, 3 );
    file->LongName = strdupW( folder_split_path(file->ShortName, '|'));

    file->FileSize = MSI_RecordGetInteger( row, 4 );
    file->Version = msi_dup_record_field( row, 5 );
    file->Language = msi_dup_record_field( row, 6 );
    file->Attributes = MSI_RecordGetInteger( row, 7 );
    file->Sequence = MSI_RecordGetInteger( row, 8 );

    file->state = msifs_invalid;




    if (package->WordCount & msidbSumInfoSourceTypeAdminImage)
    {
        file->IsCompressed = FALSE;
    }
    else if (file->Attributes &
             (msidbFileAttributesCompressed | msidbFileAttributesPatchAdded))
    {
        file->IsCompressed = TRUE;
    }
    else if (file->Attributes & msidbFileAttributesNoncompressed)
    {
        file->IsCompressed = FALSE;
    }
    else
    {
        file->IsCompressed = package->WordCount & msidbSumInfoSourceTypeCompressed;
    }

    load_file_hash(package, file);
    load_file_disk_id(package, file);

    TRACE("File loaded (file %s sequence %u)\n", debugstr_w(file->File), file->Sequence);

    list_add_tail( &package->files, &file->entry );

    return ERROR_SUCCESS;
}
