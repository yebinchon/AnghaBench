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
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,unsigned char*,unsigned char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmd*) ; 
 int FUNC5 (struct scsi_cmd*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmd*,int,int) ; 

__attribute__((used)) static int FUNC7(int fd) {
        struct scsi_cmd sc;
        unsigned char inq[128];
        int err;

        FUNC4(&sc);
        FUNC6(&sc, 0, 0x12);
        FUNC6(&sc, 4, 36);
        FUNC6(&sc, 5, 0);
        err = FUNC5(&sc, fd, inq, 36);
        if (err != 0) {
                FUNC1("INQUIRY", err);
                return -1;
        }

        if ((inq[0] & 0x1F) != 5)
                return FUNC3(FUNC0(EINVAL), "not an MMC unit");

        FUNC2("INQUIRY: [%.8s][%.16s][%.4s]", inq + 8, inq + 16, inq + 32);
        return 0;
}