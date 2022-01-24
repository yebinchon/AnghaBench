#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct hxxx_bsfw_ep3b_ctx_s {int dummy; } ;
struct TYPE_9__ {struct hxxx_bsfw_ep3b_ctx_s* p_priv; void* cb; } ;
typedef  TYPE_1__ bs_t ;

/* Variables and functions */
 int FUNC0 (int const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int const**,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int) ; 
 void* hxxx_bsfw_ep3b_callbacks ; 
 int /*<<< orphan*/  FUNC8 (struct hxxx_bsfw_ep3b_ctx_s*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC10( const char *psz_tag )
{
    const uint8_t annexb[] = { 0xFF, 0x00, 0x00, 0x03, 0x01, 0xFF,
                               0x03, 0x00, 0x00, 0x03, 0x02, 0x00, 0x00, 0x03 };
    const uint8_t unesc[]  = { 0xFF, 0x00, 0x00,       0x01, 0xFF,
                               0x03, 0x00, 0x00,       0x02, 0x00, 0x00, 0x03 };

    bs_t bs;
    struct hxxx_bsfw_ep3b_ctx_s bsctx;
    FUNC3( &bs, &annexb, FUNC0(annexb) );
    FUNC8( &bsctx );
    bs.cb = hxxx_bsfw_ep3b_callbacks;
    bs.p_priv = &bsctx;
    for( size_t i=0; i<FUNC0(unesc)*8; i++ )
    {
        FUNC9(FUNC1( &bs ), !!(i%8 == 0));
        FUNC9(FUNC6( &bs ), FUNC0(unesc)*8 - i);
        FUNC9(FUNC4( &bs ), i);
        FUNC5( &bs, 1 );
    }
    FUNC9(FUNC2( &bs ), 1);

    FUNC3( &bs, &annexb, FUNC0(annexb) );
    FUNC8( &bsctx );
    bs.cb = hxxx_bsfw_ep3b_callbacks;
    bs.p_priv = &bsctx;
    for( size_t i=0; i<FUNC0(unesc)*4; i++ )
    {
        FUNC9(FUNC6( &bs ), FUNC0(unesc)*8 - i*2);
        FUNC9(FUNC4( &bs ), i*2);
        FUNC5( &bs, 2 );
    }
    FUNC9(FUNC2( &bs ), 1);

    /* overflows */
    FUNC3( &bs, &annexb, FUNC0(annexb) );
    FUNC7( &bs, (FUNC0(annexb) + 1) * 8 );
    FUNC9(FUNC6( &bs ), 0);
    FUNC9(FUNC4( &bs ), FUNC0(annexb) * 8);

    return 0;
}