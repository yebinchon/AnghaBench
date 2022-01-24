#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ num_locations; } ;
typedef  TYPE_1__* TT_Face ;
typedef  scalar_t__ FT_ULong ;
typedef  scalar_t__ FT_UInt ;
typedef  int /*<<< orphan*/  FT_Face ;
typedef  int /*<<< orphan*/  FT_Error ;
typedef  int /*<<< orphan*/  FT_Bool ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,scalar_t__,scalar_t__*) ; 

__attribute__((used)) static FT_Bool
  FUNC3( FT_Face  ttface )
  {
    FT_Bool   result = FALSE;

    TT_Face   face = (TT_Face)ttface;
    FT_UInt   asize;
    FT_ULong  i;
    FT_ULong  glyph_index = 0;
    FT_UInt   count       = 0;


    for( i = 0; i < face->num_locations; i++ )
    {
      FUNC2( face, i, &asize );
      if ( asize > 0 )
      {
        count += 1;
        if ( count > 1 )
          break;
        glyph_index = i;
      }
    }

    /* Only have a single outline. */
    if ( count == 1 )
    {
      if ( glyph_index == 0 )
        result = TRUE;
      else
      {
        /* FIXME: Need to test glyphname == .notdef ? */
        FT_Error error;
        char buf[8];


        error = FUNC0( ttface, glyph_index, buf, 8 );
        if ( !error                                            &&
             buf[0] == '.' && !FUNC1( buf, ".notdef", 8 ) )
          result = TRUE;
      }
    }

    return result;
  }