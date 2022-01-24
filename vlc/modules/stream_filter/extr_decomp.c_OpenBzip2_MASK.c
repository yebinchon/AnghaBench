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
typedef  int /*<<< orphan*/  vlc_object_t ;
typedef  char uint8_t ;
struct TYPE_3__ {int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ stream_t ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*,char*) ; 
 int VLC_EGENERIC ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const**,int) ; 

__attribute__((used)) static int FUNC4 (vlc_object_t *obj)
{
    stream_t      *stream = (stream_t *)obj;
    const uint8_t *peek;

    /* (Try to) parse the bzip2 header */
    if (FUNC3 (stream->s, &peek, 10) < 10)
        return VLC_EGENERIC;

    if (FUNC1 (peek, "BZh", 3) || (peek[3] < '1') || (peek[3] > '9')
     || FUNC1 (peek + 4, "\x31\x41\x59\x26\x53\x59", 6))
        return VLC_EGENERIC;

    FUNC2 (obj, "detected bzip2 compressed stream");
    return FUNC0 (stream, "bzcat");
}