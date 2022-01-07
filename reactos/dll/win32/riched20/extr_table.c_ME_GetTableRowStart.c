
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int nFlags; TYPE_4__* pCell; TYPE_4__* prev_para; } ;
struct TYPE_10__ {TYPE_4__* prev_cell; } ;
struct TYPE_11__ {TYPE_3__ para; TYPE_1__ cell; } ;
struct TYPE_13__ {scalar_t__ type; TYPE_2__ member; } ;
typedef TYPE_4__ ME_DisplayItem ;


 int MEPF_ROWEND ;
 int MEPF_ROWSTART ;
 TYPE_4__* ME_FindItemBack (TYPE_4__*,int ) ;
 int assert (TYPE_4__*) ;
 scalar_t__ diCell ;
 int diParagraph ;

ME_DisplayItem* ME_GetTableRowStart(ME_DisplayItem *para)
{
  ME_DisplayItem *cell;
  assert(para);
  if (para->member.para.nFlags & MEPF_ROWSTART)
    return para;
  if (para->member.para.nFlags & MEPF_ROWEND)
    para = para->member.para.prev_para;
  cell = para->member.para.pCell;
  assert(cell && cell->type == diCell);
  while (cell->member.cell.prev_cell)
    cell = cell->member.cell.prev_cell;

  para = ME_FindItemBack(cell, diParagraph);
  assert(para && para->member.para.nFlags & MEPF_ROWSTART);
  return para;
}
