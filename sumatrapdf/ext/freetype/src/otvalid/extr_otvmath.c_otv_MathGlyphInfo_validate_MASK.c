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
typedef  scalar_t__ FT_UInt ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  OTV_EXIT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC6( FT_Bytes       table,
                              OTV_Validator  otvalid )
  {
    FT_Bytes  p = table;
    FT_UInt   MathItalicsCorrectionInfo, MathTopAccentAttachment;
    FT_UInt   ExtendedShapeCoverage, MathKernInfo;


    FUNC2( "MathGlyphInfo" );

    FUNC1( 8 );

    MathItalicsCorrectionInfo = FUNC0( p );
    MathTopAccentAttachment   = FUNC0( p );
    ExtendedShapeCoverage     = FUNC0( p );
    MathKernInfo              = FUNC0( p );

    if ( MathItalicsCorrectionInfo )
      FUNC4(
        table + MathItalicsCorrectionInfo, otvalid, TRUE );

    /* Italic correction and Top Accent Attachment have the same format */
    if ( MathTopAccentAttachment )
      FUNC4(
        table + MathTopAccentAttachment, otvalid, FALSE );

    if ( ExtendedShapeCoverage )
    {
      FUNC2( "ExtendedShapeCoverage" );
      FUNC3( table + ExtendedShapeCoverage, otvalid, -1 );
      OTV_EXIT;
    }

    if ( MathKernInfo )
      FUNC5( table + MathKernInfo, otvalid );

    OTV_EXIT;
  }