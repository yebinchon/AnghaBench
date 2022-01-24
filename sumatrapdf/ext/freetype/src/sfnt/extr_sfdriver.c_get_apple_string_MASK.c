#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ (* char_type_func ) (int /*<<< orphan*/ ) ;
struct TYPE_6__ {scalar_t__ cursor; } ;
struct TYPE_5__ {scalar_t__ stringLength; char* string; scalar_t__ stringOffset; } ;
typedef  TYPE_1__* TT_Name ;
typedef  scalar_t__ FT_UInt ;
typedef  char FT_String ;
typedef  TYPE_2__* FT_Stream ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  int /*<<< orphan*/  FT_Error ;
typedef  int /*<<< orphan*/  FT_Char ;
typedef  scalar_t__ FT_Bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FT_Err_Ok ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static char*
  FUNC7( FT_Memory       memory,
                    FT_Stream       stream,
                    TT_Name         entry,
                    char_type_func  char_type,
                    FT_Bool         report_invalid_characters )
  {
    FT_Error  error = FT_Err_Ok;

    char*       result = NULL;
    FT_String*  r;
    FT_Char*    p;
    FT_UInt     len;

    FUNC6( error );


    if ( FUNC0( result, entry->stringLength + 1 ) )
      return NULL;

    if ( FUNC4( entry->stringOffset ) ||
         FUNC1( entry->stringLength ) )
      goto get_apple_string_error;

    r = (FT_String*)result;
    p = (FT_Char*)stream->cursor;

    for ( len = entry->stringLength; len > 0; len--, p++ )
    {
      if ( char_type( *p ) )
        *r++ = *p;
      else
      {
        if ( report_invalid_characters )
          FUNC5(( "get_apple_string:"
                      " Character `%c' (0x%X) invalid in PS name string\n",
                      *p, *p ));
        break;
      }
    }
    if ( !len )
      *r = '\0';

    FUNC2();

    if ( !len )
      return result;

  get_apple_string_error:
    FUNC3( result );

    entry->stringOffset = 0;
    entry->stringLength = 0;
    FUNC3( entry->string );

    return NULL;
  }