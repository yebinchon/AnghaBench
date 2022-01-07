
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct RTFTable {int gapH; scalar_t__ leftEdge; scalar_t__ numCellsDefined; int border; int cells; } ;
struct TYPE_3__ {int bEmulateVersion10; } ;
typedef TYPE_1__ ME_TextEditor ;


 int ZeroMemory (int ,int) ;

void ME_InitTableDef(ME_TextEditor *editor, struct RTFTable *tableDef)
{
  ZeroMemory(tableDef->cells, sizeof(tableDef->cells));
  ZeroMemory(tableDef->border, sizeof(tableDef->border));
  tableDef->numCellsDefined = 0;
  tableDef->leftEdge = 0;
  if (!editor->bEmulateVersion10)
    tableDef->gapH = 10;
  else
    tableDef->gapH = 0;
}
