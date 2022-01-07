
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LONG ;
typedef int IDrive ;
typedef int * HRESULT ;
typedef int * BSTR ;


 int * E_POINTER ;
 int IDrive_Release (int *) ;
 int * IDrive_get_FileSystem (int *,int **) ;
 int * IDrive_get_SerialNumber (int *,int*) ;
 int * IDrive_get_VolumeName (int *,int **) ;
 int * S_OK ;
 int SysFreeString (int *) ;
 int * get_fixed_drive () ;
 int ok (int,char*,int) ;
 int skip (char*) ;

__attribute__((used)) static void test_SerialNumber(void)
{
    IDrive *drive;
    LONG serial;
    HRESULT hr;
    BSTR name;

    drive = get_fixed_drive();
    if (!drive) {
        skip("No fixed drive found, skipping test.\n");
        return;
    }

    hr = IDrive_get_SerialNumber(drive, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    serial = 0xdeadbeef;
    hr = IDrive_get_SerialNumber(drive, &serial);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(serial != 0xdeadbeef, "got %x\n", serial);

    hr = IDrive_get_FileSystem(drive, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    name = ((void*)0);
    hr = IDrive_get_FileSystem(drive, &name);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(name != ((void*)0), "got %p\n", name);
    SysFreeString(name);

    hr = IDrive_get_VolumeName(drive, ((void*)0));
    ok(hr == E_POINTER, "got 0x%08x\n", hr);

    name = ((void*)0);
    hr = IDrive_get_VolumeName(drive, &name);
    ok(hr == S_OK, "got 0x%08x\n", hr);
    ok(name != ((void*)0), "got %p\n", name);
    SysFreeString(name);

    IDrive_Release(drive);
}
