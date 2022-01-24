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
typedef  scalar_t__ WebPMuxError ;
typedef  int /*<<< orphan*/  WebPMux ;
typedef  int /*<<< orphan*/  WebPData ;

/* Variables and functions */
 char* FUNC0 (scalar_t__ const) ; 
 scalar_t__ const WEBP_MUX_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ * const,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(WebPMux* const mux, const char* filename) {
  int ok;
  WebPData webp_data;
  const WebPMuxError err = FUNC2(mux, &webp_data);
  if (err != WEBP_MUX_OK) {
    FUNC4(stderr, "Error (%s) assembling the WebP file.\n", FUNC0(err));
    return 0;
  }
  ok = FUNC3(filename, &webp_data);
  FUNC1(&webp_data);
  return ok;
}