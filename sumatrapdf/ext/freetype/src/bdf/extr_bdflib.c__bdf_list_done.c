
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int field; scalar_t__ memory; } ;
typedef TYPE_1__ _bdf_list_t ;
typedef scalar_t__ FT_Memory ;


 int FT_FREE (int ) ;
 int FT_ZERO (TYPE_1__*) ;

__attribute__((used)) static void
  _bdf_list_done( _bdf_list_t* list )
  {
    FT_Memory memory = list->memory;


    if ( memory )
    {
      FT_FREE( list->field );
      FT_ZERO( list );
    }
  }
