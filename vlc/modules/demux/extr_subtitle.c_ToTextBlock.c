
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int psz_text; } ;
typedef TYPE_1__ subtitle_t ;
struct TYPE_7__ {int p_buffer; } ;
typedef TYPE_2__ block_t ;


 TYPE_2__* block_Alloc (size_t) ;
 int memcpy (int ,int ,size_t) ;
 int strlen (int ) ;

__attribute__((used)) static block_t *ToTextBlock( const subtitle_t *p_subtitle )
{
    block_t *p_block;
    size_t i_len = strlen( p_subtitle->psz_text ) + 1;

    if( i_len <= 1 || !(p_block = block_Alloc( i_len )) )
        return ((void*)0);

    memcpy( p_block->p_buffer, p_subtitle->psz_text, i_len );

    return p_block;
}
