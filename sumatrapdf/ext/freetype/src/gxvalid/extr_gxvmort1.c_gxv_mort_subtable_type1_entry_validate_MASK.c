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
struct TYPE_3__ {int ul; } ;
typedef  int /*<<< orphan*/  GXV_Validator ;
typedef  TYPE_1__* GXV_StateTable_GlyphOffsetCPtr ;
typedef  int FT_UShort ;
typedef  scalar_t__ FT_Short ;
typedef  int /*<<< orphan*/  FT_Bytes ;
typedef  int /*<<< orphan*/  FT_Byte ;

/* Variables and functions */
 int /*<<< orphan*/  FT_INVALID_DATA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
  FUNC4(
    FT_Byte                         state,
    FT_UShort                       flags,
    GXV_StateTable_GlyphOffsetCPtr  glyphOffset_p,
    FT_Bytes                        table,
    FT_Bytes                        limit,
    GXV_Validator                   gxvalid )
  {
#ifdef GXV_LOAD_UNUSED_VARS
    FT_UShort  setMark;
    FT_UShort  dontAdvance;
#endif
    FT_UShort  reserved;
    FT_Short   markOffset;
    FT_Short   currentOffset;

    FUNC0( table );
    FUNC0( limit );


#ifdef GXV_LOAD_UNUSED_VARS
    setMark       = (FT_UShort)(   flags >> 15            );
    dontAdvance   = (FT_UShort)( ( flags >> 14 ) & 1      );
#endif
    reserved      = (FT_UShort)(    flags        & 0x3FFF );

    markOffset    = (FT_Short)( glyphOffset_p->ul >> 16 );
    currentOffset = (FT_Short)( glyphOffset_p->ul       );

    if ( 0 < reserved )
    {
      FUNC2(( " non-zero bits found in reserved range\n" ));
      FUNC1( FT_INVALID_DATA );
    }

    FUNC3( markOffset,
                                                      "markOffset",
                                                      state,
                                                      gxvalid );

    FUNC3( currentOffset,
                                                      "currentOffset",
                                                      state,
                                                      gxvalid );
  }