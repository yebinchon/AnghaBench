
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int i_buffer; int p_buffer; } ;
typedef TYPE_1__ block_t ;


 TYPE_1__* block_Alloc (int ) ;
 int memcpy (int ,char const*,int ) ;
 int strlen (char const*) ;

__attribute__((used)) static block_t *BlockString( const char *psz )
{
    block_t *p = block_Alloc( strlen(psz) );
    if( p )
        memcpy( p->p_buffer, psz, p->i_buffer );
    return p;
}
