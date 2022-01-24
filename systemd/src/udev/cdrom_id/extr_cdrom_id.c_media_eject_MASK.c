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
struct scsi_cmd {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct scsi_cmd*) ; 
 int FUNC2 (struct scsi_cmd*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct scsi_cmd*,int,int) ; 

__attribute__((used)) static int FUNC4(int fd) {
        struct scsi_cmd sc;
        int err;

        FUNC1(&sc);
        FUNC3(&sc, 0, 0x1b);
        FUNC3(&sc, 4, 0x02);
        FUNC3(&sc, 5, 0);
        err = FUNC2(&sc, fd, NULL, 0);
        if (err != 0) {
                FUNC0("START_STOP_UNIT", err);
                return -1;
        }
        return 0;
}