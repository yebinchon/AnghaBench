
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * fptr_MFCreateAlignedMemoryBuffer; int * fptr_MFCreateMemoryBuffer; int * fptr_MFCreateSample; int * fptr_MFTEnumEx; int mfplat_dll; } ;
typedef TYPE_1__ MFHandle ;


 scalar_t__ GetProcAddress (int ,char*) ;
 int LoadLibrary (int ) ;
 int MFCreateAlignedMemoryBuffer ;
 int MFCreateMemoryBuffer ;
 int MFCreateSample ;
 int MFTEnumEx ;
 int TEXT (char*) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;

__attribute__((used)) static int LoadMFTLibrary(MFHandle *mf)
{

    mf->mfplat_dll = LoadLibrary(TEXT("mfplat.dll"));
    if (!mf->mfplat_dll)
        return VLC_EGENERIC;

    mf->fptr_MFTEnumEx = (void*)GetProcAddress(mf->mfplat_dll, "MFTEnumEx");
    mf->fptr_MFCreateSample = (void*)GetProcAddress(mf->mfplat_dll, "MFCreateSample");
    mf->fptr_MFCreateMemoryBuffer = (void*)GetProcAddress(mf->mfplat_dll, "MFCreateMemoryBuffer");
    mf->fptr_MFCreateAlignedMemoryBuffer = (void*)GetProcAddress(mf->mfplat_dll, "MFCreateAlignedMemoryBuffer");
    if (!mf->fptr_MFTEnumEx || !mf->fptr_MFCreateSample || !mf->fptr_MFCreateMemoryBuffer || !mf->fptr_MFCreateAlignedMemoryBuffer)
        return VLC_EGENERIC;







    return VLC_SUCCESS;
}
