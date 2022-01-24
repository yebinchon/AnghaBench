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
typedef  int FT_ULong ;
typedef  int FT_UInt32 ;
typedef  int FT_UInt ;
typedef  int /*<<< orphan*/  FT_Stream ;
typedef  int /*<<< orphan*/  FT_Error ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 () ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static FT_UInt32
  FUNC4( FT_Stream  stream,
                          FT_ULong   length )
  {
    FT_Error   error;
    FT_UInt32  checksum = 0;
    FT_UInt    i;


    if ( FUNC0( length ) )
      return 0;

    for ( ; length > 3; length -= 4 )
      checksum += (FT_UInt32)FUNC3();

    for ( i = 3; length > 0; length--, i-- )
      checksum += (FT_UInt32)FUNC2() << ( i * 8 );

    FUNC1();

    return checksum;
  }