
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ (* pf_read ) (TYPE_1__*,int ,scalar_t__) ;TYPE_3__* (* pf_block ) (TYPE_1__*,int*) ;} ;
typedef TYPE_1__ stream_t ;
struct TYPE_12__ {int eof; int offset; TYPE_3__* block; TYPE_3__* peek; } ;
typedef TYPE_2__ stream_priv_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_13__ {scalar_t__ i_buffer; int p_buffer; } ;
typedef TYPE_3__ block_t ;


 TYPE_3__* block_Alloc (int) ;
 int block_Release (TYPE_3__*) ;
 TYPE_3__* stub1 (TYPE_1__*,int*) ;
 scalar_t__ stub2 (TYPE_1__*,int ,scalar_t__) ;
 scalar_t__ unlikely (int ) ;
 scalar_t__ vlc_killed () ;

block_t *vlc_stream_ReadBlock(stream_t *s)
{
    stream_priv_t *priv = (stream_priv_t *)s;
    block_t *block;

    if (vlc_killed())
    {
        priv->eof = 1;
        return ((void*)0);
    }

    if (priv->peek != ((void*)0))
    {
        block = priv->peek;
        priv->peek = ((void*)0);
    }
    else if (priv->block != ((void*)0))
    {
        block = priv->block;
        priv->block = ((void*)0);
    }
    else if (s->pf_block != ((void*)0))
    {
        priv->eof = 0;
        block = s->pf_block(s, &priv->eof);
    }
    else
    {
        block = block_Alloc(4096);
        if (unlikely(block == ((void*)0)))
            return ((void*)0);

        ssize_t ret = s->pf_read(s, block->p_buffer, block->i_buffer);
        if (ret > 0)
            block->i_buffer = ret;
        else
        {
            block_Release(block);
            block = ((void*)0);
        }

        priv->eof = !ret;
    }

    if (block != ((void*)0))
        priv->offset += block->i_buffer;

    return block;
}
