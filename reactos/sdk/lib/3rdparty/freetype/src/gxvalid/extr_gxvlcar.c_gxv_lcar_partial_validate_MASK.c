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
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  int /*<<< orphan*/  FT_UShort ;
typedef  scalar_t__ FT_Short ;

/* Variables and functions */
 int /*<<< orphan*/  GXV_EXIT ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  format ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC3( FT_Short       partial,
                             FT_UShort      glyph,
                             GXV_Validator  gxvalid )
  {
    FUNC1( "partial" );

    if ( FUNC0( format ) != 1 )
      goto Exit;

    FUNC2( glyph, (FT_UShort)partial, gxvalid );

  Exit:
    GXV_EXIT;
  }