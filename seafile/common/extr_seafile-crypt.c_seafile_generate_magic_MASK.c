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
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char const*,unsigned char*,unsigned char*) ; 

void
FUNC5 (int version, const char *repo_id,
                        const char *passwd,
                        const char *repo_salt,
                        char *magic)
{
    GString *buf = FUNC2 (NULL);
    unsigned char key[32], iv[16];

    /* Compute a "magic" string from repo_id and passwd.
     * This is used to verify the password given by user before decrypting
     * data.
     */
    FUNC0 (buf, "%s%s", repo_id, passwd);

    FUNC4 (buf->str, buf->len, version, repo_salt, key, iv);

    FUNC1 (buf, TRUE);
    FUNC3 (key, magic, 32);
}