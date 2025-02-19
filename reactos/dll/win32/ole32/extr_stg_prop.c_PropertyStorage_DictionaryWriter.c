
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct DictionaryClosure {int bytesWritten; void* hr; } ;
typedef int propid ;
typedef int keyLen ;
typedef int WCHAR ;
typedef int ULONG ;
struct TYPE_2__ {scalar_t__ codePage; int stm; } ;
typedef TYPE_1__ PropertyStorage_impl ;
typedef int LPCWSTR ;
typedef int LPCSTR ;
typedef int LPBYTE ;
typedef int DWORD ;
typedef int BOOL ;


 scalar_t__ CP_UNICODE ;
 scalar_t__ FAILED (void*) ;
 void* IStream_Write (int ,void const*,int,int *) ;
 void* PropertStorage_WriteWStringToStream (int ,void const*,int,int *) ;
 int PtrToUlong (void const*) ;
 int SUCCEEDED (void*) ;
 int StorageUtl_WriteDWord (int ,int ,int) ;
 int assert (void*) ;
 int lstrlenW (int ) ;
 int strlen (int ) ;

__attribute__((used)) static BOOL PropertyStorage_DictionaryWriter(const void *key,
 const void *value, void *extra, void *closure)
{
    PropertyStorage_impl *This = extra;
    struct DictionaryClosure *c = closure;
    DWORD propid;
    ULONG count;

    assert(key);
    assert(closure);
    StorageUtl_WriteDWord((LPBYTE)&propid, 0, PtrToUlong(value));
    c->hr = IStream_Write(This->stm, &propid, sizeof(propid), &count);
    if (FAILED(c->hr))
        goto end;
    c->bytesWritten += sizeof(DWORD);
    if (This->codePage == CP_UNICODE)
    {
        DWORD keyLen, pad = 0;

        StorageUtl_WriteDWord((LPBYTE)&keyLen, 0,
         (lstrlenW((LPCWSTR)key) + 1) * sizeof(WCHAR));
        c->hr = IStream_Write(This->stm, &keyLen, sizeof(keyLen), &count);
        if (FAILED(c->hr))
            goto end;
        c->bytesWritten += sizeof(DWORD);
        c->hr = PropertStorage_WriteWStringToStream(This->stm, key, keyLen,
         &count);
        if (FAILED(c->hr))
            goto end;
        c->bytesWritten += keyLen * sizeof(WCHAR);
        if (keyLen % sizeof(DWORD))
        {
            c->hr = IStream_Write(This->stm, &pad,
             sizeof(DWORD) - keyLen % sizeof(DWORD), &count);
            if (FAILED(c->hr))
                goto end;
            c->bytesWritten += sizeof(DWORD) - keyLen % sizeof(DWORD);
        }
    }
    else
    {
        DWORD keyLen;

        StorageUtl_WriteDWord((LPBYTE)&keyLen, 0, strlen((LPCSTR)key) + 1);
        c->hr = IStream_Write(This->stm, &keyLen, sizeof(keyLen), &count);
        if (FAILED(c->hr))
            goto end;
        c->bytesWritten += sizeof(DWORD);
        c->hr = IStream_Write(This->stm, key, keyLen, &count);
        if (FAILED(c->hr))
            goto end;
        c->bytesWritten += keyLen;
    }
end:
    return SUCCEEDED(c->hr);
}
