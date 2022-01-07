
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct hxxx_helper_nal {TYPE_1__* b; } ;
struct TYPE_5__ {size_t i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 int VLC_ENOMEM ;
 int VLC_SUCCESS ;
 TYPE_1__* block_Alloc (size_t) ;
 TYPE_1__* block_TryRealloc (TYPE_1__*,int ,size_t) ;
 int memcpy (int ,int const*,size_t) ;

__attribute__((used)) static int
helper_dup_buf(struct hxxx_helper_nal *p_nal,
               const uint8_t *p_nal_buf, size_t i_nal_buf)
{
    if (!p_nal->b)
    {
        p_nal->b = block_Alloc(i_nal_buf);
        if (!p_nal->b)
            return VLC_ENOMEM;
    }
    else if (p_nal->b != ((void*)0) && i_nal_buf > p_nal->b->i_buffer)
    {
        block_t *b = block_TryRealloc(p_nal->b, 0, i_nal_buf);
        if (b == ((void*)0))
            return VLC_ENOMEM;
        p_nal->b = b;
    }
    memcpy(p_nal->b->p_buffer, p_nal_buf, i_nal_buf);
    p_nal->b->i_buffer = i_nal_buf;
    return VLC_SUCCESS;
}
