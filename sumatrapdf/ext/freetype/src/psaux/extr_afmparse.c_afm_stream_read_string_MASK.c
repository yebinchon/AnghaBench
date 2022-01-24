#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  status; } ;
typedef  TYPE_1__* AFM_Stream ;

/* Variables and functions */
 int FUNC0 () ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 char* FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  AFM_STREAM_STATUS_EOF ; 
 int /*<<< orphan*/  AFM_STREAM_STATUS_EOL ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 

__attribute__((used)) static char*
  FUNC6( AFM_Stream  stream )
  {
    char*  str;


    FUNC5( stream );
    if ( FUNC3( stream ) )
      return NULL;

    str = FUNC4( stream );

    /* scan to eol */
    while ( 1 )
    {
      int  ch = FUNC0();


      if ( FUNC2( ch ) )
      {
        stream->status = AFM_STREAM_STATUS_EOL;
        break;
      }
      else if ( FUNC1( ch ) )
      {
        stream->status = AFM_STREAM_STATUS_EOF;
        break;
      }
    }

    return str;
  }