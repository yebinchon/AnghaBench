#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct DictionaryClosure {int bytesWritten; void* hr; } ;
typedef  int /*<<< orphan*/  propid ;
typedef  int /*<<< orphan*/  keyLen ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_2__ {scalar_t__ codePage; int /*<<< orphan*/  stm; } ;
typedef  TYPE_1__ PropertyStorage_impl ;
typedef  int /*<<< orphan*/  LPCWSTR ;
typedef  int /*<<< orphan*/  LPCSTR ;
typedef  int /*<<< orphan*/  LPBYTE ;
typedef  int DWORD ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 scalar_t__ CP_UNICODE ; 
 scalar_t__ FUNC0 (void*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ *) ; 
 void* FUNC2 (int /*<<< orphan*/ ,void const*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (void const*) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int FUNC8 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static BOOL FUNC9(const void *key,
 const void *value, void *extra, void *closure)
{
    PropertyStorage_impl *This = extra;
    struct DictionaryClosure *c = closure;
    DWORD propid;
    ULONG count;

    FUNC6(key);
    FUNC6(closure);
    FUNC5((LPBYTE)&propid, 0, FUNC3(value));
    c->hr = FUNC1(This->stm, &propid, sizeof(propid), &count);
    if (FUNC0(c->hr))
        goto end;
    c->bytesWritten += sizeof(DWORD);
    if (This->codePage == CP_UNICODE)
    {
        DWORD keyLen, pad = 0;

        FUNC5((LPBYTE)&keyLen, 0,
         (FUNC7((LPCWSTR)key) + 1) * sizeof(WCHAR));
        c->hr = FUNC1(This->stm, &keyLen, sizeof(keyLen), &count);
        if (FUNC0(c->hr))
            goto end;
        c->bytesWritten += sizeof(DWORD);
        c->hr = FUNC2(This->stm, key, keyLen,
         &count);
        if (FUNC0(c->hr))
            goto end;
        c->bytesWritten += keyLen * sizeof(WCHAR);
        if (keyLen % sizeof(DWORD))
        {
            c->hr = FUNC1(This->stm, &pad,
             sizeof(DWORD) - keyLen % sizeof(DWORD), &count);
            if (FUNC0(c->hr))
                goto end;
            c->bytesWritten += sizeof(DWORD) - keyLen % sizeof(DWORD);
        }
    }
    else
    {
        DWORD keyLen;

        FUNC5((LPBYTE)&keyLen, 0, FUNC8((LPCSTR)key) + 1);
        c->hr = FUNC1(This->stm, &keyLen, sizeof(keyLen), &count);
        if (FUNC0(c->hr))
            goto end;
        c->bytesWritten += sizeof(DWORD);
        c->hr = FUNC1(This->stm, key, keyLen, &count);
        if (FUNC0(c->hr))
            goto end;
        c->bytesWritten += keyLen;
    }
end:
    return FUNC4(c->hr);
}