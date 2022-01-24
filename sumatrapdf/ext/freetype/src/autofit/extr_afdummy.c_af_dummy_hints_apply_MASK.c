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
typedef  int /*<<< orphan*/  FT_UInt ;
typedef  int /*<<< orphan*/  FT_Outline ;
typedef  int /*<<< orphan*/  FT_Error ;
typedef  int /*<<< orphan*/  AF_StyleMetrics ;
typedef  int /*<<< orphan*/  AF_GlyphHints ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static FT_Error
  FUNC3( FT_UInt          glyph_index,
                        AF_GlyphHints    hints,
                        FT_Outline*      outline,
                        AF_StyleMetrics  metrics )
  {
    FT_Error  error;

    FUNC0( glyph_index );
    FUNC0( metrics );


    error = FUNC1( hints, outline );
    if ( !error )
      FUNC2( hints, outline );

    return error;
  }