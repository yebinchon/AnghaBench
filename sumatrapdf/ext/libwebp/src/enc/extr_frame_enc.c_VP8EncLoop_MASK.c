#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VP8RDLevel ;
typedef  int /*<<< orphan*/  VP8ModeScore ;
struct TYPE_21__ {int /*<<< orphan*/  use_skip_proba_; } ;
struct TYPE_22__ {int /*<<< orphan*/  rd_opt_level_; TYPE_1__ proba_; } ;
typedef  TYPE_2__ VP8Encoder ;
struct TYPE_23__ {int /*<<< orphan*/  bw_; } ;
typedef  TYPE_3__ VP8EncIterator ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_3__*,int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_3__*,int) ; 
 int FUNC2 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__* const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int /*<<< orphan*/ *,int /*<<< orphan*/  const) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__* const,TYPE_3__*) ; 
 scalar_t__ FUNC11 (TYPE_3__*) ; 
 int FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 

int FUNC15(VP8Encoder* const enc) {
  VP8EncIterator it;
  int ok = FUNC2(enc);
  if (!ok) return 0;

  FUNC4(enc);  // stats-collection loop

  FUNC10(enc, &it);
  FUNC7(&it);
  do {
    VP8ModeScore info;
    const int dont_use_skip = !enc->proba_.use_skip_proba_;
    const VP8RDLevel rd_opt = enc->rd_opt_level_;

    FUNC9(&it, NULL);
    // Warning! order is important: first call VP8Decimate() and
    // *then* decide how to code the skip decision if there's one.
    if (!FUNC6(&it, &info, rd_opt) || dont_use_skip) {
      FUNC0(it.bw_, &it, &info);
    } else {   // reset predictors after a skip
      FUNC3(&it);
    }
    FUNC5(&it);
    FUNC14(&it);
    FUNC8(&it);
    ok = FUNC12(&it, 20);
    FUNC13(&it);
  } while (ok && FUNC11(&it));

  return FUNC1(&it, ok);
}