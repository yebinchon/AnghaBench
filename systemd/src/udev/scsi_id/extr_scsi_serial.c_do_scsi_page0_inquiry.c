
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_id_device {int kernel; int vendor; } ;


 unsigned char MODEL_LENGTH ;
 int VENDOR_LENGTH ;
 int log_debug (char*,int ,...) ;
 int memzero (unsigned char*,unsigned int) ;
 int scsi_inquiry (struct scsi_id_device*,int,int,int,unsigned char*,unsigned int) ;
 scalar_t__ strneq (char*,int ,int) ;

__attribute__((used)) static int do_scsi_page0_inquiry(struct scsi_id_device *dev_scsi, int fd,
                                 unsigned char *buffer, unsigned len) {
        int retval;

        memzero(buffer, len);
        retval = scsi_inquiry(dev_scsi, fd, 1, 0x0, buffer, len);
        if (retval < 0)
                return 1;

        if (buffer[1] != 0) {
                log_debug("%s: page 0 not available.", dev_scsi->kernel);
                return 1;
        }
        if (buffer[3] > len) {
                log_debug("%s: page 0 buffer too long %d", dev_scsi->kernel, buffer[3]);
                return 1;
        }
        if (buffer[3] > MODEL_LENGTH) {




                if (strneq((char*) buffer + VENDOR_LENGTH, dev_scsi->vendor, VENDOR_LENGTH)) {
                        log_debug("%s: invalid page0 data", dev_scsi->kernel);
                        return 1;
                }
        }
        return 0;
}
