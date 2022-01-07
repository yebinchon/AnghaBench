
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RTFTable {int gapH; } ;
struct TYPE_3__ {int bEmulateVersion10; } ;
typedef struct RTFTable RTFTable ;
typedef TYPE_1__ ME_TextEditor ;


 struct RTFTable* heap_alloc_zero (int) ;

struct RTFTable *ME_MakeTableDef(ME_TextEditor *editor)
{
  RTFTable *tableDef = heap_alloc_zero(sizeof(*tableDef));

  if (!editor->bEmulateVersion10)
    tableDef->gapH = 10;
  return tableDef;
}
