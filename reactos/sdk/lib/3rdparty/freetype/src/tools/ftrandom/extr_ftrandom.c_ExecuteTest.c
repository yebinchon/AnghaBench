
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int num_faces; } ;
typedef int FT_Library ;
typedef TYPE_1__* FT_Face ;


 int FT_Done_Face (TYPE_1__*) ;
 int FT_Done_FreeType (int ) ;
 scalar_t__ FT_Init_FreeType (int *) ;
 scalar_t__ FT_New_Face (int ,char*,long,TYPE_1__**) ;
 int TestFace (TYPE_1__*) ;
 int exit (int) ;
 int fprintf (int ,char*) ;
 int stderr ;

__attribute__((used)) static void
  ExecuteTest( char* testfont )
  {
    FT_Library context;
    FT_Face face;


    if ( FT_Init_FreeType( &context ) )
    {
      fprintf( stderr, "Can't initialize FreeType.\n" );
      exit( 1 );
    }

    if ( FT_New_Face( context, testfont, 0, &face ) )
    {

      exit( 0 );
    }

    if ( face->num_faces == 1 )
      TestFace( face );
    else
    {
      long i, num;


      num = face->num_faces;
      FT_Done_Face( face );

      for ( i = 0; i < num; i++ )
      {
        if ( !FT_New_Face( context, testfont, i, &face ) )
          TestFace( face );
      }
    }

    FT_Done_FreeType( context );

    exit( 0 );
  }
