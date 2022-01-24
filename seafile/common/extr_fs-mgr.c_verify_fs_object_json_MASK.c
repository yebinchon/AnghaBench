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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  guint8 ;
typedef  int gboolean ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,char*,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char*,char const*) ; 

__attribute__((used)) static gboolean
FUNC6 (const char *obj_id, uint8_t *data, int len)
{
    guint8 *decompressed;
    int outlen;
    unsigned char sha1[20];
    char hex[41];

    if (FUNC3 (data, len, &decompressed, &outlen) < 0) {
        FUNC4 ("Failed to decompress fs object %s.\n", obj_id);
        return FALSE;
    }

    FUNC0 (sha1, (const char *)decompressed, outlen);
    FUNC2 (sha1, hex, 20);

    FUNC1 (decompressed);
    return (FUNC5(hex, obj_id) == 0);
}