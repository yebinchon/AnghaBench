
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ nCharOfs; } ;
struct TYPE_8__ {scalar_t__ nCharOfs; TYPE_3__* next_para; } ;
struct TYPE_9__ {TYPE_1__ para; TYPE_4__ run; } ;
struct TYPE_10__ {scalar_t__ type; TYPE_2__ member; } ;
typedef TYPE_3__ ME_DisplayItem ;


 TYPE_3__* ME_FindItemFwd (TYPE_3__*,int ) ;
 int TRACE (char*,int ,int) ;
 int assert (int) ;
 int debugstr_run (TYPE_4__*) ;
 scalar_t__ diParagraph ;
 scalar_t__ diRun ;
 int diRunOrParagraphOrEnd ;
 scalar_t__ diTextEnd ;

void ME_PropagateCharOffset(ME_DisplayItem *p, int shift)
{




  if (p->type == diRun)
  {
    TRACE("PropagateCharOffset(%s, %d)\n", debugstr_run( &p->member.run ), shift);
    do {
      p->member.run.nCharOfs += shift;
      assert(p->member.run.nCharOfs >= 0);
      p = ME_FindItemFwd(p, diRunOrParagraphOrEnd);
    } while(p->type == diRun);
  }




  if (p->type == diParagraph)
  {
    do {
      p->member.para.nCharOfs += shift;
      assert(p->member.para.nCharOfs >= 0);
      p = p->member.para.next_para;
    } while(p->type == diParagraph);
  }



  if (p->type == diTextEnd)
  {
    p->member.para.nCharOfs += shift;
    assert(p->member.para.nCharOfs >= 0);
  }
}
