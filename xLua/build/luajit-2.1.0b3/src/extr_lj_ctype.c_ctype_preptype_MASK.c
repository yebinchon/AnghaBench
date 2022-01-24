#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int needsp; int /*<<< orphan*/  cts; } ;
struct TYPE_14__ {int /*<<< orphan*/  name; } ;
struct TYPE_13__ {int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  MSize ;
typedef  TYPE_1__ GCstr ;
typedef  TYPE_2__ CType ;
typedef  TYPE_3__ CTRepr ;
typedef  int /*<<< orphan*/  CTInfo ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,char) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 TYPE_1__* FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 char const* FUNC7 (TYPE_1__*) ; 
 scalar_t__ FUNC8 (char const*) ; 

__attribute__((used)) static void FUNC9(CTRepr *ctr, CType *ct, CTInfo qual, const char *t)
{
  if (FUNC6(ct->name)) {
    GCstr *str = FUNC5(FUNC6(ct->name));
    FUNC3(ctr, FUNC7(str), str->len);
  } else {
    if (ctr->needsp) FUNC0(ctr, ' ');
    FUNC1(ctr, FUNC4(ctr->cts, ct));
    ctr->needsp = 1;
  }
  FUNC3(ctr, t, (MSize)FUNC8(t));
  FUNC2(ctr, qual);
}