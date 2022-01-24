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

/* Variables and functions */
 size_t FUNC0 (char const* const*) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char const* const,size_t) ; 

__attribute__((used)) static bool FUNC2(const unsigned char *buf, size_t length)
{
    static const char *const hlsexts[] =
    {
        "#EXT-X-MEDIA:",
        "#EXT-X-VERSION:",
        "#EXT-X-TARGETDURATION:",
        "#EXT-X-MEDIA-SEQUENCE:",
        "#EXT-X-STREAM-INF:",
    };

    for (size_t i = 0; i < FUNC0(hlsexts); i++)
        if (FUNC1((const char *)buf, hlsexts[i], length) != NULL)
            return true;

    return false;
}