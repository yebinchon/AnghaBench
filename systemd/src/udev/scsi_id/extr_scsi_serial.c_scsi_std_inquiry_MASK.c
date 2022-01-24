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
struct stat {int /*<<< orphan*/  st_rdev; } ;
struct scsi_id_device {char* vendor; char* model; char* revision; int /*<<< orphan*/  type; int /*<<< orphan*/  kernel; } ;

/* Variables and functions */
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int SCSI_INQ_BUFF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  errno ; 
 scalar_t__ FUNC1 (int,struct stat*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*,int) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (char const*,int) ; 
 int FUNC8 (struct scsi_id_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,char*,unsigned char,...) ; 

int FUNC10(struct scsi_id_device *dev_scsi, const char *devname) {
        int fd;
        unsigned char buf[SCSI_INQ_BUFF_LEN];
        struct stat statbuf;
        int err = 0;

        fd = FUNC7(devname, O_RDONLY | O_NONBLOCK | O_CLOEXEC);
        if (fd < 0) {
                FUNC2(errno, "scsi_id: cannot open %s: %m", devname);
                return 1;
        }

        if (FUNC1(fd, &statbuf) < 0) {
                FUNC2(errno, "scsi_id: cannot stat %s: %m", devname);
                err = 2;
                goto out;
        }
        FUNC9(dev_scsi->kernel,"%d:%d", FUNC3(statbuf.st_rdev),
                FUNC6(statbuf.st_rdev));

        FUNC5(buf, SCSI_INQ_BUFF_LEN);
        err = FUNC8(dev_scsi, fd, 0, 0, buf, SCSI_INQ_BUFF_LEN);
        if (err < 0)
                goto out;

        err = 0;
        FUNC4(dev_scsi->vendor, buf + 8, 8);
        dev_scsi->vendor[8] = '\0';
        FUNC4(dev_scsi->model, buf + 16, 16);
        dev_scsi->model[16] = '\0';
        FUNC4(dev_scsi->revision, buf + 32, 4);
        dev_scsi->revision[4] = '\0';
        FUNC9(dev_scsi->type,"%x", buf[0] & 0x1f);

out:
        FUNC0(fd);
        return err;
}