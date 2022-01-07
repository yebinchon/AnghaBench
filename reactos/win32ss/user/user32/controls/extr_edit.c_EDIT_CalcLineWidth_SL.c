
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ text_width; scalar_t__ ssa; } ;
struct TYPE_6__ {scalar_t__ cx; } ;
typedef TYPE_1__ SIZE ;
typedef TYPE_2__ EDITSTATE ;


 int EDIT_UpdateUniscribeData (TYPE_2__*,int *,int ) ;
 TYPE_1__* ScriptString_pSize (scalar_t__) ;

__attribute__((used)) static void EDIT_CalcLineWidth_SL(EDITSTATE *es)
{
 EDIT_UpdateUniscribeData(es, ((void*)0), 0);
 if (es->ssa)
 {
  const SIZE *size;
  size = ScriptString_pSize(es->ssa);
  es->text_width = size->cx;
 }
 else
  es->text_width = 0;
}
