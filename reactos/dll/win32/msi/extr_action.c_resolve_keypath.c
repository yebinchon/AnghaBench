
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef char WCHAR ;
typedef int UINT ;
struct TYPE_17__ {int Attributes; int KeyPath; int Directory; } ;
struct TYPE_16__ {int TargetPath; } ;
struct TYPE_15__ {int db; } ;
struct TYPE_14__ {int hdr; } ;
typedef TYPE_1__ MSIRECORD ;
typedef TYPE_2__ MSIPACKAGE ;
typedef TYPE_3__ MSIFILE ;
typedef TYPE_4__ MSICOMPONENT ;
typedef int * LPWSTR ;
typedef int LPCWSTR ;


 int FIXME (char*) ;
 TYPE_1__* MSI_QueryGetRecord (int ,char const*,int ) ;
 int MSI_RecordGetInteger (TYPE_1__*,int) ;
 int MSI_RecordGetString (TYPE_1__*,int) ;
 int deformat_string (TYPE_2__*,int ,int **) ;
 int * msi_alloc (int) ;
 int msi_free (int *) ;
 TYPE_3__* msi_get_loaded_file (TYPE_2__*,int ) ;
 int msi_get_target_folder (TYPE_2__*,int ) ;
 int msidbComponentAttributesODBCDataSource ;
 int msidbComponentAttributesRegistryKeyPath ;
 int msiobj_release (int *) ;
 int sprintfW (int *,char const*,int,int *,...) ;
 int * strdupW (int ) ;
 int strlenW (int *) ;

__attribute__((used)) static LPWSTR resolve_keypath( MSIPACKAGE* package, MSICOMPONENT *cmp )
{

    if (!cmp->KeyPath)
        return strdupW( msi_get_target_folder( package, cmp->Directory ) );

    if (cmp->Attributes & msidbComponentAttributesRegistryKeyPath)
    {
        static const WCHAR query[] = {
            'S','E','L','E','C','T',' ','*',' ','F','R','O','M',' ',
            '`','R','e','g','i','s','t','r','y','`',' ','W','H','E','R','E',' ',
            '`','R','e','g','i','s','t','r','y','`',' ','=',' ' ,'\'','%','s','\'',0};
        static const WCHAR fmt[] = {'%','0','2','i',':','\\','%','s','\\',0};
        static const WCHAR fmt2[]= {'%','0','2','i',':','\\','%','s','\\','%','s',0};
        MSIRECORD *row;
        UINT root, len;
        LPWSTR deformated, buffer, deformated_name;
        LPCWSTR key, name;

        row = MSI_QueryGetRecord(package->db, query, cmp->KeyPath);
        if (!row)
            return ((void*)0);

        root = MSI_RecordGetInteger(row,2);
        key = MSI_RecordGetString(row, 3);
        name = MSI_RecordGetString(row, 4);
        deformat_string(package, key , &deformated);
        deformat_string(package, name, &deformated_name);

        len = strlenW(deformated) + 6;
        if (deformated_name)
            len+=strlenW(deformated_name);

        buffer = msi_alloc( len *sizeof(WCHAR));

        if (deformated_name)
            sprintfW(buffer,fmt2,root,deformated,deformated_name);
        else
            sprintfW(buffer,fmt,root,deformated);

        msi_free(deformated);
        msi_free(deformated_name);
        msiobj_release(&row->hdr);

        return buffer;
    }
    else if (cmp->Attributes & msidbComponentAttributesODBCDataSource)
    {
        FIXME("UNIMPLEMENTED keypath as ODBC Source\n");
        return ((void*)0);
    }
    else
    {
        MSIFILE *file = msi_get_loaded_file( package, cmp->KeyPath );

        if (file)
            return strdupW( file->TargetPath );
    }
    return ((void*)0);
}
