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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void 
FUNC5( const uint32_t SK[32], const uint8_t input[8], uint8_t output[8] ) {
	uint32_t X, Y, T;

	FUNC3( X, input, 0 );
	FUNC3( Y, input, 4 );

	FUNC1( X, Y );

	FUNC2( Y, X );  FUNC2( X, Y );
	FUNC2( Y, X );  FUNC2( X, Y );
	FUNC2( Y, X );  FUNC2( X, Y );
	FUNC2( Y, X );  FUNC2( X, Y );
	FUNC2( Y, X );  FUNC2( X, Y );
	FUNC2( Y, X );  FUNC2( X, Y );
	FUNC2( Y, X );  FUNC2( X, Y );
	FUNC2( Y, X );  FUNC2( X, Y );

	FUNC0( Y, X );

	FUNC4( Y, output, 0 );
	FUNC4( X, output, 4 );
}