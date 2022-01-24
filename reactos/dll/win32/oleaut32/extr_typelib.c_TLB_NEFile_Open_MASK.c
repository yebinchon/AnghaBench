#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * lpVtbl; } ;
struct TYPE_5__ {int refs; TYPE_2__ IUnknown_iface; int /*<<< orphan*/ * typelib_base; } ;
typedef  TYPE_1__ TLB_NEFile ;
typedef  int /*<<< orphan*/  OFSTRUCT ;
typedef  int /*<<< orphan*/  LPWSTR ;
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  scalar_t__ LPCWSTR ;
typedef  TYPE_2__ IUnknown ;
typedef  int /*<<< orphan*/  INT ;
typedef  int /*<<< orphan*/  HRESULT ;
typedef  scalar_t__ HFILE ;
typedef  int DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  E_OUTOFMEMORY ; 
 scalar_t__ IMAGE_OS2_SIGNATURE ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (scalar_t__,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OF_READ ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  TLB_NEFile_Vtable ; 
 int /*<<< orphan*/  TYPE_E_CANTLOADLIBRARY ; 
 scalar_t__ FUNC6 (scalar_t__,char*,int /*<<< orphan*/ ,int*,int*) ; 
 void* FUNC7 (int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC9(LPCWSTR path, INT index, LPVOID *ppBase, DWORD *pdwTLBLength, IUnknown **ppFile){

    HFILE lzfd = -1;
    OFSTRUCT ofs;
    HRESULT hr = TYPE_E_CANTLOADLIBRARY;
    TLB_NEFile *This;

    This = FUNC7(sizeof(TLB_NEFile));
    if (!This) return E_OUTOFMEMORY;

    This->IUnknown_iface.lpVtbl = &TLB_NEFile_Vtable;
    This->refs = 1;
    This->typelib_base = NULL;

    lzfd = FUNC1( (LPWSTR)path, &ofs, OF_READ );
    if ( lzfd >= 0 && FUNC8( lzfd ) == IMAGE_OS2_SIGNATURE )
    {
        DWORD reslen, offset;
        if( FUNC6( lzfd, "TYPELIB", FUNC4(index), &reslen, &offset ) )
        {
            This->typelib_base = FUNC7(reslen);
            if( !This->typelib_base )
                hr = E_OUTOFMEMORY;
            else
            {
                FUNC3( lzfd, offset, SEEK_SET );
                reslen = FUNC2( lzfd, This->typelib_base, reslen );
                FUNC0( lzfd );
                *ppBase = This->typelib_base;
                *pdwTLBLength = reslen;
                *ppFile = &This->IUnknown_iface;
                return S_OK;
            }
        }
    }

    if( lzfd >= 0) FUNC0( lzfd );
    FUNC5(&This->IUnknown_iface);
    return hr;
}