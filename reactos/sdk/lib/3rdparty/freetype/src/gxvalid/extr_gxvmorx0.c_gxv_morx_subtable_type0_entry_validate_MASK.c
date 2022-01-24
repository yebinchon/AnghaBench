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
typedef  int GXV_XStateTable_GlyphOffsetCPtr ;
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  int FT_UShort ;
typedef  int FT_Bytes ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static void
  FUNC2(
    FT_UShort                        state,
    FT_UShort                        flags,
    GXV_XStateTable_GlyphOffsetCPtr  glyphOffset_p,
    FT_Bytes                         table,
    FT_Bytes                         limit,
    GXV_Validator                    gxvalid )
  {
#ifdef GXV_LOAD_UNUSED_VARS
    FT_UShort  markFirst;
    FT_UShort  dontAdvance;
    FT_UShort  markLast;
#endif
    FT_UShort  reserved;
#ifdef GXV_LOAD_UNUSED_VARS
    FT_UShort  verb;
#endif

    FUNC0( state );
    FUNC0( glyphOffset_p );
    FUNC0( table );
    FUNC0( limit );


#ifdef GXV_LOAD_UNUSED_VARS
    markFirst   = (FT_UShort)( ( flags >> 15 ) & 1 );
    dontAdvance = (FT_UShort)( ( flags >> 14 ) & 1 );
    markLast    = (FT_UShort)( ( flags >> 13 ) & 1 );
#endif

    reserved = (FT_UShort)( flags & 0x1FF0 );
#ifdef GXV_LOAD_UNUSED_VARS
    verb     = (FT_UShort)( flags & 0x000F );
#endif

    if ( 0 < reserved )
    {
      FUNC1(( " non-zero bits found in reserved range\n" ));
      FT_INVALID_DATA;
    }
  }