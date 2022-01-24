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
struct TYPE_5__ {int /*<<< orphan*/  L; int /*<<< orphan*/  b; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ LoadState ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,char*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static TString* FUNC4(LoadState* S)
{
 size_t size;
 FUNC1(S,size);
 if (size==0)
  return NULL;
 else
 {
  char* s=FUNC3(S->L,S->b,size);
  FUNC0(S,s,size);
  return FUNC2(S->L,s,size-1);		/* remove trailing '\0' */
 }
}