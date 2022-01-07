
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int names; int stream; } ;
struct TYPE_8__ {int memory; } ;
struct TYPE_10__ {char const* postscript_name; TYPE_2__ name_table; TYPE_1__ root; scalar_t__ blend; } ;
typedef TYPE_3__* TT_Face ;
typedef int FT_Int ;


 int FT_FACE (TYPE_3__*) ;
 scalar_t__ FT_IS_NAMED_INSTANCE (int ) ;
 scalar_t__ FT_IS_VARIATION (int ) ;
 int TT_NAME_ID_PS_NAME ;
 char* get_apple_string (int ,int ,int,int ,int) ;
 char* get_win_string (int ,int ,int,int ,int) ;
 int sfnt_get_name_id (TYPE_3__*,int ,int*,int*) ;
 char const* sfnt_get_var_ps_name (TYPE_3__*) ;
 int sfnt_is_postscript ;

__attribute__((used)) static const char*
  sfnt_get_ps_name( TT_Face face )
  {
    FT_Int found, win, apple;
    const char* result = ((void*)0);


    if ( face->postscript_name )
      return face->postscript_name;
    found = sfnt_get_name_id( face, TT_NAME_ID_PS_NAME, &win, &apple );
    if ( !found )
      return ((void*)0);


    if ( win != -1 )
      result = get_win_string( face->root.memory,
                               face->name_table.stream,
                               face->name_table.names + win,
                               sfnt_is_postscript,
                               1 );
    else
      result = get_apple_string( face->root.memory,
                                 face->name_table.stream,
                                 face->name_table.names + apple,
                                 sfnt_is_postscript,
                                 1 );

    face->postscript_name = result;

    return result;
  }
