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

/* Variables and functions */
 int* FSb ; 
 unsigned long* FT0 ; 
 unsigned long* FT1 ; 
 unsigned long* FT2 ; 
 void** FT3 ; 
 scalar_t__ FUNC0 (int,int) ; 
 unsigned long* RCON ; 
 void* FUNC1 (unsigned long) ; 
 int* RSb ; 
 unsigned long* RT0 ; 
 unsigned long* RT1 ; 
 unsigned long* RT2 ; 
 void** RT3 ; 
 int FUNC2 (int) ; 

__attribute__((used)) static void FUNC3( void )
{
	int i, x, y, z;
	int pow[256];
	int log[256];

	/*
	 * compute pow and log tables over GF(2^8)
	 */
	for( i = 0, x = 1; i < 256; i++ )
	{
		pow[i] = x;
		log[x] = i;
		x = ( x ^ FUNC2( x ) ) & 0xFF;
	}

	/*
	 * calculate the round constants
	 */
	for( i = 0, x = 1; i < 10; i++ )
	{
		RCON[i] = (unsigned long) x;
		x = FUNC2( x ) & 0xFF;
	}

	/*
	 * generate the forward and reverse S-boxes
	 */
	FSb[0x00] = 0x63;
	RSb[0x63] = 0x00;

	for( i = 1; i < 256; i++ )
	{
		x = pow[255 - log[i]];

		y = x; y = ( (y << 1) | (y >> 7) ) & 0xFF;
		x ^= y; y = ( (y << 1) | (y >> 7) ) & 0xFF;
		x ^= y; y = ( (y << 1) | (y >> 7) ) & 0xFF;
		x ^= y; y = ( (y << 1) | (y >> 7) ) & 0xFF;
		x ^= y ^ 0x63;

		FSb[i] = (unsigned char) x;
		RSb[x] = (unsigned char) i;
	}

	/*
	 * generate the forward and reverse tables
	 */
	for( i = 0; i < 256; i++ )
	{
		x = FSb[i];
		y = FUNC2( x ) & 0xFF;
		z = ( y ^ x ) & 0xFF;

		FT0[i] = ( (unsigned long) y ) ^
		( (unsigned long) x <<	8 ) ^
		( (unsigned long) x << 16 ) ^
		( (unsigned long) z << 24 );

		FT1[i] = FUNC1( FT0[i] );
		FT2[i] = FUNC1( FT1[i] );
		FT3[i] = FUNC1( FT2[i] );

		x = RSb[i];

		RT0[i] = ( (unsigned long) FUNC0( 0x0E, x ) ) ^
		( (unsigned long) FUNC0( 0x09, x ) << 8 ) ^
		( (unsigned long) FUNC0( 0x0D, x ) << 16 ) ^
		( (unsigned long) FUNC0( 0x0B, x ) << 24 );

		RT1[i] = FUNC1( RT0[i] );
		RT2[i] = FUNC1( RT1[i] );
		RT3[i] = FUNC1( RT2[i] );
	}
}