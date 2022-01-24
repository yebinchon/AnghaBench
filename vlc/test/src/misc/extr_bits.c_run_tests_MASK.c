#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int uint8_t ;
struct testset {int /*<<< orphan*/  count; int /*<<< orphan*/ * data; } ;
typedef  int /*<<< orphan*/  bs_t ;
typedef  int /*<<< orphan*/  bs_byte_callbacks_t ;

/* Variables and functions */
 size_t TESTSET0 ; 
 size_t TESTSET1 ; 
 size_t TESTSET2 ; 
 size_t TESTSET_EXPGOLOMB ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int**,int) ; 
 int /*<<< orphan*/  FUNC14 (int*,int*,int) ; 
 int /*<<< orphan*/  FUNC15 (int,int) ; 

__attribute__((used)) static int FUNC16( const struct testset *p_testsets,
                      const char *psz_tag,
                      bs_byte_callbacks_t *callbacks,
                      void *cb_priv, void (*priv_init)(void *) )
{
    bs_t bs;

    FUNC3( &bs, NULL, 0 );
    FUNC15( FUNC9(&bs), 0 );
    FUNC15( FUNC4(&bs), 0 );

    FUNC3( &bs, p_testsets[TESTSET0].data, 0 );
    FUNC15( FUNC9(&bs), 0 );
    FUNC15( FUNC4(&bs), 0 );

    FUNC3( &bs, p_testsets[TESTSET0].data,
                  p_testsets[TESTSET0].count );
    FUNC15( FUNC9(&bs), 8 );
    FUNC15( FUNC4(&bs), 0 );

    FUNC10( &bs, 3 );
    FUNC15( FUNC9(&bs), 5 );
    FUNC15( FUNC4(&bs), 3 );

    FUNC3( &bs, p_testsets[TESTSET1].data,
                  p_testsets[TESTSET1].count );
    FUNC15( FUNC9(&bs), 16 );

    FUNC11( &bs, 1, 0 );
    FUNC15( FUNC9(&bs), 16 );

    FUNC6( &bs );
    FUNC15( FUNC9(&bs), 15 );
    FUNC15( FUNC4(&bs), 1 );

    FUNC5( &bs, 7 );
    FUNC15( FUNC9(&bs), 8 );
    FUNC15( FUNC4(&bs), 8 );

    FUNC6( &bs );
    FUNC15( FUNC9(&bs), 7 );
    FUNC15( FUNC4(&bs), 9 );

    FUNC0( &bs );
    FUNC15( FUNC9(&bs), 0 );
    FUNC15( FUNC4(&bs), 16 );

    FUNC3( &bs, p_testsets[TESTSET1].data,
                  p_testsets[TESTSET1].count );
    FUNC15( FUNC5(&bs, 4), 0x0A );
    FUNC15( FUNC5(&bs, 12), ((0x0A << 8) | 0x55) );

    FUNC3( &bs, p_testsets[TESTSET_EXPGOLOMB].data,
                  p_testsets[TESTSET_EXPGOLOMB].count );
    FUNC15( FUNC8(&bs), 0x09 );
    FUNC15( FUNC9(&bs), 9 );
    FUNC15( FUNC6(&bs), 1 );
    FUNC15( FUNC7(&bs), 2 );
    FUNC15( FUNC9(&bs), 3 );
    FUNC15( FUNC7(&bs), -1 );
    FUNC15( FUNC2(&bs), !0 );

    FUNC3( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    FUNC10( &bs, 24 );
    FUNC15( FUNC5( &bs, 8 ), 0xDD );
    FUNC15( FUNC5( &bs, 4 ), 0x0E );
    FUNC15( FUNC5( &bs, 8 ), 0xEF );
    FUNC15( FUNC9( &bs ), 4 );

    FUNC3( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    FUNC10( &bs, 40 );
    FUNC15( FUNC5( &bs, 8 ), 0xFF );

    FUNC3( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    FUNC10( &bs, 20 );
    FUNC15( FUNC5( &bs, 8 ), 0xCD );
    FUNC15( FUNC5( &bs, 4 ), 0x0D );
    FUNC15( FUNC5( &bs, 8 ), 0xEE );
    FUNC15( FUNC9( &bs ), 8 );

    /* */
    FUNC3( &bs, p_testsets[TESTSET2].data,
                  p_testsets[TESTSET2].count );
    for( size_t i=0; i<6*8; i++ )
    {
        FUNC15(FUNC1( &bs ), !!(i%8 == 0));
        FUNC15(FUNC9( &bs ), 6*8 - i);
        FUNC15(FUNC4( &bs ), i);
        FUNC5( &bs, 1 );
    }
    FUNC15(FUNC2( &bs ), 1);

    /* test writes */
    uint8_t buf[5] = { 0 };
    uint8_t bufok[5] = { 0x7D, 0xF7, 0xDF, 0x7D, 0xF7 };
    FUNC13( &bs, &buf, 5 );
    FUNC11(&bs, 1, 1 );
    FUNC15(buf[0], 0x80);
    FUNC11(&bs, 2, 0 );
    FUNC15(buf[0], 0x80);
    FUNC11(&bs, 1, 1 );
    FUNC15(buf[0], 0x90);

    FUNC13( &bs, &buf, 5 );
    for( size_t i=0, j=0; i<5*8; j++ )
    {
        FUNC15(FUNC1( &bs ), !!(i%8 == 0));
        FUNC15(FUNC9( &bs ), 5*8 - i);
        FUNC15(FUNC4( &bs ), i);
        FUNC11(&bs, j % 4, (i % 2) ? 0xFF >> (8 - (j % 4)) : 0 );
        i += j % 4;
    }
    FUNC15(FUNC2( &bs ), 1);
    FUNC15(!FUNC14(buf, bufok, 5), true);

    FUNC13( &bs, &buf, 5 );
    FUNC11( &bs, 1, 0 );
    FUNC12( &bs, 1 );
    FUNC15(FUNC1( &bs ), true);
    FUNC15(FUNC4( &bs ), 8);
    FUNC15(buf[0], 0x7F);
    FUNC11( &bs, 1, 1 );
    FUNC12( &bs, 0 );
    FUNC15(FUNC1( &bs ), true);
    FUNC15(FUNC4( &bs ), 16);
    FUNC15(buf[1], 0x80);

    /* overflows */
    FUNC3( &bs, p_testsets[TESTSET1].data, p_testsets[TESTSET1].count );
    FUNC5( &bs, 42 );
    FUNC15(FUNC9( &bs ), 0);
    FUNC15(FUNC4( &bs ), 16);

    FUNC3( &bs, p_testsets[TESTSET1].data, p_testsets[TESTSET1].count );
    FUNC10( &bs, 42 );
    FUNC15(FUNC9( &bs ), 0);
    FUNC15(FUNC4( &bs ), 16);

    FUNC3( &bs, p_testsets[TESTSET1].data, p_testsets[TESTSET1].count );
    FUNC10( &bs, 8 );
    FUNC15(FUNC9( &bs ), 8);
    FUNC15(FUNC4( &bs ), 8);
    FUNC15(FUNC5( &bs, 8 + 2 ), 0x55 << 2);
    FUNC15(FUNC9( &bs ), 0);
    FUNC15(FUNC4( &bs ), 16);

    return 0;
}