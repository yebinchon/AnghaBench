
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ names; } ;
struct TYPE_9__ {scalar_t__ num_names; TYPE_1__ name_table; } ;
struct TYPE_8__ {scalar_t__ nameID; scalar_t__ stringLength; int languageID; } ;
typedef TYPE_2__* TT_Name ;
typedef TYPE_3__* TT_Face ;
typedef scalar_t__ FT_UShort ;
typedef scalar_t__ FT_Int ;
typedef int FT_Bool ;


 scalar_t__ IS_APPLE (TYPE_2__*) ;
 scalar_t__ IS_WIN (TYPE_2__*) ;

__attribute__((used)) static FT_Bool
  sfnt_get_name_id( TT_Face face,
                    FT_UShort id,
                    FT_Int *win,
                    FT_Int *apple )
  {
    FT_Int n;


    *win = -1;
    *apple = -1;

    for ( n = 0; n < face->num_names; n++ )
    {
      TT_Name name = face->name_table.names + n;


      if ( name->nameID == id && name->stringLength > 0 )
      {
        if ( IS_WIN( name ) && ( name->languageID == 0x409 || *win == -1 ) )
          *win = n;

        if ( IS_APPLE( name ) && ( name->languageID == 0 || *apple == -1 ) )
          *apple = n;
      }
    }

    return ( *win >= 0 ) || ( *apple >= 0 );
  }
