#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {scalar_t__ nCharOfs; } ;
struct TYPE_8__ {scalar_t__ nCharOfs; TYPE_3__* next_para; } ;
struct TYPE_9__ {TYPE_1__ para; TYPE_4__ run; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ member; } ;
typedef  TYPE_3__ ME_DisplayItem ;

/* Variables and functions */
 TYPE_3__* FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*) ; 
 scalar_t__ diParagraph ; 
 scalar_t__ diRun ; 
 int /*<<< orphan*/  diRunOrParagraphOrEnd ; 
 scalar_t__ diTextEnd ; 

void FUNC4(ME_DisplayItem *p, int shift)
{
	/* Runs in one paragraph contain character offset relative to their owning
	 * paragraph. If we start the shifting from the run, we need to shift
	 * all the relative offsets until the end of the paragraph
	 */	 	    
  if (p->type == diRun) /* propagate in all runs in this para */
  {
    FUNC1("PropagateCharOffset(%s, %d)\n", FUNC3( &p->member.run ), shift);
    do {
      p->member.run.nCharOfs += shift;
      FUNC2(p->member.run.nCharOfs >= 0);
      p = FUNC0(p, diRunOrParagraphOrEnd);
    } while(p->type == diRun);
  }
	/* Runs in next paragraphs don't need their offsets updated, because they, 
	 * again, those offsets are relative to their respective paragraphs.
	 * Instead of that, we're updating paragraphs' character offsets.	  
	 */	 	    
  if (p->type == diParagraph) /* propagate in all next paras */
  {
    do {
      p->member.para.nCharOfs += shift;
      FUNC2(p->member.para.nCharOfs >= 0);
      p = p->member.para.next_para;
    } while(p->type == diParagraph);
  }
  /* diTextEnd also has character offset in it, which makes finding text length
   * easier. But it needs to be up to date first.
   */
  if (p->type == diTextEnd)
  {
    p->member.para.nCharOfs += shift;
    FUNC2(p->member.para.nCharOfs >= 0);
  }
}