#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  cursor; } ;
typedef  int FT_UShort ;
typedef  int /*<<< orphan*/  FT_ULong ;
typedef  TYPE_1__* FT_Stream ;
typedef  scalar_t__ FT_Error ;

/* Variables and functions */
 scalar_t__ FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Unknown_File_Format ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,char const*,size_t) ; 
 scalar_t__ FUNC5 (TYPE_1__*,int*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static FT_Error
  FUNC6( FT_Stream    stream,
                      const char*  header_string,
                      size_t       header_length )
  {
    FT_Error   error;
    FT_UShort  tag;
    FT_ULong   dummy;


    if ( FUNC2( 0 ) )
      goto Exit;

    error = FUNC5( stream, &tag, &dummy );
    if ( error )
      goto Exit;

    /* We assume that the first segment in a PFB is always encoded as   */
    /* text.  This might be wrong (and the specification doesn't insist */
    /* on that), but we have never seen a counterexample.               */
    if ( tag != 0x8001U && FUNC2( 0 ) )
      goto Exit;

    if ( !FUNC0( header_length ) )
    {
      error = FT_Err_Ok;

      if ( FUNC4( stream->cursor, header_string, header_length ) != 0 )
        error = FUNC3( Unknown_File_Format );

      FUNC1();
    }

  Exit:
    return error;
  }