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
typedef  int /*<<< orphan*/  GXV_kern_Dialect ;
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  int /*<<< orphan*/  FT_UShort ;

/* Variables and functions */
 int /*<<< orphan*/  GXV_EXIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  KERN_DIALECT_APPLE ; 
 int /*<<< orphan*/  KERN_DIALECT_MS ; 
 int /*<<< orphan*/  KERN_DIALECT_UNKNOWN ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static GXV_kern_Dialect
  FUNC9( FT_UShort      coverage,
                              FT_UShort*     format,
                              GXV_Validator  gxvalid )
  {
    GXV_kern_Dialect  result = KERN_DIALECT_UNKNOWN;


    FUNC0( "validating coverage" );

    FUNC1(( "interpret coverage 0x%04x by Apple style\n", coverage ));

    if ( FUNC5( gxvalid ) )
    {
      if ( FUNC8( coverage,
                                                 format,
                                                 gxvalid ) )
      {
        result = KERN_DIALECT_APPLE;
        goto Exit;
      }
    }

    if ( FUNC4( gxvalid ) && FUNC2( gxvalid ) )
    {
      if ( FUNC6( coverage,
                                                     format,
                                                     gxvalid ) )
      {
        result = KERN_DIALECT_APPLE;
        goto Exit;
      }
    }

    if ( FUNC4( gxvalid ) && FUNC3( gxvalid ) )
    {
      if ( FUNC7( coverage,
                                                         format,
                                                         gxvalid ) )
      {
        result = KERN_DIALECT_MS;
        goto Exit;
      }
    }

    FUNC1(( "cannot interpret coverage, broken kern subtable\n" ));

  Exit:
    GXV_EXIT;
    return result;
  }