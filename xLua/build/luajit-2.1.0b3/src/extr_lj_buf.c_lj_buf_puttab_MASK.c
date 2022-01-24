#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ int32_t ;
typedef  int /*<<< orphan*/  cTValue ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_5__ {scalar_t__ len; } ;
typedef  int /*<<< orphan*/  SBuf ;
typedef  scalar_t__ MSize ;
typedef  int /*<<< orphan*/  GCtab ;
typedef  TYPE_1__ GCstr ;

/* Variables and functions */
 int /*<<< orphan*/  STRFMT_G14 ; 
 scalar_t__ STRFMT_MAXBUF_INT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *,scalar_t__) ; 
 char* FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *) ; 

SBuf *FUNC14(SBuf *sb, GCtab *t, GCstr *sep, int32_t i, int32_t e)
{
  MSize seplen = sep ? sep->len : 0;
  if (i <= e) {
    for (;;) {
      cTValue *o = FUNC5(t, i);
      char *p;
      if (!o) {
      badtype:  /* Error: bad element type. */
	FUNC7(sb, (void *)(intptr_t)i);  /* Store failing index. */
	return NULL;
      } else if (FUNC13(o)) {
	MSize len = FUNC8(o)->len;
	p = FUNC2(FUNC1(sb, len + seplen), FUNC9(o), len);
      } else if (FUNC11(o)) {
	p = FUNC4(FUNC1(sb, STRFMT_MAXBUF_INT+seplen), FUNC0(o));
      } else if (FUNC12(o)) {
	p = FUNC1(FUNC3(sb, STRFMT_G14, FUNC6(o)), seplen);
      } else {
	goto badtype;
      }
      if (i++ == e) {
	FUNC7(sb, p);
	break;
      }
      if (seplen) p = FUNC2(p, FUNC10(sep), seplen);
      FUNC7(sb, p);
    }
  }
  return sb;
}