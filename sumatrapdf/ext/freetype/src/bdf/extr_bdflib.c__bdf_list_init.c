
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int memory; } ;
typedef TYPE_1__ _bdf_list_t ;
typedef int FT_Memory ;


 int FT_ZERO (TYPE_1__*) ;

__attribute__((used)) static void
  _bdf_list_init( _bdf_list_t* list,
                  FT_Memory memory )
  {
    FT_ZERO( list );
    list->memory = memory;
  }
