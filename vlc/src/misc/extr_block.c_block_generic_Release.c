
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned char* p_start; } ;
typedef TYPE_1__ block_t ;


 int assert (int) ;
 int free (TYPE_1__*) ;

__attribute__((used)) static void block_generic_Release (block_t *block)
{

    assert (block->p_start == (unsigned char *)(block + 1));
    free (block);
}
