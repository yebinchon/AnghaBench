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
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct scsi_id_device {int /*<<< orphan*/  serial_short; int /*<<< orphan*/  serial; int /*<<< orphan*/  tgpt_group; int /*<<< orphan*/  wwn_vendor_extension; int /*<<< orphan*/  wwn; int /*<<< orphan*/  unit_serial_number; int /*<<< orphan*/  kernel; } ;

/* Variables and functions */
 scalar_t__ EBUSY ; 
 int O_CLOEXEC ; 
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int PAGE_80 ; 
 int PAGE_83 ; 
 int PAGE_83_PRE_SPC3 ; 
 int SCSI_INQ_BUFF_LEN ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (struct scsi_id_device*,int,unsigned char*,int) ; 
 scalar_t__ FUNC2 (struct scsi_id_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct scsi_id_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (struct scsi_id_device*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (struct timespec*,int /*<<< orphan*/ *) ; 
 int FUNC9 (char const*,int) ; 
 int FUNC10 () ; 

int FUNC11(struct scsi_id_device *dev_scsi, const char *devname,
                    int page_code, int len) {
        unsigned char page0[SCSI_INQ_BUFF_LEN];
        int fd = -1;
        int cnt;
        int ind;
        int retval;

        FUNC7(dev_scsi->serial, len);
        FUNC5();
        for (cnt = 20; cnt > 0; cnt--) {
                struct timespec duration;

                fd = FUNC9(devname, O_RDONLY | O_NONBLOCK | O_CLOEXEC);
                if (fd >= 0 || errno != EBUSY)
                        break;
                duration.tv_sec = 0;
                duration.tv_nsec = (200 * 1000 * 1000) + (FUNC10() % 100 * 1000 * 1000);
                FUNC8(&duration, NULL);
        }
        if (fd < 0)
                return 1;

        if (page_code == PAGE_80) {
                if (FUNC2(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len)) {
                        retval = 1;
                        goto completed;
                } else  {
                        retval = 0;
                        goto completed;
                }
        } else if (page_code == PAGE_83) {
                if (FUNC3(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len, dev_scsi->unit_serial_number, dev_scsi->wwn, dev_scsi->wwn_vendor_extension, dev_scsi->tgpt_group)) {
                        retval = 1;
                        goto completed;
                } else  {
                        retval = 0;
                        goto completed;
                }
        } else if (page_code == PAGE_83_PRE_SPC3) {
                retval = FUNC4(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len);
                if (retval) {
                        /*
                         * Fallback to servicing a SPC-2/3 compliant page 83
                         * inquiry if the page 83 reply format does not
                         * conform to pre-SPC3 expectations.
                         */
                        if (retval == 2) {
                                if (FUNC3(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len, dev_scsi->unit_serial_number, dev_scsi->wwn, dev_scsi->wwn_vendor_extension, dev_scsi->tgpt_group)) {
                                        retval = 1;
                                        goto completed;
                                } else  {
                                        retval = 0;
                                        goto completed;
                                }
                        }
                        else {
                                retval = 1;
                                goto completed;
                        }
                } else  {
                        retval = 0;
                        goto completed;
                }
        } else if (page_code != 0x00) {
                FUNC6("%s: unsupported page code 0x%d", dev_scsi->kernel, page_code);
                retval = 1;
                goto completed;
        }

        /*
         * Get page 0, the page of the pages. By default, try from best to
         * worst of supported pages: 0x83 then 0x80.
         */
        if (FUNC1(dev_scsi, fd, page0, SCSI_INQ_BUFF_LEN)) {
                /*
                 * Don't try anything else. Black list if a specific page
                 * should be used for this vendor+model, or maybe have an
                 * optional fall-back to page 0x80 or page 0x83.
                 */
                retval = 1;
                goto completed;
        }

        for (ind = 4; ind <= page0[3] + 3; ind++)
                if (page0[ind] == PAGE_83)
                        if (!FUNC3(dev_scsi, fd,
                                                    dev_scsi->serial, dev_scsi->serial_short, len, dev_scsi->unit_serial_number, dev_scsi->wwn, dev_scsi->wwn_vendor_extension, dev_scsi->tgpt_group)) {
                                /*
                                 * Success
                                 */
                                retval = 0;
                                goto completed;
                        }

        for (ind = 4; ind <= page0[3] + 3; ind++)
                if (page0[ind] == PAGE_80)
                        if (!FUNC2(dev_scsi, fd,
                                                    dev_scsi->serial, dev_scsi->serial_short, len)) {
                                /*
                                 * Success
                                 */
                                retval = 0;
                                goto completed;
                        }
        retval = 1;

completed:
        FUNC0(fd);
        return retval;
}