#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_22__   TYPE_6__ ;
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  memory; } ;
struct TYPE_22__ {TYPE_1__ root; TYPE_5__* clazz; } ;
struct TYPE_21__ {int /*<<< orphan*/  (* done_face ) (TYPE_3__*) ;scalar_t__ (* init_face ) (int /*<<< orphan*/ ,TYPE_3__*,int,int,TYPE_2__*) ;int /*<<< orphan*/  face_object_size; } ;
struct TYPE_20__ {int random_seed; int /*<<< orphan*/  stream; struct TYPE_20__* internal; int /*<<< orphan*/ * incremental_interface; int /*<<< orphan*/  face_flags; int /*<<< orphan*/  memory; TYPE_6__* driver; } ;
struct TYPE_19__ {scalar_t__ tag; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  FT_Stream ;
typedef  TYPE_2__ FT_Parameter ;
typedef  int /*<<< orphan*/  FT_Memory ;
typedef  scalar_t__ FT_Long ;
typedef  int FT_Int ;
typedef  int /*<<< orphan*/ * FT_Incremental_Interface ;
typedef  TYPE_3__* FT_Face_Internal ;
typedef  TYPE_3__* FT_Face ;
typedef  scalar_t__ FT_Error ;
typedef  TYPE_5__* FT_Driver_Class ;
typedef  TYPE_6__* FT_Driver ;
typedef  scalar_t__ FT_Bool ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FT_FACE_FLAG_EXTERNAL_STREAM ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*) ; 
 scalar_t__ FUNC3 (TYPE_3__*) ; 
 scalar_t__ FT_PARAM_TAG_INCREMENTAL ; 
 int /*<<< orphan*/  Invalid_CharMap_Handle ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (TYPE_3__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_3__*,int,int,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static FT_Error
  FUNC8( FT_Driver      driver,
             FT_Stream      *astream,
             FT_Bool        external_stream,
             FT_Long        face_index,
             FT_Int         num_params,
             FT_Parameter*  params,
             FT_Face       *aface )
  {
    FT_Memory         memory;
    FT_Driver_Class   clazz;
    FT_Face           face     = NULL;
    FT_Face_Internal  internal = NULL;

    FT_Error          error, error2;


    clazz  = driver->clazz;
    memory = driver->root.memory;

    /* allocate the face object and perform basic initialization */
    if ( FUNC0( face, clazz->face_object_size ) )
      goto Fail;

    face->driver = driver;
    face->memory = memory;
    face->stream = *astream;

    /* set the FT_FACE_FLAG_EXTERNAL_STREAM bit for FT_Done_Face */
    if ( external_stream )
      face->face_flags |= FT_FACE_FLAG_EXTERNAL_STREAM;

    if ( FUNC3( internal ) )
      goto Fail;

    face->internal = internal;

#ifdef FT_CONFIG_OPTION_INCREMENTAL
    {
      int  i;


      face->internal->incremental_interface = NULL;
      for ( i = 0; i < num_params && !face->internal->incremental_interface;
            i++ )
        if ( params[i].tag == FT_PARAM_TAG_INCREMENTAL )
          face->internal->incremental_interface =
            (FT_Incremental_Interface)params[i].data;
    }
#endif

    face->internal->random_seed = -1;

    if ( clazz->init_face )
      error = clazz->init_face( *astream,
                                face,
                                (FT_Int)face_index,
                                num_params,
                                params );
    *astream = face->stream; /* Stream may have been changed. */
    if ( error )
      goto Fail;

    /* select Unicode charmap by default */
    error2 = FUNC5( face );

    /* if no Unicode charmap can be found, FT_Err_Invalid_CharMap_Handle */
    /* is returned.                                                      */

    /* no error should happen, but we want to play safe */
    if ( error2 && FUNC1( error2, Invalid_CharMap_Handle ) )
    {
      error = error2;
      goto Fail;
    }

    *aface = face;

  Fail:
    if ( error )
    {
      FUNC4( face, memory );
      if ( clazz->done_face )
        clazz->done_face( face );
      FUNC2( internal );
      FUNC2( face );
      *aface = NULL;
    }

    return error;
  }