
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VARIANT ;
typedef int IUnknown ;
typedef int IEnumVARIANT ;
typedef int IDriveCollection ;
typedef int IDrive ;
typedef scalar_t__ HRESULT ;
typedef scalar_t__ DriveTypeConst ;


 scalar_t__ Fixed ;
 scalar_t__ IDispatch_QueryInterface (int ,int *,void**) ;
 int IDriveCollection_Release (int *) ;
 scalar_t__ IDriveCollection_get__NewEnum (int *,int **) ;
 int IDrive_Release (int *) ;
 scalar_t__ IDrive_get_DriveType (int *,scalar_t__*) ;
 scalar_t__ IEnumVARIANT_Next (int *,int,int *,int *) ;
 int IEnumVARIANT_Release (int *) ;
 scalar_t__ IFileSystem3_get_Drives (int ,int **) ;
 int IID_IDrive ;
 scalar_t__ S_FALSE ;
 scalar_t__ S_OK ;
 int V_DISPATCH (int *) ;
 int VariantClear (int *) ;
 int fs3 ;
 int ok (int,char*,scalar_t__) ;

__attribute__((used)) static IDrive *get_fixed_drive(void)
{
    IDriveCollection *drives;
    IEnumVARIANT *iter;
    IDrive *drive;
    HRESULT hr;

    hr = IFileSystem3_get_Drives(fs3, &drives);
    ok(hr == S_OK, "got 0x%08x\n", hr);

    hr = IDriveCollection_get__NewEnum(drives, (IUnknown**)&iter);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    IDriveCollection_Release(drives);

    while (1) {
        DriveTypeConst type;
        VARIANT var;

        hr = IEnumVARIANT_Next(iter, 1, &var, ((void*)0));
        if (hr == S_FALSE) {
            drive = ((void*)0);
            break;
        }
        ok(hr == S_OK, "got 0x%08x\n", hr);

        hr = IDispatch_QueryInterface(V_DISPATCH(&var), &IID_IDrive, (void**)&drive);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        VariantClear(&var);

        hr = IDrive_get_DriveType(drive, &type);
        ok(hr == S_OK, "got 0x%08x\n", hr);
        if (type == Fixed)
            break;

        IDrive_Release(drive);
    }

    IEnumVARIANT_Release(iter);
    return drive;
}
