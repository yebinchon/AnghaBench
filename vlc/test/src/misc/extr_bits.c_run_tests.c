
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct testset {int count; int * data; } ;
typedef int bs_t ;
typedef int bs_byte_callbacks_t ;


 size_t TESTSET0 ;
 size_t TESTSET1 ;
 size_t TESTSET2 ;
 size_t TESTSET_EXPGOLOMB ;
 int bs_align (int *) ;
 int bs_aligned (int *) ;
 int bs_eof (int *) ;
 int bs_init (int *,int *,int ) ;
 int bs_pos (int *) ;
 int bs_read (int *,int) ;
 int bs_read1 (int *) ;
 int bs_read_se (int *) ;
 int bs_read_ue (int *) ;
 int bs_remain (int *) ;
 int bs_skip (int *,int) ;
 int bs_write (int *,int,int) ;
 int bs_write_align (int *,int) ;
 int bs_write_init (int *,int**,int) ;
 int memcmp (int*,int*,int) ;
 int test_assert (int,int) ;

__attribute__((used)) static int run_tests( const struct testset *p_testsets,
                      const char *psz_tag,
                      bs_byte_callbacks_t *callbacks,
                      void *cb_priv, void (*priv_init)(void *) )
{
    bs_t bs;

    bs_init( &bs, ((void*)0), 0 );
    test_assert( bs_remain(&bs), 0 );
    test_assert( bs_pos(&bs), 0 );

    bs_init( &bs, p_testsets[TESTSET0].data, 0 );
    test_assert( bs_remain(&bs), 0 );
    test_assert( bs_pos(&bs), 0 );

    bs_init( &bs, p_testsets[TESTSET0].data,
                  p_testsets[TESTSET0].count );
    test_assert( bs_remain(&bs), 8 );
    test_assert( bs_pos(&bs), 0 );

    bs_skip( &bs, 3 );
    test_assert( bs_remain(&bs), 5 );
    test_assert( bs_pos(&bs), 3 );

    bs_init( &bs, p_testsets[TESTSET1].data,
                  p_testsets[TESTSET1].count );
    test_assert( bs_remain(&bs), 16 );

    bs_write( &bs, 1, 0 );
    test_assert( bs_remain(&bs), 16 );

    bs_read1( &bs );
    test_assert( bs_remain(&bs), 15 );
    test_assert( bs_pos(&bs), 1 );

    bs_read( &bs, 7 );
    test_assert( bs_remain(&bs), 8 );
    test_assert( bs_pos(&bs), 8 );

    bs_read1( &bs );
    test_assert( bs_remain(&bs), 7 );
    test_assert( bs_pos(&bs), 9 );

    bs_align( &bs );
    test_assert( bs_remain(&bs), 0 );
    test_assert( bs_pos(&bs), 16 );

    bs_init( &bs, p_testsets[TESTSET1].data,
                  p_testsets[TESTSET1].count );
    test_assert( bs_read(&bs, 4), 0x0A );
    test_assert( bs_read(&bs, 12), ((0x0A << 8) | 0x55) );

    bs_init( &bs, p_testsets[TESTSET_EXPGOLOMB].data,
                  p_testsets[TESTSET_EXPGOLOMB].count );
    test_assert( bs_read_ue(&bs), 0x09 );
    test_assert( bs_remain(&bs), 9 );
    test_assert( bs_read1(&bs), 1 );
    test_assert( bs_read_se(&bs), 2 );
    test_assert( bs_remain(&bs), 3 );
    test_assert( bs_read_se(&bs), -1 );
    test_assert( bs_eof(&bs), !0 );

    bs_init( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    bs_skip( &bs, 24 );
    test_assert( bs_read( &bs, 8 ), 0xDD );
    test_assert( bs_read( &bs, 4 ), 0x0E );
    test_assert( bs_read( &bs, 8 ), 0xEF );
    test_assert( bs_remain( &bs ), 4 );

    bs_init( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    bs_skip( &bs, 40 );
    test_assert( bs_read( &bs, 8 ), 0xFF );

    bs_init( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    bs_skip( &bs, 20 );
    test_assert( bs_read( &bs, 8 ), 0xCD );
    test_assert( bs_read( &bs, 4 ), 0x0D );
    test_assert( bs_read( &bs, 8 ), 0xEE );
    test_assert( bs_remain( &bs ), 8 );


    bs_init( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    for( size_t i=0; i<6*8; i++ )
    {
        test_assert(bs_aligned( &bs ), !!(i%8 == 0));
        test_assert(bs_remain( &bs ), 6*8 - i);
        test_assert(bs_pos( &bs ), i);
        bs_read( &bs, 1 );
    }
    test_assert(bs_eof( &bs ), 1);


    uint8_t buf[5] = { 0 };
    uint8_t bufok[5] = { 0x7D, 0xF7, 0xDF, 0x7D, 0xF7 };
    bs_write_init( &bs, &buf, 5 );
    bs_write(&bs, 1, 1 );
    test_assert(buf[0], 0x80);
    bs_write(&bs, 2, 0 );
    test_assert(buf[0], 0x80);
    bs_write(&bs, 1, 1 );
    test_assert(buf[0], 0x90);

    bs_write_init( &bs, &buf, 5 );
    for( size_t i=0, j=0; i<5*8; j++ )
    {
        test_assert(bs_aligned( &bs ), !!(i%8 == 0));
        test_assert(bs_remain( &bs ), 5*8 - i);
        test_assert(bs_pos( &bs ), i);
        bs_write(&bs, j % 4, (i % 2) ? 0xFF >> (8 - (j % 4)) : 0 );
        i += j % 4;
    }
    test_assert(bs_eof( &bs ), 1);
    test_assert(!memcmp(buf, bufok, 5), 1);

    bs_write_init( &bs, &buf, 5 );
    bs_write( &bs, 1, 0 );
    bs_write_align( &bs, 1 );
    test_assert(bs_aligned( &bs ), 1);
    test_assert(bs_pos( &bs ), 8);
    test_assert(buf[0], 0x7F);
    bs_write( &bs, 1, 1 );
    bs_write_align( &bs, 0 );
    test_assert(bs_aligned( &bs ), 1);
    test_assert(bs_pos( &bs ), 16);
    test_assert(buf[1], 0x80);


    bs_init( &bs, p_testsets[TESTSET1].data, p_testsets[TESTSET1].count );
    bs_read( &bs, 42 );
    test_assert(bs_remain( &bs ), 0);
    test_assert(bs_pos( &bs ), 16);

    bs_init( &bs, p_testsets[TESTSET1].data, p_testsets[TESTSET1].count );
    bs_skip( &bs, 42 );
    test_assert(bs_remain( &bs ), 0);
    test_assert(bs_pos( &bs ), 16);

    bs_init( &bs, p_testsets[TESTSET1].data, p_testsets[TESTSET1].count );
    bs_skip( &bs, 8 );
    test_assert(bs_remain( &bs ), 8);
    test_assert(bs_pos( &bs ), 8);
    test_assert(bs_read( &bs, 8 + 2 ), 0x55 << 2);
    test_assert(bs_remain( &bs ), 0);
    test_assert(bs_pos( &bs ), 16);

    return 0;
}
