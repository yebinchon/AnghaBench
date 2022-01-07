
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ IUnknown_iface; int * typelib_base; } ;
typedef TYPE_1__ TLB_NEFile ;
typedef int OFSTRUCT ;
typedef int LPWSTR ;
typedef int * LPVOID ;
typedef scalar_t__ LPCWSTR ;
typedef TYPE_2__ IUnknown ;
typedef int INT ;
typedef int HRESULT ;
typedef scalar_t__ HFILE ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 scalar_t__ IMAGE_OS2_SIGNATURE ;
 int LZClose (scalar_t__) ;
 scalar_t__ LZOpenFileW (int ,int *,int ) ;
 int LZRead (scalar_t__,int *,int) ;
 int LZSeek (scalar_t__,int,int ) ;
 int MAKEINTRESOURCEA (int ) ;
 int OF_READ ;
 int SEEK_SET ;
 int S_OK ;
 int TLB_NEFile_Release (TYPE_2__*) ;
 int TLB_NEFile_Vtable ;
 int TYPE_E_CANTLOADLIBRARY ;
 scalar_t__ find_ne_resource (scalar_t__,char*,int ,int*,int*) ;
 void* heap_alloc (int) ;
 scalar_t__ read_xx_header (scalar_t__) ;

__attribute__((used)) static HRESULT TLB_NEFile_Open(LPCWSTR path, INT index, LPVOID *ppBase, DWORD *pdwTLBLength, IUnknown **ppFile){

    HFILE lzfd = -1;
    OFSTRUCT ofs;
    HRESULT hr = TYPE_E_CANTLOADLIBRARY;
    TLB_NEFile *This;

    This = heap_alloc(sizeof(TLB_NEFile));
    if (!This) return E_OUTOFMEMORY;

    This->IUnknown_iface.lpVtbl = &TLB_NEFile_Vtable;
    This->refs = 1;
    This->typelib_base = ((void*)0);

    lzfd = LZOpenFileW( (LPWSTR)path, &ofs, OF_READ );
    if ( lzfd >= 0 && read_xx_header( lzfd ) == IMAGE_OS2_SIGNATURE )
    {
        DWORD reslen, offset;
        if( find_ne_resource( lzfd, "TYPELIB", MAKEINTRESOURCEA(index), &reslen, &offset ) )
        {
            This->typelib_base = heap_alloc(reslen);
            if( !This->typelib_base )
                hr = E_OUTOFMEMORY;
            else
            {
                LZSeek( lzfd, offset, SEEK_SET );
                reslen = LZRead( lzfd, This->typelib_base, reslen );
                LZClose( lzfd );
                *ppBase = This->typelib_base;
                *pdwTLBLength = reslen;
                *ppFile = &This->IUnknown_iface;
                return S_OK;
            }
        }
    }

    if( lzfd >= 0) LZClose( lzfd );
    TLB_NEFile_Release(&This->IUnknown_iface);
    return hr;
}
