#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int sizek; int sizelocvars; int sizeupvalues; TYPE_2__* upvalues; TYPE_1__* locvars; } ;
struct TYPE_8__ {int instack; int idx; } ;
struct TYPE_7__ {int startpc; int endpc; int /*<<< orphan*/  varname; } ;
typedef  TYPE_3__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__ const*,int) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__ const*) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 

__attribute__((used)) static void FUNC5(const Proto* f)
{
 int i,n;
 n=f->sizek;
 FUNC4("constants (%d) for %p:\n",n,FUNC2(f));
 for (i=0; i<n; i++)
 {
  FUNC4("\t%d\t",i+1);
  FUNC0(f,i);
  FUNC4("\n");
 }
 n=f->sizelocvars;
 FUNC4("locals (%d) for %p:\n",n,FUNC2(f));
 for (i=0; i<n; i++)
 {
  FUNC4("\t%d\t%s\t%d\t%d\n",
  i,FUNC3(f->locvars[i].varname),f->locvars[i].startpc+1,f->locvars[i].endpc+1);
 }
 n=f->sizeupvalues;
 FUNC4("upvalues (%d) for %p:\n",n,FUNC2(f));
 for (i=0; i<n; i++)
 {
  FUNC4("\t%d\t%s\t%d\t%d\n",
  i,FUNC1(i),f->upvalues[i].instack,f->upvalues[i].idx);
 }
}