
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {size_t i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 size_t SIZE_MAX ;
 int memcpy (int *,int ,size_t) ;
 int * realloc (int *,size_t) ;

__attribute__((used)) static void AppendAsAnnexB(const block_t *p_block,
                           uint8_t **pp_dst, size_t *pi_dst)
{
    if(SIZE_MAX - p_block->i_buffer < *pi_dst )
        return;

    size_t i_realloc = p_block->i_buffer + *pi_dst;
    uint8_t *p_realloc = realloc(*pp_dst, i_realloc);
    if(p_realloc)
    {
        memcpy(&p_realloc[*pi_dst], p_block->p_buffer, p_block->i_buffer);
        *pi_dst = i_realloc;
        *pp_dst = p_realloc;
    }
}
