#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int readed; } ;
struct TYPE_4__ {int size; TYPE_2__ bsc; void* buf; } ;
typedef  TYPE_1__ ScriptBSC ;
typedef  int /*<<< orphan*/  IStream ;
typedef  scalar_t__ HRESULT ;
typedef  int /*<<< orphan*/  DWORD ;
typedef  int /*<<< orphan*/  BSCallback ;

/* Variables and functions */
 scalar_t__ E_OUTOFMEMORY ; 
 scalar_t__ S_OK ; 
 void* FUNC0 (int) ; 
 void* FUNC1 (void*,int) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,void*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static HRESULT FUNC4(BSCallback *bsc, IStream *stream)
{
    ScriptBSC *This = FUNC2(bsc);
    DWORD readed;
    HRESULT hres;

    if(!This->buf) {
        This->buf = FUNC0(128);
        if(!This->buf)
            return E_OUTOFMEMORY;
        This->size = 128;
    }

    do {
        if(This->bsc.readed >= This->size) {
            void *new_buf;
            new_buf = FUNC1(This->buf, This->size << 1);
            if(!new_buf)
                return E_OUTOFMEMORY;
            This->size <<= 1;
            This->buf = new_buf;
        }

        hres = FUNC3(&This->bsc, stream, This->buf+This->bsc.readed, This->size-This->bsc.readed, &readed);
    }while(hres == S_OK);

    return S_OK;
}