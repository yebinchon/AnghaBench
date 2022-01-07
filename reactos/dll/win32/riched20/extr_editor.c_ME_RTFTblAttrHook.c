
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_7__ ;
typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;
typedef struct TYPE_12__ TYPE_11__ ;


struct TYPE_20__ {TYPE_2__* pCursors; int bEmulateVersion10; } ;
struct TYPE_18__ {int* rgxTabs; } ;
struct TYPE_15__ {TYPE_6__ fmt; } ;
struct TYPE_16__ {TYPE_3__ para; } ;
struct TYPE_19__ {TYPE_4__ member; } ;
struct TYPE_17__ {int rtfMinor; int rtfParam; TYPE_11__* tableDef; void* borderType; TYPE_9__* editor; } ;
struct TYPE_14__ {TYPE_7__* pPara; } ;
struct TYPE_13__ {int rightBoundary; } ;
struct TYPE_12__ {int numCellsDefined; int gapH; int leftEdge; TYPE_1__* cells; } ;
typedef TYPE_5__ RTF_Info ;
typedef TYPE_6__ PARAFORMAT2 ;
typedef TYPE_7__ ME_DisplayItem ;


 int MAX_TABLE_CELLS ;
 int MAX_TAB_STOPS ;
 int ME_InitTableDef (TYPE_9__*,TYPE_11__*) ;
 void* ME_MakeTableDef (TYPE_9__*) ;
 void* RTFBorderCellBottom ;
 void* RTFBorderCellLeft ;
 void* RTFBorderCellRight ;
 void* RTFBorderCellTop ;
 void* RTFBorderRowBottom ;
 void* RTFBorderRowLeft ;
 void* RTFBorderRowRight ;
 void* RTFBorderRowTop ;
void ME_RTFTblAttrHook(RTF_Info *info)
{
  switch (info->rtfMinor)
  {
    case 130:
    {
      if (!info->editor->bEmulateVersion10)
        info->borderType = 0;
      else
        info->borderType = RTFBorderRowTop;
      if (!info->tableDef) {
        info->tableDef = ME_MakeTableDef(info->editor);
      } else {
        ME_InitTableDef(info->editor, info->tableDef);
      }
      break;
    }
    case 135:
    {
      int cellNum;
      if (!info->tableDef)
      {
        info->tableDef = ME_MakeTableDef(info->editor);
      }
      cellNum = info->tableDef->numCellsDefined;
      if (cellNum >= MAX_TABLE_CELLS)
        break;
      info->tableDef->cells[cellNum].rightBoundary = info->rtfParam;
      if (cellNum < MAX_TAB_STOPS) {


        ME_DisplayItem *para = info->editor->pCursors[0].pPara;
        PARAFORMAT2 *pFmt = &para->member.para.fmt;
        pFmt->rgxTabs[cellNum] &= ~0x00FFFFFF;
        pFmt->rgxTabs[cellNum] |= 0x00FFFFFF & info->rtfParam;
      }
      info->tableDef->numCellsDefined++;
      break;
    }
    case 131:
      info->borderType = RTFBorderRowTop;
      break;
    case 133:
      info->borderType = RTFBorderRowLeft;
      break;
    case 134:
      info->borderType = RTFBorderRowBottom;
      break;
    case 132:
      info->borderType = RTFBorderRowRight;
      break;
    case 136:
      info->borderType = RTFBorderCellTop;
      break;
    case 138:
      info->borderType = RTFBorderCellLeft;
      break;
    case 139:
      info->borderType = RTFBorderCellBottom;
      break;
    case 137:
      info->borderType = RTFBorderCellRight;
      break;
    case 129:
      if (info->tableDef)
        info->tableDef->gapH = info->rtfParam;
      break;
    case 128:
      if (info->tableDef)
        info->tableDef->leftEdge = info->rtfParam;
      break;
  }
}
