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
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
struct TYPE_6__ {TYPE_1__ lc; int /*<<< orphan*/  cp; } ;
typedef  TYPE_2__ _Locale_collate_t ;

/* Variables and functions */
 int CSTR_EQUAL ; 
 int CSTR_LESS_THAN ; 
 int FUNC0 (TYPE_2__*,char const*,size_t,char const*,size_t) ; 
 char* FUNC1 (scalar_t__,scalar_t__,char const*,size_t,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

int FUNC5(_Locale_collate_t* lcol,
                   const char* s1, size_t n1,
                   const char* s2, size_t n2) {
  int result;
  if (FUNC2(lcol->lc.id) == FUNC3(lcol->cp)) {
    result = FUNC0(lcol, s1, n1, s2, n2);
  }
  else {
    char *buf1, *buf2;
    size_t size1, size2;
    buf1 = FUNC1(FUNC3(lcol->cp), FUNC2(lcol->lc.id), s1, n1, &size1);
    buf2 = FUNC1(FUNC3(lcol->cp), FUNC2(lcol->lc.id), s2, n2, &size2);

    result = FUNC0(lcol, buf1, size1, buf2, size2);
    FUNC4(buf1); FUNC4(buf2);
  }
  return (result == CSTR_EQUAL) ? 0 : (result == CSTR_LESS_THAN) ? -1 : 1;
}