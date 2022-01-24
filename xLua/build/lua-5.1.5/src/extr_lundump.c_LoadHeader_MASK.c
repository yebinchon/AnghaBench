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
typedef  int /*<<< orphan*/  LoadState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int LUAC_HEADERSIZE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char*,int) ; 

__attribute__((used)) static void FUNC4(LoadState* S)
{
 char h[LUAC_HEADERSIZE];
 char s[LUAC_HEADERSIZE];
 FUNC2(h);
 FUNC1(S,s,LUAC_HEADERSIZE);
 FUNC0 (FUNC3(h,s,LUAC_HEADERSIZE)!=0, "bad header");
}