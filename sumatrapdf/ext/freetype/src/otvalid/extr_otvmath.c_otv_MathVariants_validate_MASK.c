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
typedef  int /*<<< orphan*/  FT_Int ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int HCoverage ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int Offset ; 
 int VCoverage ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC8( FT_Bytes       table,
                             OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   vcnt, hcnt, i, table_size;

    FUNC4( VCoverage );
    FUNC4( HCoverage );
    FUNC4( Offset );


    FUNC2( "MathVariants" );

    FUNC1( 10 );

    p += 2;                       /* Skip the MinConnectorOverlap constant */
    FUNC3( VCoverage );
    FUNC3( HCoverage );
    vcnt = FUNC0( p );
    hcnt = FUNC0( p );

    FUNC1( 2 * vcnt + 2 * hcnt );
    table_size = 10 + 2 * vcnt + 2 * hcnt;

    FUNC5( VCoverage );
    if ( VCoverage )
      FUNC6( table + VCoverage, otvalid, (FT_Int)vcnt );

    FUNC5( HCoverage );
    if ( HCoverage )
      FUNC6( table + HCoverage, otvalid, (FT_Int)hcnt );

    for ( i = 0; i < vcnt; i++ )
    {
      FUNC3( Offset );
      FUNC5( Offset );
      FUNC7( table + Offset, otvalid );
    }

    for ( i = 0; i < hcnt; i++ )
    {
      FUNC3( Offset );
      FUNC5( Offset );
      FUNC7( table + Offset, otvalid );
    }

    OTV_EXIT;
  }