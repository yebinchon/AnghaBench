#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
struct TYPE_14__ {int base; } ;
typedef  TYPE_1__ lua_State ;
struct TYPE_15__ {size_t len; } ;
struct TYPE_13__ {int /*<<< orphan*/  buff; } ;
typedef  int StkId ;

/* Variables and functions */
 TYPE_11__* FUNC0 (TYPE_1__*) ; 
 size_t MAX_SIZET ; 
 int /*<<< orphan*/  TM_CONCAT ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,size_t) ; 
 char* FUNC5 (TYPE_1__*,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 scalar_t__ FUNC9 (TYPE_1__*,int) ; 
 TYPE_2__* FUNC10 (int) ; 
 scalar_t__ FUNC11 (int) ; 
 scalar_t__ FUNC12 (int) ; 

void FUNC13 (lua_State *L, int total, int last) {
  do {
    StkId top = L->base + last + 1;
    int n = 2;  /* number of elements handled in this pass (at least 2) */
    if (!(FUNC12(top-2) || FUNC11(top-2)) || !FUNC9(L, top-1)) {
      if (!FUNC1(L, top-2, top-1, top-2, TM_CONCAT))
        FUNC2(L, top-2, top-1);
    } else if (FUNC10(top-1)->len == 0)  /* second op is empty? */
      (void)FUNC9(L, top - 2);  /* result is first op (as string) */
    else {
      /* at least two string values; get as many as possible */
      size_t tl = FUNC10(top-1)->len;
      char *buffer;
      int i;
      /* collect total length */
      for (n = 1; n < total && FUNC9(L, top-n-1); n++) {
        size_t l = FUNC10(top-n-1)->len;
        if (l >= MAX_SIZET - tl) FUNC3(L, "string length overflow");
        tl += l;
      }
      buffer = FUNC5(L, &FUNC0(L)->buff, tl);
      tl = 0;
      for (i=n; i>0; i--) {  /* concat all strings */
        size_t l = FUNC10(top-i)->len;
        FUNC6(buffer+tl, FUNC8(top-i), l);
        tl += l;
      }
      FUNC7(L, top-n, FUNC4(L, buffer, tl));
    }
    total -= n-1;  /* got `n' strings to create 1 new */
    last -= n-1;
  } while (total > 1);  /* repeat until only 1 result left */
}