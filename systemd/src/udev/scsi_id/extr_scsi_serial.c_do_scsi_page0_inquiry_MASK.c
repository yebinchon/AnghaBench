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
struct scsi_id_device {int /*<<< orphan*/  kernel; int /*<<< orphan*/  vendor; } ;

/* Variables and functions */
 unsigned char MODEL_LENGTH ; 
 int VENDOR_LENGTH ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*,unsigned int) ; 
 int FUNC2 (struct scsi_id_device*,int,int,int,unsigned char*,unsigned int) ; 
 scalar_t__ FUNC3 (char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(struct scsi_id_device *dev_scsi, int fd,
                                 unsigned char *buffer, unsigned len) {
        int retval;

        FUNC1(buffer, len);
        retval = FUNC2(dev_scsi, fd, 1, 0x0, buffer, len);
        if (retval < 0)
                return 1;

        if (buffer[1] != 0) {
                FUNC0("%s: page 0 not available.", dev_scsi->kernel);
                return 1;
        }
        if (buffer[3] > len) {
                FUNC0("%s: page 0 buffer too long %d", dev_scsi->kernel, buffer[3]);
                return 1;
        }

        /*
         * Following check is based on code once included in the 2.5.x
         * kernel.
         *
         * Some ill behaved devices return the standard inquiry here
         * rather than the evpd data, snoop the data to verify.
         */
        if (buffer[3] > MODEL_LENGTH) {
                /*
                 * If the vendor id appears in the page assume the page is
                 * invalid.
                 */
                if (FUNC3((char*) buffer + VENDOR_LENGTH, dev_scsi->vendor, VENDOR_LENGTH)) {
                        FUNC0("%s: invalid page0 data", dev_scsi->kernel);
                        return 1;
                }
        }
        return 0;
}