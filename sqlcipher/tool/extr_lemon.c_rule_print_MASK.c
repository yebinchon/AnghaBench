#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct symbol {scalar_t__ type; int nsubsym; char* name; TYPE_2__** subsym; } ;
struct rule {int nrhs; struct symbol** rhs; TYPE_1__* lhs; } ;
struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {char* name; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ MULTITERMINAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 

void FUNC1(FILE *out, struct rule *rp){
  int i, j;
  FUNC0(out, "%s",rp->lhs->name);
  /*    if( rp->lhsalias ) fprintf(out,"(%s)",rp->lhsalias); */
  FUNC0(out," ::=");
  for(i=0; i<rp->nrhs; i++){
    struct symbol *sp = rp->rhs[i];
    if( sp->type==MULTITERMINAL ){
      FUNC0(out," %s", sp->subsym[0]->name);
      for(j=1; j<sp->nsubsym; j++){
        FUNC0(out,"|%s", sp->subsym[j]->name);
      }
    }else{
      FUNC0(out," %s", sp->name);
    }
    /* if( rp->rhsalias[i] ) fprintf(out,"(%s)",rp->rhsalias[i]); */
  }
}