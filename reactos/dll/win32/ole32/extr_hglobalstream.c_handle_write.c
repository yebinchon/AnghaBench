
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_wrapper {scalar_t__ size; int lock; scalar_t__ hglobal; } ;
typedef scalar_t__ ULONG ;
typedef scalar_t__ HGLOBAL ;


 int EnterCriticalSection (int *) ;
 int GMEM_MOVEABLE ;
 void* GlobalLock (scalar_t__) ;
 scalar_t__ GlobalReAlloc (scalar_t__,scalar_t__,int ) ;
 int GlobalUnlock (scalar_t__) ;
 int LeaveCriticalSection (int *) ;
 int WARN (char*,scalar_t__) ;
 int memcpy (char*,void const*,scalar_t__) ;

__attribute__((used)) static ULONG handle_write(struct handle_wrapper *handle, ULONG *pos, const void *source, ULONG len)
{
    void *dest;

    if (!len)
        return 0;

    EnterCriticalSection(&handle->lock);

    if (*pos + len > handle->size)
    {
        HGLOBAL hglobal = GlobalReAlloc(handle->hglobal, *pos + len, GMEM_MOVEABLE);
        if (hglobal)
        {
            handle->hglobal = hglobal;
            handle->size = *pos + len;
        }
        else
        {
            len = 0;
            goto done;
        }
    }

    dest = GlobalLock(handle->hglobal);
    if (dest)
    {
        memcpy((char *)dest + *pos, source, len);
        *pos += len;
        GlobalUnlock(handle->hglobal);
    }
    else
    {
        WARN("write to invalid hglobal %p\n", handle->hglobal);

    }

done:
    LeaveCriticalSection(&handle->lock);
    return len;
}
