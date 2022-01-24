#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  L; } ;
typedef  int /*<<< orphan*/  TString ;
typedef  TYPE_1__ LoadState ;

/* Variables and functions */
 size_t LUAI_MAXSHORTLEN ; 
 size_t FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,char*,size_t) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,char*,size_t) ; 

__attribute__((used)) static TString *FUNC6 (LoadState *S) {
  size_t size = FUNC0(S);
  if (size == 0xFF)
    FUNC1(S, size);
  if (size == 0)
    return NULL;
  else if (--size <= LUAI_MAXSHORTLEN) {  /* short string? */
    char buff[LUAI_MAXSHORTLEN];
    FUNC2(S, buff, size);
    return FUNC5(S->L, buff, size);
  }
  else {  /* long string */
    TString *ts = FUNC4(S->L, size);
    FUNC2(S, FUNC3(ts), size);  /* load directly in final place */
    return ts;
  }
}