
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef char* gme_err_t ;
struct TYPE_2__ {int p_buffer; scalar_t__ i_buffer; } ;
typedef TYPE_1__ block_t ;


 int __MIN (int,int) ;
 int memcpy (void*,int,int) ;

__attribute__((used)) static gme_err_t ReaderBlock (void *data, void *buf, int length)
{
    block_t *block = data;

    int max = __MIN (length, (int)block->i_buffer);
    memcpy (buf, block->p_buffer, max);
    block->i_buffer -= max;
    block->p_buffer += max;
    if (max != length)
        return "short read";
    return ((void*)0);
}
