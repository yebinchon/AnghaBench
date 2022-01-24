#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
typedef  scalar_t__ WebPMuxError ;
struct TYPE_4__ {int loop_count; } ;
typedef  TYPE_1__ WebPMuxAnimParams ;
typedef  int /*<<< orphan*/  WebPMux ;
typedef  int /*<<< orphan*/  WebPData ;

/* Variables and functions */
 int ANIMATION_FLAG ; 
 scalar_t__ WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ * const,int /*<<< orphan*/ * const) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ * const,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ * const,TYPE_1__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ * const,int*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ * const,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC8(int loop_count, WebPData* const webp_data) {
  int ok = 1;
  WebPMuxError err;
  uint32_t features;
  WebPMuxAnimParams new_params;
  WebPMux* const mux = FUNC2(webp_data, 1);
  if (mux == NULL) return 0;

  err = FUNC5(mux, &features);
  ok = (err == WEBP_MUX_OK);
  if (!ok || !(features & ANIMATION_FLAG)) goto End;

  err = FUNC4(mux, &new_params);
  ok = (err == WEBP_MUX_OK);
  if (ok) {
    new_params.loop_count = loop_count;
    err = FUNC6(mux, &new_params);
    ok = (err == WEBP_MUX_OK);
  }
  if (ok) {
    FUNC0(webp_data);
    err = FUNC1(mux, webp_data);
    ok = (err == WEBP_MUX_OK);
  }

 End:
  FUNC3(mux);
  if (!ok) {
    FUNC7(stderr, "Error during loop-count setting\n");
  }
  return ok;
}