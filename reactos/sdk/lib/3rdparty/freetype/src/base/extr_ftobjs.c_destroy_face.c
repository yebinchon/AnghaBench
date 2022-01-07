
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_17__ {TYPE_4__* clazz; } ;
struct TYPE_16__ {int (* done_face ) (TYPE_3__*) ;} ;
struct TYPE_14__ {int (* finalizer ) (TYPE_3__*) ;} ;
struct TYPE_13__ {int data; int (* finalizer ) (int ) ;} ;
struct TYPE_15__ {int face_flags; struct TYPE_15__* internal; int * stream; TYPE_2__ generic; int * size; int sizes_list; scalar_t__ glyph; TYPE_1__ autohint; } ;
typedef int FT_Memory ;
typedef int FT_List_Destructor ;
typedef TYPE_3__* FT_Face ;
typedef TYPE_4__* FT_Driver_Class ;
typedef TYPE_5__* FT_Driver ;


 int FT_Done_GlyphSlot (scalar_t__) ;
 int FT_FACE_FLAG_EXTERNAL_STREAM ;
 int FT_FREE (TYPE_3__*) ;
 int FT_List_Finalize (int *,int ,int ,TYPE_5__*) ;
 int FT_Stream_Free (int *,int) ;
 int destroy_charmaps (TYPE_3__*,int ) ;
 scalar_t__ destroy_size ;
 int stub1 (int ) ;
 int stub2 (TYPE_3__*) ;
 int stub3 (TYPE_3__*) ;

__attribute__((used)) static void
  destroy_face( FT_Memory memory,
                FT_Face face,
                FT_Driver driver )
  {
    FT_Driver_Class clazz = driver->clazz;



    if ( face->autohint.finalizer )
      face->autohint.finalizer( face->autohint.data );



    while ( face->glyph )
      FT_Done_GlyphSlot( face->glyph );


    FT_List_Finalize( &face->sizes_list,
                      (FT_List_Destructor)destroy_size,
                      memory,
                      driver );
    face->size = ((void*)0);


    if ( face->generic.finalizer )
      face->generic.finalizer( face );


    destroy_charmaps( face, memory );


    if ( clazz->done_face )
      clazz->done_face( face );


    FT_Stream_Free(
      face->stream,
      ( face->face_flags & FT_FACE_FLAG_EXTERNAL_STREAM ) != 0 );

    face->stream = ((void*)0);


    if ( face->internal )
    {
      FT_FREE( face->internal );
    }
    FT_FREE( face );
  }
