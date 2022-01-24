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
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 scalar_t__ BaseTagList ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC8( FT_Bytes       table,
                     OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   table_size;

    FUNC4( BaseTagList );


    FUNC2( "Axis" );

    FUNC1( 4 );
    FUNC3( BaseTagList );

    table_size = 4;

    FUNC5( BaseTagList );
    if ( BaseTagList )
      FUNC7( table + BaseTagList, otvalid );

    /* BaseScriptList */
    FUNC6( table + FUNC0( p ), otvalid );

    OTV_EXIT;
  }