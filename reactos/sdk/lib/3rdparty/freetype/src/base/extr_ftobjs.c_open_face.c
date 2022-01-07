
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


struct TYPE_18__ {int memory; } ;
struct TYPE_22__ {TYPE_1__ root; TYPE_5__* clazz; } ;
struct TYPE_21__ {int (* done_face ) (TYPE_3__*) ;scalar_t__ (* init_face ) (int ,TYPE_3__*,int,int,TYPE_2__*) ;int face_object_size; } ;
struct TYPE_20__ {int random_seed; int stream; struct TYPE_20__* internal; int * incremental_interface; int face_flags; int memory; TYPE_6__* driver; } ;
struct TYPE_19__ {scalar_t__ tag; scalar_t__ data; } ;
typedef int FT_Stream ;
typedef TYPE_2__ FT_Parameter ;
typedef int FT_Memory ;
typedef scalar_t__ FT_Long ;
typedef int FT_Int ;
typedef int * FT_Incremental_Interface ;
typedef TYPE_3__* FT_Face_Internal ;
typedef TYPE_3__* FT_Face ;
typedef scalar_t__ FT_Error ;
typedef TYPE_5__* FT_Driver_Class ;
typedef TYPE_6__* FT_Driver ;
typedef scalar_t__ FT_Bool ;


 scalar_t__ FT_ALLOC (TYPE_3__*,int ) ;
 scalar_t__ FT_ERR_NEQ (scalar_t__,int ) ;
 int FT_FACE_FLAG_EXTERNAL_STREAM ;
 int FT_FREE (TYPE_3__*) ;
 scalar_t__ FT_NEW (TYPE_3__*) ;
 scalar_t__ FT_PARAM_TAG_INCREMENTAL ;
 int Invalid_CharMap_Handle ;
 int destroy_charmaps (TYPE_3__*,int ) ;
 scalar_t__ find_unicode_charmap (TYPE_3__*) ;
 scalar_t__ stub1 (int ,TYPE_3__*,int,int,TYPE_2__*) ;
 int stub2 (TYPE_3__*) ;

__attribute__((used)) static FT_Error
  open_face( FT_Driver driver,
             FT_Stream *astream,
             FT_Bool external_stream,
             FT_Long face_index,
             FT_Int num_params,
             FT_Parameter* params,
             FT_Face *aface )
  {
    FT_Memory memory;
    FT_Driver_Class clazz;
    FT_Face face = ((void*)0);
    FT_Face_Internal internal = ((void*)0);

    FT_Error error, error2;


    clazz = driver->clazz;
    memory = driver->root.memory;


    if ( FT_ALLOC( face, clazz->face_object_size ) )
      goto Fail;

    face->driver = driver;
    face->memory = memory;
    face->stream = *astream;


    if ( external_stream )
      face->face_flags |= FT_FACE_FLAG_EXTERNAL_STREAM;

    if ( FT_NEW( internal ) )
      goto Fail;

    face->internal = internal;
    face->internal->random_seed = -1;

    if ( clazz->init_face )
      error = clazz->init_face( *astream,
                                face,
                                (FT_Int)face_index,
                                num_params,
                                params );
    *astream = face->stream;
    if ( error )
      goto Fail;


    error2 = find_unicode_charmap( face );





    if ( error2 && FT_ERR_NEQ( error2, Invalid_CharMap_Handle ) )
    {
      error = error2;
      goto Fail;
    }

    *aface = face;

  Fail:
    if ( error )
    {
      destroy_charmaps( face, memory );
      if ( clazz->done_face )
        clazz->done_face( face );
      FT_FREE( internal );
      FT_FREE( face );
      *aface = ((void*)0);
    }

    return error;
  }
