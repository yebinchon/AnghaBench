#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  len; int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ GString ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,unsigned char*,unsigned char*) ; 

int
FUNC7 (const char *repo_id,
                            const char *passwd,
                            const char *magic,
                            int version,
                            const char *repo_salt)
{
    GString *buf = FUNC3 (NULL);
    unsigned char key[32], iv[16];
    char hex[65];

    if (version != 1 && version != 2 && version != 3) {
        FUNC5 ("Unsupported enc_version %d.\n", version);
        return -1;
    }

    /* Recompute the magic and compare it with the one comes with the repo. */
    FUNC1 (buf, "%s%s", repo_id, passwd);

    FUNC6 (buf->str, buf->len, version, repo_salt, key, iv);

    FUNC2 (buf, TRUE);

    if (version >= 2)
        FUNC4 (key, hex, 32);
    else
        FUNC4 (key, hex, 16);

    if (FUNC0 (hex, magic) == 0)
        return 0;
    else
        return -1;
}