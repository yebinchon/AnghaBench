#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ size; int /*<<< orphan*/  bytes; } ;
typedef  TYPE_1__ WebPData ;
typedef  int /*<<< orphan*/  W_CHAR ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/  const*,...) ; 
 scalar_t__ FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * stdout ; 

__attribute__((used)) static int FUNC6(const char* filename, const WebPData* const webpdata) {
  int ok = 0;
  FILE* fout = FUNC3(filename, "-") ? FUNC1(filename, "wb")
                                      : FUNC0(stdout);
  if (fout == NULL) {
    FUNC2(stderr, "Error opening output WebP file %s!\n",
             (const W_CHAR*)filename);
    return 0;
  }
  if (FUNC5(webpdata->bytes, webpdata->size, 1, fout) != 1) {
    FUNC2(stderr, "Error writing file %s!\n", (const W_CHAR*)filename);
  } else {
    FUNC2(stderr, "Saved file %s (%d bytes)\n",
             (const W_CHAR*)filename, (int)webpdata->size);
    ok = 1;
  }
  if (fout != stdout) FUNC4(fout);
  return ok;
}