#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ptrdiff_t ;
struct TYPE_4__ {char const* src_end; } ;
typedef  TYPE_1__ MatchState ;

/* Variables and functions */
 char* FUNC0 (TYPE_1__*,char const*,char const*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const) ; 

__attribute__((used)) static const char*FUNC3(MatchState*ms,const char*s,
const char*p,const char*ep){
ptrdiff_t i=0;
while((s+i)<ms->src_end&&FUNC1(FUNC2(*(s+i)),p,ep))
i++;
while(i>=0){
const char*res=FUNC0(ms,(s+i),ep+1);
if(res)return res;
i--;
}
return NULL;
}