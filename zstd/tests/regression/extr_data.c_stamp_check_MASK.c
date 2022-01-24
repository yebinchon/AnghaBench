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
typedef  scalar_t__ uint64_t ;
typedef  int /*<<< orphan*/  data_t ;
typedef  int /*<<< orphan*/  actual ;
typedef  int /*<<< orphan*/  XXH64_canonical_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ const FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  kStampName ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/  const* const*) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC9(char const* dir, data_t const* const* data) {
    char* stamp = FUNC2(dir, "/", kStampName);
    uint64_t const expected = FUNC8(data);
    XXH64_canonical_t actual;
    FILE* stampfile = NULL;
    int matches = 0;

    if (stamp == NULL)
        goto out;
    if (!FUNC0(stamp)) {
        FUNC5(stderr, "stamp does not exist: recreating the data cache\n");
        goto out;
    }

    stampfile = FUNC4(stamp, "rb");
    if (stampfile == NULL) {
        FUNC5(stderr, "could not open stamp: recreating the data cache\n");
        goto out;
    }

    size_t b;
    if ((b = FUNC6(&actual, sizeof(actual), 1, stampfile)) != 1) {
        FUNC5(stderr, "invalid stamp: recreating the data cache\n");
        goto out;
    }

    matches = (expected == FUNC1(&actual));
    if (matches)
        FUNC5(stderr, "stamp matches: reusing the cached data\n");
    else
        FUNC5(stderr, "stamp does not match: recreating the data cache\n");

out:
    FUNC7(stamp);
    if (stampfile != NULL)
        FUNC3(stampfile);
    return matches;
}