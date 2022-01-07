
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_wrapper {scalar_t__ size; int lock; scalar_t__ hglobal; } ;
typedef scalar_t__ ULONG ;
typedef int HRESULT ;
typedef scalar_t__ HGLOBAL ;


 int E_OUTOFMEMORY ;
 int EnterCriticalSection (int *) ;
 int GMEM_MOVEABLE ;
 scalar_t__ GlobalReAlloc (scalar_t__,scalar_t__,int ) ;
 int LeaveCriticalSection (int *) ;
 int S_OK ;

__attribute__((used)) static HRESULT handle_setsize(struct handle_wrapper *handle, ULONG size)
{
    HRESULT hr = S_OK;

    EnterCriticalSection(&handle->lock);

    if (handle->size != size)
    {
        HGLOBAL hglobal = GlobalReAlloc(handle->hglobal, size, GMEM_MOVEABLE);
        if (hglobal)
        {
            handle->hglobal = hglobal;
            handle->size = size;
        }
        else
            hr = E_OUTOFMEMORY;
    }

    LeaveCriticalSection(&handle->lock);
    return hr;
}
