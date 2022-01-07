
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int allocated; scalar_t__ written; int data; } ;
typedef TYPE_1__ encoded_buffer ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int S_OK ;
 int heap_alloc (int const) ;
 int memset (int ,int ,int) ;

__attribute__((used)) static HRESULT init_encoded_buffer(encoded_buffer *buffer)
{
    const int initial_len = 0x1000;
    buffer->data = heap_alloc(initial_len);
    if (!buffer->data) return E_OUTOFMEMORY;

    memset(buffer->data, 0, 4);
    buffer->allocated = initial_len;
    buffer->written = 0;

    return S_OK;
}
