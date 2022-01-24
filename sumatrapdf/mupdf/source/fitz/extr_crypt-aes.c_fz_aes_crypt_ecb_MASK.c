#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {unsigned long* rk; int nr; } ;
typedef  TYPE_1__ aes_context ;
typedef  size_t Y3 ;
typedef  size_t Y2 ;
typedef  size_t Y1 ;
typedef  size_t Y0 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long,unsigned long) ; 
 int* FSb ; 
 int FZ_AES_DECRYPT ; 
 int /*<<< orphan*/  FUNC2 (unsigned long,unsigned char const*,int) ; 
 int /*<<< orphan*/  PADLOCK_ACE ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,unsigned char*,int) ; 
 int* RSb ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int,unsigned char const*,unsigned char*) ; 

void FUNC6( aes_context *ctx,
	int mode,
	const unsigned char input[16],
	unsigned char output[16] )
{
	int i;
	unsigned long *RK, X0, X1, X2, X3, Y0, Y1, Y2, Y3;

#if defined(XYSSL_PADLOCK_C) && defined(XYSSL_HAVE_X86)
	if( padlock_supports( PADLOCK_ACE ) )
	{
		if( padlock_xcryptecb( ctx, mode, input, output ) == 0 )
			return;
	}
#endif

	RK = ctx->rk;

	FUNC2( X0, input, 0 ); X0 ^= *RK++;
	FUNC2( X1, input, 4 ); X1 ^= *RK++;
	FUNC2( X2, input, 8 ); X2 ^= *RK++;
	FUNC2( X3, input, 12 ); X3 ^= *RK++;

	if( mode == FZ_AES_DECRYPT )
	{
		for( i = (ctx->nr >> 1) - 1; i > 0; i-- )
		{
			FUNC1( Y0, Y1, Y2, Y3, X0, X1, X2, X3 );
			FUNC1( X0, X1, X2, X3, Y0, Y1, Y2, Y3 );
		}

		FUNC1( Y0, Y1, Y2, Y3, X0, X1, X2, X3 );

		X0 = *RK++ ^ ( RSb[ ( Y0 ) & 0xFF ] ) ^
			( RSb[ ( Y3 >> 8 ) & 0xFF ] << 8 ) ^
			( RSb[ ( Y2 >> 16 ) & 0xFF ] << 16 ) ^
			( RSb[ ( Y1 >> 24 ) & 0xFF ] << 24 );

		X1 = *RK++ ^ ( RSb[ ( Y1 ) & 0xFF ] ) ^
			( RSb[ ( Y0 >>8 ) & 0xFF ] << 8 ) ^
			( RSb[ ( Y3 >> 16 ) & 0xFF ] << 16 ) ^
			( RSb[ ( Y2 >> 24 ) & 0xFF ] << 24 );

		X2 = *RK++ ^ ( RSb[ ( Y2 ) & 0xFF ] ) ^
			( RSb[ ( Y1 >> 8 ) & 0xFF ] << 8 ) ^
			( RSb[ ( Y0 >> 16 ) & 0xFF ] << 16 ) ^
			( RSb[ ( Y3 >> 24 ) & 0xFF ] << 24 );

		X3 = *RK ^ ( RSb[ ( Y3 ) & 0xFF ] ) ^
			( RSb[ ( Y2 >> 8 ) & 0xFF ] << 8 ) ^
			( RSb[ ( Y1 >> 16 ) & 0xFF ] << 16 ) ^
			( RSb[ ( Y0 >> 24 ) & 0xFF ] << 24 );
	}
	else /* FZ_AES_ENCRYPT */
	{
		for( i = (ctx->nr >> 1) - 1; i > 0; i-- )
		{
			FUNC0( Y0, Y1, Y2, Y3, X0, X1, X2, X3 );
			FUNC0( X0, X1, X2, X3, Y0, Y1, Y2, Y3 );
		}

		FUNC0( Y0, Y1, Y2, Y3, X0, X1, X2, X3 );

		X0 = *RK++ ^ ( FSb[ ( Y0 ) & 0xFF ] ) ^
			( FSb[ ( Y1 >> 8 ) & 0xFF ] << 8 ) ^
			( FSb[ ( Y2 >> 16 ) & 0xFF ] << 16 ) ^
			( FSb[ ( Y3 >> 24 ) & 0xFF ] << 24 );

		X1 = *RK++ ^ ( FSb[ ( Y1 ) & 0xFF ] ) ^
			( FSb[ ( Y2 >> 8 ) & 0xFF ] << 8 ) ^
			( FSb[ ( Y3 >> 16 ) & 0xFF ] << 16 ) ^
			( FSb[ ( Y0 >> 24 ) & 0xFF ] << 24 );

		X2 = *RK++ ^ ( FSb[ ( Y2 ) & 0xFF ] ) ^
			( FSb[ ( Y3 >> 8 ) & 0xFF ] << 8 ) ^
			( FSb[ ( Y0 >> 16 ) & 0xFF ] << 16 ) ^
			( FSb[ ( Y1 >> 24 ) & 0xFF ] << 24 );

		X3 = *RK ^ ( FSb[ ( Y3 ) & 0xFF ] ) ^
			( FSb[ ( Y0 >> 8 ) & 0xFF ] << 8 ) ^
			( FSb[ ( Y1 >> 16 ) & 0xFF ] << 16 ) ^
			( FSb[ ( Y2 >> 24 ) & 0xFF ] << 24 );
	}

	FUNC3( X0, output, 0 );
	FUNC3( X1, output, 4 );
	FUNC3( X2, output, 8 );
	FUNC3( X3, output, 12 );
}