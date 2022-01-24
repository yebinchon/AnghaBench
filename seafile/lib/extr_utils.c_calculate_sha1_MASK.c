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
typedef  int gsize ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char const*,int) ; 
 int FUNC4 (char const*) ; 

int
FUNC5 (unsigned char *sha1, const char *msg, int len)
{
    GChecksum *c;
    gsize cs_len = 20;

    if (len < 0)
        len = FUNC4(msg);

    c = FUNC2 (G_CHECKSUM_SHA1);
    FUNC3(c, (const unsigned char *)msg, len);    
    FUNC1 (c, sha1, &cs_len);
    FUNC0 (c);
    return 0;
}