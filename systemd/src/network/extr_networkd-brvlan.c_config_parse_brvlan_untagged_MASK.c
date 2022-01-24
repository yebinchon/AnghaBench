#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct TYPE_2__ {int use_br_vlan; int /*<<< orphan*/  br_untagged_bitmap; int /*<<< orphan*/  br_vid_bitmap; } ;
typedef  TYPE_1__ Network ;

/* Variables and functions */
 int /*<<< orphan*/  LOG_ERR ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int /*<<< orphan*/ ,char const*,unsigned int,int,char*,char const*) ; 
 int FUNC2 (char const*,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

int FUNC4(const char *unit, const char *filename,
                                 unsigned line, const char *section,
                                 unsigned section_line, const char *lvalue,
                                 int ltype, const char *rvalue, void *data,
                                 void *userdata) {
        Network *network = userdata;
        int r;
        uint16_t vid, vid_end;

        FUNC0(filename);
        FUNC0(section);
        FUNC0(lvalue);
        FUNC0(rvalue);
        FUNC0(data);

        r = FUNC2(rvalue, &vid, &vid_end);
        if (r < 0) {
                FUNC1(unit, LOG_ERR, filename, line, r, "Could not parse VLAN: %s", rvalue);
                return 0;
        }

        for (; vid <= vid_end; vid++) {
                FUNC3(vid, network->br_vid_bitmap);
                FUNC3(vid, network->br_untagged_bitmap);
        }

        network->use_br_vlan = true;
        return 0;
}