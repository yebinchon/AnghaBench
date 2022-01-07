
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef int WCHAR ;
typedef int UINT ;
struct TYPE_22__ {int Attributes; TYPE_1__* assembly; int Action; } ;
struct TYPE_21__ {int db; } ;
struct TYPE_20__ {int hdr; } ;
struct TYPE_19__ {int application; } ;
typedef TYPE_2__ MSIRECORD ;
typedef TYPE_3__ MSIPACKAGE ;
typedef TYPE_4__ MSICOMPONENT ;
typedef int * LPWSTR ;
typedef TYPE_3__* LPVOID ;
typedef int * LPCWSTR ;
typedef int DWORD ;


 int DeleteFileW (int *) ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_SUCCESS ;
 int INSTALLMESSAGE_ACTIONDATA ;
 TYPE_2__* MSI_CreateRecord (int) ;
 int MSI_ProcessMessage (TYPE_3__*,int ,TYPE_2__*) ;
 int MSI_RecordGetInteger (TYPE_2__*,int) ;
 int * MSI_RecordGetString (TYPE_2__*,int) ;
 int MSI_RecordSetStringW (TYPE_2__*,int,int *) ;
 int PathAddBackslashW (int *) ;
 int RemoveDirectoryW (int *) ;
 int TRACE (char*,...) ;
 int WARN (char*) ;
 int debugstr_w (int *) ;
 int lstrcatW (int *,int *) ;
 int lstrcpyW (int *,int *) ;
 int lstrlenW (int *) ;
 int * msi_alloc (int) ;
 int * msi_dup_property (int ,int *) ;
 int msi_free (int *) ;
 int msi_get_component_action (TYPE_3__*,TYPE_4__*) ;
 TYPE_4__* msi_get_loaded_component (TYPE_3__*,int *) ;
 int msi_reduce_to_long_filename (int *) ;
 int msidbComponentAttributesPermanent ;
 int msiobj_release (int *) ;
 int * strdupW (int *) ;
 int verify_comp_for_removal (TYPE_4__*,int ) ;

__attribute__((used)) static UINT ITERATE_RemoveFiles(MSIRECORD *row, LPVOID param)
{
    MSIPACKAGE *package = param;
    MSICOMPONENT *comp;
    MSIRECORD *uirow;
    LPCWSTR component, dirprop;
    UINT install_mode;
    LPWSTR dir = ((void*)0), path = ((void*)0), filename = ((void*)0);
    DWORD size;
    UINT ret = ERROR_SUCCESS;

    component = MSI_RecordGetString(row, 2);
    dirprop = MSI_RecordGetString(row, 4);
    install_mode = MSI_RecordGetInteger(row, 5);

    comp = msi_get_loaded_component(package, component);
    if (!comp)
        return ERROR_SUCCESS;

    comp->Action = msi_get_component_action( package, comp );
    if (!verify_comp_for_removal(comp, install_mode))
    {
        TRACE("Skipping removal due to install mode\n");
        return ERROR_SUCCESS;
    }
    if (comp->assembly && !comp->assembly->application)
    {
        return ERROR_SUCCESS;
    }
    if (comp->Attributes & msidbComponentAttributesPermanent)
    {
        TRACE("permanent component, not removing file\n");
        return ERROR_SUCCESS;
    }

    dir = msi_dup_property(package->db, dirprop);
    if (!dir)
    {
        WARN("directory property has no value\n");
        return ERROR_SUCCESS;
    }
    size = 0;
    if ((filename = strdupW( MSI_RecordGetString(row, 3) )))
    {
        msi_reduce_to_long_filename( filename );
        size = lstrlenW( filename );
    }
    size += lstrlenW(dir) + 2;
    path = msi_alloc(size * sizeof(WCHAR));
    if (!path)
    {
        ret = ERROR_OUTOFMEMORY;
        goto done;
    }

    if (filename)
    {
        lstrcpyW(path, dir);
        PathAddBackslashW(path);
        lstrcatW(path, filename);

        TRACE("Deleting misc file: %s\n", debugstr_w(path));
        DeleteFileW(path);
    }
    else
    {
        TRACE("Removing misc directory: %s\n", debugstr_w(dir));
        RemoveDirectoryW(dir);
    }

done:
    uirow = MSI_CreateRecord( 9 );
    MSI_RecordSetStringW( uirow, 1, MSI_RecordGetString(row, 1) );
    MSI_RecordSetStringW( uirow, 9, dir );
    MSI_ProcessMessage(package, INSTALLMESSAGE_ACTIONDATA, uirow);
    msiobj_release( &uirow->hdr );

    msi_free(filename);
    msi_free(path);
    msi_free(dir);
    return ret;
}
