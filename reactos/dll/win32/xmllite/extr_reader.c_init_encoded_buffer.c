
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int xmlreaderinput ;
struct TYPE_3__ {int allocated; int prev_cr; scalar_t__ written; scalar_t__ cur; int data; } ;
typedef TYPE_1__ encoded_buffer ;
typedef int HRESULT ;


 int E_OUTOFMEMORY ;
 int FALSE ;
 int S_OK ;
 int memset (int ,int ,int) ;
 int readerinput_alloc (int *,int const) ;

__attribute__((used)) static HRESULT init_encoded_buffer(xmlreaderinput *input, encoded_buffer *buffer)
{
    const int initial_len = 0x2000;
    buffer->data = readerinput_alloc(input, initial_len);
    if (!buffer->data) return E_OUTOFMEMORY;

    memset(buffer->data, 0, 4);
    buffer->cur = 0;
    buffer->allocated = initial_len;
    buffer->written = 0;
    buffer->prev_cr = FALSE;

    return S_OK;
}
