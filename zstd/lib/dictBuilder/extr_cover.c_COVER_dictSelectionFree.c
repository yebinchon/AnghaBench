
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dictContent; } ;
typedef TYPE_1__ COVER_dictSelection_t ;


 int free (int ) ;

void COVER_dictSelectionFree(COVER_dictSelection_t selection){
  free(selection.dictContent);
}
