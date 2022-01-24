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
typedef  int /*<<< orphan*/  WebPData ;
typedef  int /*<<< orphan*/  W_CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const* const,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC5(const char* const filename, WebPMux** mux) {
  WebPData bitstream;
  FUNC4(mux != NULL);
  if (!FUNC0(filename, &bitstream)) return 0;
  *mux = FUNC3(&bitstream, 1);
  FUNC2(&bitstream);
  if (*mux != NULL) return 1;
  FUNC1(stderr, "Failed to create mux object from file %s.\n",
           (const W_CHAR*)filename);
  return 0;
}