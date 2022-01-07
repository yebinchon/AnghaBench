
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT_PTR ;
typedef scalar_t__ HDC ;
typedef scalar_t__ HANDLE ;
typedef int BYTE ;


 scalar_t__ CreateMetaFile (int *) ;
 scalar_t__ ERROR_SUCCESS ;
 int GDI_HANDLE_TYPE_MASK ;
 int GDI_OBJECT_TYPE_METADC ;
 scalar_t__ GetLastError () ;
 scalar_t__ GetObjectA (scalar_t__,int,int **) ;
 int SetLastError (scalar_t__) ;
 int ok (int,char*,...) ;

void
Test_MetaDC(void)
{

    HDC hMetaDC;
    BYTE buffer[1000];

    hMetaDC = CreateMetaFile(((void*)0));
    ok(hMetaDC != 0, "CreateMetaFile failed, skipping tests.\n");
    if(!hMetaDC) return;

    ok(((UINT_PTR)hMetaDC & GDI_HANDLE_TYPE_MASK) == GDI_OBJECT_TYPE_METADC, "\n");

    SetLastError(ERROR_SUCCESS);
    ok(GetObjectA((HANDLE)GDI_OBJECT_TYPE_METADC, 0, ((void*)0)) == 0, "\n");
    ok(GetObjectA((HANDLE)GDI_OBJECT_TYPE_METADC, 100, &buffer) == 0, "\n");
    ok(GetObjectA(hMetaDC, 0, ((void*)0)) == 0, "\n");
    ok(GetObjectA(hMetaDC, 1000, &buffer) == 0, "\n");
    ok(GetLastError() == ERROR_SUCCESS, "got %ld\n", GetLastError());
}
