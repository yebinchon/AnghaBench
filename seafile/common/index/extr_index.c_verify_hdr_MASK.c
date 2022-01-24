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
struct cache_header {scalar_t__ hdr_signature; scalar_t__ hdr_version; } ;
typedef  int gsize ;
typedef  int /*<<< orphan*/  GChecksum ;

/* Variables and functions */
 int CACHE_SIGNATURE ; 
 int /*<<< orphan*/  G_CHECKSUM_SHA1 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,unsigned char*,int*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned char*,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (unsigned char*,unsigned char*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static int FUNC7(struct cache_header *hdr, unsigned long size)
{
    GChecksum *c;
    unsigned char sha1[20];
    gsize len = 20;

    if (hdr->hdr_signature != FUNC6(CACHE_SIGNATURE)) {
        FUNC4("bad signature\n");
        return -1;
    }
    if (hdr->hdr_version != FUNC6(2) && hdr->hdr_version != FUNC6(3) &&
        hdr->hdr_version != FUNC6(4)) {
        FUNC4("bad index version\n");
        return -1;
    }
    c = FUNC2 (G_CHECKSUM_SHA1);
    FUNC3(c, (unsigned char *)hdr, size - 20);
    FUNC1 (c, sha1, &len);
    FUNC0 (c);
    if (FUNC5(sha1, (unsigned char *)hdr + size - 20)) {
        FUNC4("bad index file sha1 signature\n");
        return -1;
    }
    return 0;
}