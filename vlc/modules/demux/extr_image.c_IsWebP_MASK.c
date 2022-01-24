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
typedef  int /*<<< orphan*/  stream_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/  const*,char*,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const**,int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC3(stream_t *s)
{
    const uint8_t *header;
    if (FUNC1(s, &header, 20) < 20) /* WebP header size */
        return false;
    if (FUNC0(&header[0], "RIFF", 4))
        return false;
    /* TODO: support other chunk types */
    if (FUNC0(&header[8], "WEBPVP8 ", 8))
        return false;
    /* skip headers */
    return FUNC2(s, 20) == 0;
}