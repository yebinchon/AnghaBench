#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  outline; } ;
struct TYPE_8__ {unsigned int num_glyphs; TYPE_4__* glyph; } ;
typedef  TYPE_1__* FT_Face ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 scalar_t__ FUNC1 (TYPE_1__*) ; 
 int FT_LOAD_DEFAULT ; 
 int FT_LOAD_NO_BITMAP ; 
 int FT_LOAD_NO_HINTING ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ check_outlines ; 
 int /*<<< orphan*/  font_size ; 
 int /*<<< orphan*/  ft_render_mode_normal ; 
 scalar_t__ nohints ; 
 int /*<<< orphan*/  outlinefuncs ; 
 scalar_t__ rasterize ; 

__attribute__((used)) static void
  FUNC6( FT_Face  face )
  {
    unsigned int  gid;
    int           load_flags = FT_LOAD_DEFAULT;


    if ( check_outlines         &&
         FUNC1( face ) )
      load_flags = FT_LOAD_NO_BITMAP;

    if ( nohints )
      load_flags |= FT_LOAD_NO_HINTING;

    FUNC5( face, 0, font_size, 72, 72 );

    for ( gid = 0; gid < face->num_glyphs; gid++ )
    {
      if ( check_outlines         &&
           FUNC1( face ) )
      {
        if ( !FUNC2( face, gid, load_flags ) )
          FUNC3( &face->glyph->outline, &outlinefuncs, NULL );
      }
      else
        FUNC2( face, gid, load_flags );

      if ( rasterize )
        FUNC4( face->glyph, ft_render_mode_normal );
    }

    FUNC0( face );
  }