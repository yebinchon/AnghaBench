#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  lua_State ;
typedef  int UB ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,size_t) ; 

__attribute__((used)) static int FUNC3(lua_State*L){
UB b=FUNC0(L,1);
int n=FUNC1(L,2)?8:(int)FUNC0(L,2);
const char*hexdigits="0123456789abcdef";
char buf[8];
int i;
if(n<0){n=-n;hexdigits="0123456789ABCDEF";}
if(n>8)n=8;
for(i=(int)n;--i>=0;){buf[i]=hexdigits[b&15];b>>=4;}
FUNC2(L,buf,(size_t)n);
return 1;
}