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
typedef  int /*<<< orphan*/  TTree ;
typedef  int /*<<< orphan*/  CompileState ;
typedef  int /*<<< orphan*/  Charset ;

/* Variables and functions */
 int NOINST ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * fullset ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4 (CompileState *compst, TTree *p1, TTree *p2,
                     int tt, const Charset *fl) {
  if (FUNC3(p1)) {
    Charset fl1;
    FUNC2(p2, fl, &fl1);  /* p1 follow is p2 first */
    FUNC0(compst, p1, 0, tt, &fl1);
  }
  else  /* use 'fullset' as follow */
    FUNC0(compst, p1, 0, tt, fullset);
  if (FUNC1(p1) != 0)  /* can 'p1' consume anything? */
    return  NOINST;  /* invalidate test */
  else return tt;  /* else 'tt' still protects sib2 */
}