
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct output_stream {TYPE_1__ gif_block; int out; } ;


 scalar_t__ IStream_Write (int ,TYPE_1__*,int,int *) ;
 scalar_t__ S_OK ;

__attribute__((used)) static int flush_output_data(void *user_ptr)
{
    struct output_stream *out = user_ptr;

    if (out->gif_block.len)
    {
        if (IStream_Write(out->out, &out->gif_block, out->gif_block.len + sizeof(out->gif_block.len), ((void*)0)) != S_OK)
            return 0;
    }


    out->gif_block.len = 0;
    return IStream_Write(out->out, &out->gif_block, sizeof(out->gif_block.len), ((void*)0)) == S_OK;
}
