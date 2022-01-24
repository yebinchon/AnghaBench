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
typedef  int FT_UShort ;
typedef  scalar_t__ FT_Bytes ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

__attribute__((used)) static void
  FUNC3( FT_UShort      table_index,
                                               FT_UShort      count,
                                               FT_Bytes       table,
                                               FT_Bytes       limit,
                                               GXV_Validator  gxvalid )
  {
    FT_Bytes  p = table + table_index * 2;


#ifndef GXV_LOAD_TRACE_VARS
    FUNC1( count * 2 );
#else
    while ( p < table + count * 2 + table_index * 2 )
    {
      FT_UShort  insert_glyphID;


      GXV_LIMIT_CHECK( 2 );
      insert_glyphID = FT_NEXT_USHORT( p );
      GXV_TRACE(( " 0x%04x", insert_glyphID ));
    }

    GXV_TRACE(( "\n" ));
#endif
  }