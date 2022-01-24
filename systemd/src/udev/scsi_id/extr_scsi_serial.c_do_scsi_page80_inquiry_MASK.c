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
struct scsi_id_device {int /*<<< orphan*/  kernel; } ;

/* Variables and functions */
 int MODEL_LENGTH ; 
 unsigned char PAGE_80 ; 
 int SCSI_INQ_BUFF_LEN ; 
 int VENDOR_LENGTH ; 
 int FUNC0 (struct scsi_id_device*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*,int) ; 
 int FUNC4 (struct scsi_id_device*,int,int,unsigned char,unsigned char*,int) ; 

__attribute__((used)) static int FUNC5(struct scsi_id_device *dev_scsi, int fd,
                                  char *serial, char *serial_short, int max_len) {
        int retval;
        int ser_ind;
        int i;
        int len;
        unsigned char buf[SCSI_INQ_BUFF_LEN];

        FUNC3(buf, SCSI_INQ_BUFF_LEN);
        retval = FUNC4(dev_scsi, fd, 1, PAGE_80, buf, SCSI_INQ_BUFF_LEN);
        if (retval < 0)
                return retval;

        if (buf[1] != PAGE_80) {
                FUNC1("%s: Invalid page 0x80", dev_scsi->kernel);
                return 1;
        }

        len = 1 + VENDOR_LENGTH + MODEL_LENGTH + buf[3];
        if (max_len < len) {
                FUNC1("%s: length %d too short - need %d",
                          dev_scsi->kernel, max_len, len);
                return 1;
        }
        /*
         * Prepend 'S' to avoid unlikely collision with page 0x83 vendor
         * specific type where we prepend '0' + vendor + model.
         */
        len = buf[3];
        if (serial) {
                serial[0] = 'S';
                ser_ind = FUNC0(dev_scsi, serial + 1);
                if (ser_ind < 0)
                        return 1;
                ser_ind++; /* for the leading 'S' */
                for (i = 4; i < len + 4; i++, ser_ind++)
                        serial[ser_ind] = buf[i];
        }
        if (serial_short) {
                FUNC2(serial_short, buf + 4, len);
                serial_short[len] = '\0';
        }
        return 0;
}