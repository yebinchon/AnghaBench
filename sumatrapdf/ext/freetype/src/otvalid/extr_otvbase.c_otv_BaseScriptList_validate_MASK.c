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
typedef  int /*<<< orphan*/  OTV_Validator ;
typedef  int FT_UInt ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC5( FT_Bytes       table,
                               OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   BaseScriptCount;


    FUNC2( "BaseScriptList" );

    FUNC1( 2 );
    BaseScriptCount = FUNC0( p );

    FUNC3(( " (BaseScriptCount = %d)\n", BaseScriptCount ));

    FUNC1( BaseScriptCount * 6 );

    /* BaseScriptRecord */
    for ( ; BaseScriptCount > 0; BaseScriptCount-- )
    {
      p += 4;       /* skip BaseScriptTag */

      /* BaseScript */
      FUNC4( table + FUNC0( p ), otvalid );
    }

    OTV_EXIT;
  }