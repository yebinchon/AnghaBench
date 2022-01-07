
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int cubeTo; int lineTo; int moveTo; int * error; int memory; } ;
struct TYPE_6__ {TYPE_1__ root; } ;
typedef int FT_Memory ;
typedef int FT_Error ;
typedef TYPE_2__* CF2_Outline ;


 int FT_ZERO (TYPE_2__*) ;
 int cf2_builder_cubeTo ;
 int cf2_builder_lineTo ;
 int cf2_builder_moveTo ;

__attribute__((used)) static void
  cf2_outline_init( CF2_Outline outline,
                    FT_Memory memory,
                    FT_Error* error )
  {
    FT_ZERO( outline );

    outline->root.memory = memory;
    outline->root.error = error;

    outline->root.moveTo = cf2_builder_moveTo;
    outline->root.lineTo = cf2_builder_lineTo;
    outline->root.cubeTo = cf2_builder_cubeTo;
  }
