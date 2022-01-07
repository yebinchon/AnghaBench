
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct handle_wrapper {scalar_t__ size; int lock; int hglobal; } ;
typedef scalar_t__ ULONG ;


 int EnterCriticalSection (int *) ;
 void* GlobalLock (int ) ;
 int GlobalUnlock (int ) ;
 int LeaveCriticalSection (int *) ;
 int WARN (char*,int ) ;
 int memcpy (void*,char*,scalar_t__) ;
 scalar_t__ min (scalar_t__,scalar_t__) ;

__attribute__((used)) static ULONG handle_read(struct handle_wrapper *handle, ULONG *pos, void *dest, ULONG len)
{
    void *source;

    EnterCriticalSection(&handle->lock);

    if (*pos < handle->size)
        len = min(handle->size - *pos, len);
    else
        len = 0;

    source = GlobalLock(handle->hglobal);
    if (source)
    {
        memcpy(dest, (char *)source + *pos, len);
        *pos += len;
        GlobalUnlock(handle->hglobal);
    }
    else
    {
        WARN("read from invalid hglobal %p\n", handle->hglobal);
        len = 0;
    }

    LeaveCriticalSection(&handle->lock);
    return len;
}
