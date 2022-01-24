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
typedef  int /*<<< orphan*/  hash ;
typedef  int /*<<< orphan*/  data_t ;
typedef  int /*<<< orphan*/  XXH64_canonical_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int EIO ; 
 int ENOMEM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kStampName ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const* const*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int
FUNC9(char const* dir, data_t const* const* data, int const data_err) {
    char* stamp = FUNC1(dir, "/", kStampName);
    FILE* stampfile = NULL;
    int err = EIO;

    if (stamp == NULL)
        return ENOMEM;

    if (data_err != 0) {
        err = data_err;
        goto out;
    }
    XXH64_canonical_t hash;

    FUNC0(&hash, FUNC7(data));

    stampfile = FUNC3(stamp, "wb");
    if (stampfile == NULL)
        goto out;
    if (FUNC6(&hash, sizeof(hash), 1, stampfile) != 1)
        goto out;
    err = 0;
    FUNC4(stderr, "stamped new data cache\n");
out:
    if (err != 0)
        /* Ignore errors. */
        FUNC8(stamp);
    FUNC5(stamp);
    if (stampfile != NULL)
        FUNC2(stampfile);
    return err;
}