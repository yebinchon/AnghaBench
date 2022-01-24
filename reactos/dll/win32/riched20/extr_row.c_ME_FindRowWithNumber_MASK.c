#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int nRows; TYPE_5__* next_para; } ;
struct TYPE_11__ {TYPE_1__ para; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_2__ member; } ;
struct TYPE_13__ {TYPE_3__* pBuffer; } ;
struct TYPE_12__ {TYPE_5__* pFirst; } ;
typedef  TYPE_4__ ME_TextEditor ;
typedef  TYPE_5__ ME_DisplayItem ;

/* Variables and functions */
 TYPE_5__* FUNC0 (TYPE_5__*,scalar_t__) ; 
 scalar_t__ diParagraph ; 
 scalar_t__ diStartRow ; 

ME_DisplayItem *
FUNC1(ME_TextEditor *editor, int nRow)
{
  ME_DisplayItem *item = FUNC0(editor->pBuffer->pFirst, diParagraph);
  int nCount = 0;

  while (item->type == diParagraph &&
         nCount + item->member.para.nRows <= nRow)
  {
    nCount += item->member.para.nRows;
    item = item->member.para.next_para;
  }
  if (item->type != diParagraph)
    return NULL;
  for (item = FUNC0(item, diStartRow); item && nCount < nRow; nCount++)
    item = FUNC0(item, diStartRow);
  return item;
}