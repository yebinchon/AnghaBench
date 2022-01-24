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
typedef  int /*<<< orphan*/  WebPMux ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ * const) ; 
 scalar_t__ FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WEBP_MUX_ABI_VERSION ; 
 scalar_t__ FUNC2 (unsigned long long,int) ; 

WebPMux* FUNC3(int version) {
  if (FUNC1(version, WEBP_MUX_ABI_VERSION)) {
    return NULL;
  } else {
    WebPMux* const mux = (WebPMux*)FUNC2(1ULL, sizeof(WebPMux));
    if (mux != NULL) FUNC0(mux);
    return mux;
  }
}