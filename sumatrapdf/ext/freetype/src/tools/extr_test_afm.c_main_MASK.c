#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_14__ {int /*<<< orphan*/  memory; } ;
struct TYPE_13__ {scalar_t__ TrackKerns; scalar_t__ KernPairs; int /*<<< orphan*/  memory; } ;
typedef  TYPE_1__ FT_StreamRec ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  TYPE_2__* FT_Library ;
typedef  int FT_Error ;
typedef  TYPE_1__ AFM_FontInfoRec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FT_Err_Ok ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int FUNC3 (TYPE_2__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int FUNC5 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  Invalid_Argument ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int FUNC8 (TYPE_2__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 

int FUNC10( int    argc,
            char** argv )
  {
    FT_Library       library;
    FT_StreamRec     stream;
    FT_Error         error = FT_Err_Ok;
    AFM_FontInfoRec  fi;


    if ( argc < 2 )
      return FUNC1( Invalid_Argument );

    error = FUNC3( &library );
    if ( error )
      return error;

    FUNC6( &stream );
    error = FUNC5( &stream, argv[1] );
    if ( error )
      goto Exit;
    stream.memory = library->memory;

    FUNC6( &fi );
    error = FUNC8( library, &stream, &fi );

    if ( !error )
    {
      FT_Memory  memory = library->memory;


      FUNC7( &fi );

      if ( fi.KernPairs )
        FUNC2( fi.KernPairs );
      if ( fi.TrackKerns )
        FUNC2( fi.TrackKerns );
    }
    else
      FUNC9( "parse error\n" );

    FUNC4( &stream );

  Exit:
    FUNC0( library );

    return error;
  }