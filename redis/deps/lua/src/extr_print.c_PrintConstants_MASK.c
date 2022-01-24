#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int sizek; } ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void FUNC3(const Proto* f)
{
 int i,n=f->sizek;
 FUNC2("constants (%d) for %p:\n",n,FUNC1(f));
 for (i=0; i<n; i++)
 {
  FUNC2("\t%d\t",i+1);
  FUNC0(f,i);
  FUNC2("\n");
 }
}