
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HRESULT ;
typedef int * HGLOBAL ;
typedef int DWORD ;


 int E_OUTOFMEMORY ;
 int * GlobalAlloc (int ,int ) ;
 void* GlobalLock (int *) ;
 int GlobalSize (int *) ;
 int GlobalUnlock (int *) ;
 int S_FALSE ;
 int S_OK ;
 int memcpy (void*,void*,int ) ;

__attribute__((used)) static HRESULT dup_global_mem( HGLOBAL src, DWORD flags, HGLOBAL *dst )
{
    void *src_ptr, *dst_ptr;
    DWORD size;

    *dst = ((void*)0);
    if ( !src ) return S_FALSE;

    size = GlobalSize(src);

    *dst = GlobalAlloc( flags, size );
    if ( !*dst ) return E_OUTOFMEMORY;

    src_ptr = GlobalLock(src);
    dst_ptr = GlobalLock(*dst);

    memcpy(dst_ptr, src_ptr, size);

    GlobalUnlock(*dst);
    GlobalUnlock(src);

    return S_OK;
}
