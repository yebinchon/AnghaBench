
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_13__ {int nFlags; int nCharOfs; } ;
struct TYPE_9__ {int nFlags; int nCharOfs; } ;
struct TYPE_8__ {int prev_cell; int next_cell; int nNestingLevel; } ;
struct TYPE_10__ {TYPE_2__ para; TYPE_6__ run; TYPE_1__ cell; } ;
struct TYPE_12__ {int type; struct TYPE_12__* next; TYPE_3__ member; } ;
struct TYPE_11__ {TYPE_5__* pFirst; } ;
typedef TYPE_4__ ME_TextBuffer ;
typedef TYPE_5__ ME_DisplayItem ;


 int MEPF_ROWEND ;
 int MEPF_ROWSTART ;
 int TRACE (char*,...) ;
 int debugstr_run (TYPE_6__*) ;







void ME_DumpDocument(ME_TextBuffer *buffer)
{

  ME_DisplayItem *pItem = buffer->pFirst;
  TRACE("DOCUMENT DUMP START\n");
  while(pItem) {
    switch(pItem->type)
    {
      case 128:
        TRACE("Start\n");
        break;
      case 133:
        TRACE("Cell(level=%d%s)\n", pItem->member.cell.nNestingLevel,
              !pItem->member.cell.next_cell ? ", END" :
                (!pItem->member.cell.prev_cell ? ", START" :""));
        break;
      case 132:
        TRACE("Paragraph(ofs=%d)\n", pItem->member.para.nCharOfs);
        if (pItem->member.para.nFlags & MEPF_ROWSTART)
          TRACE(" - (Table Row Start)\n");
        if (pItem->member.para.nFlags & MEPF_ROWEND)
          TRACE(" - (Table Row End)\n");
        break;
      case 130:
        TRACE(" - StartRow\n");
        break;
      case 131:
        TRACE(" - Run(%s, %d, flags=%x)\n", debugstr_run( &pItem->member.run ),
          pItem->member.run.nCharOfs, pItem->member.run.nFlags);
        break;
      case 129:
        TRACE("End(ofs=%d)\n", pItem->member.para.nCharOfs);
        break;
      default:
        break;
    }
    pItem = pItem->next;
  }
  TRACE("DOCUMENT DUMP END\n");
}
