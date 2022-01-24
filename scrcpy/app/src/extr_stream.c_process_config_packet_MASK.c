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
struct stream {scalar_t__ recorder; } ;
typedef  int /*<<< orphan*/  AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ *) ; 

__attribute__((used)) static bool
FUNC2(struct stream *stream, AVPacket *packet) {
    if (stream->recorder && !FUNC1(stream->recorder, packet)) {
        FUNC0("Could not send config packet to recorder");
        return false;
    }
    return true;
}