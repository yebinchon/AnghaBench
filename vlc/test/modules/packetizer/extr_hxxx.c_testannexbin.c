
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int* p_buffer; size_t i_buffer; } ;
typedef TYPE_1__ block_t ;


 int assert (int) ;
 TYPE_1__* block_Alloc (size_t) ;
 int block_Release (TYPE_1__*) ;
 TYPE_1__* hxxx_AnnexB_to_xVC (TYPE_1__*,int) ;
 scalar_t__ memcmp (int*,int const*,size_t) ;
 int memcpy (int*,int const*,size_t) ;
 int printf (char*,...) ;

__attribute__((used)) static void testannexbin( const uint8_t *p_data, size_t i_data,
                          const uint8_t **pp_res, size_t *pi_res )
{
    printf("INPUT SET    : ");
    for(size_t j=0; j<i_data; j++)
        printf("0x%.2x, ", p_data[j] );
    printf("\n");

    for( unsigned int i=0; i<3; i++)
    {
        block_t *p_block = block_Alloc( i_data );
        memcpy( p_block->p_buffer, p_data, i_data );

        p_block = hxxx_AnnexB_to_xVC( p_block, 1 << i );
        printf("DUMP prefix %d: ", 1 << i);
        if( p_block )
        {
            for(size_t j=0; j<p_block->i_buffer; j++)
                printf("0x%.2x, ", p_block->p_buffer[j] );
            printf("\n");

            printf("COMPARE SET    : ");
            for(size_t j=0; j<pi_res[i]; j++)
                printf("0x%.2x, ", pp_res[i][j] );
            printf("\n");

            assert( p_block->i_buffer == pi_res[i] );
            assert( memcmp( p_block->p_buffer, pp_res[i], pi_res[i] ) == 0 );
            block_Release( p_block );
        }
        else
        {
            printf("** No output **\n");
            assert(0);
        }
    }
}
