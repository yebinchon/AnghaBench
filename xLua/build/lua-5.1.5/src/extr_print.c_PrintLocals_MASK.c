#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int sizelocvars; TYPE_1__* locvars; } ;
struct TYPE_5__ {int startpc; int endpc; int /*<<< orphan*/  varname; } ;
typedef  TYPE_2__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__ const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static void FUNC3(const Proto* f)
{
 int i,n=f->sizelocvars;
 FUNC2("locals (%d) for %p:\n",n,FUNC0(f));
 for (i=0; i<n; i++)
 {
  FUNC2("\t%d\t%s\t%d\t%d\n",
  i,FUNC1(f->locvars[i].varname),f->locvars[i].startpc+1,f->locvars[i].endpc+1);
 }
}