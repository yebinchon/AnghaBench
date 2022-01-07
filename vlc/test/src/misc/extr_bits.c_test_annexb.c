
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct hxxx_bsfw_ep3b_ctx_s {int dummy; } ;
struct TYPE_9__ {struct hxxx_bsfw_ep3b_ctx_s* p_priv; void* cb; } ;
typedef TYPE_1__ bs_t ;


 int ARRAY_SIZE (int const*) ;
 int bs_aligned (TYPE_1__*) ;
 int bs_eof (TYPE_1__*) ;
 int bs_init (TYPE_1__*,int const**,int) ;
 int bs_pos (TYPE_1__*) ;
 int bs_read (TYPE_1__*,int) ;
 int bs_remain (TYPE_1__*) ;
 int bs_skip (TYPE_1__*,int) ;
 void* hxxx_bsfw_ep3b_callbacks ;
 int hxxx_bsfw_ep3b_ctx_init (struct hxxx_bsfw_ep3b_ctx_s*) ;
 int test_assert (int ,int) ;

__attribute__((used)) static int test_annexb( const char *psz_tag )
{
    const uint8_t annexb[] = { 0xFF, 0x00, 0x00, 0x03, 0x01, 0xFF,
                               0x03, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x03 };
    const uint8_t unesc[] = { 0xFF, 0x00, 0x00, 0x01, 0xFF,
                               0x03, 0x00, 0x00, 0x02, 0x00, 0x00, 0x03 };

    bs_t bs;
    struct hxxx_bsfw_ep3b_ctx_s bsctx;
    bs_init( &bs, &annexb, ARRAY_SIZE(annexb) );
    hxxx_bsfw_ep3b_ctx_init( &bsctx );
    bs.cb = hxxx_bsfw_ep3b_callbacks;
    bs.p_priv = &bsctx;
    for( size_t i=0; i<ARRAY_SIZE(unesc)*8; i++ )
    {
        test_assert(bs_aligned( &bs ), !!(i%8 == 0));
        test_assert(bs_remain( &bs ), ARRAY_SIZE(unesc)*8 - i);
        test_assert(bs_pos( &bs ), i);
        bs_read( &bs, 1 );
    }
    test_assert(bs_eof( &bs ), 1);

    bs_init( &bs, &annexb, ARRAY_SIZE(annexb) );
    hxxx_bsfw_ep3b_ctx_init( &bsctx );
    bs.cb = hxxx_bsfw_ep3b_callbacks;
    bs.p_priv = &bsctx;
    for( size_t i=0; i<ARRAY_SIZE(unesc)*4; i++ )
    {
        test_assert(bs_remain( &bs ), ARRAY_SIZE(unesc)*8 - i*2);
        test_assert(bs_pos( &bs ), i*2);
        bs_read( &bs, 2 );
    }
    test_assert(bs_eof( &bs ), 1);


    bs_init( &bs, &annexb, ARRAY_SIZE(annexb) );
    bs_skip( &bs, (ARRAY_SIZE(annexb) + 1) * 8 );
    test_assert(bs_remain( &bs ), 0);
    test_assert(bs_pos( &bs ), ARRAY_SIZE(annexb) * 8);

    return 0;
}
