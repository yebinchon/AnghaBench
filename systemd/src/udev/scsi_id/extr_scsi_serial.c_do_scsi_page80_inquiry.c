
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_id_device {int kernel; } ;


 int MODEL_LENGTH ;
 unsigned char PAGE_80 ;
 int SCSI_INQ_BUFF_LEN ;
 int VENDOR_LENGTH ;
 int append_vendor_model (struct scsi_id_device*,char*) ;
 int log_debug (char*,int ,...) ;
 int memcpy (char*,unsigned char*,int) ;
 int memzero (unsigned char*,int) ;
 int scsi_inquiry (struct scsi_id_device*,int,int,unsigned char,unsigned char*,int) ;

__attribute__((used)) static int do_scsi_page80_inquiry(struct scsi_id_device *dev_scsi, int fd,
                                  char *serial, char *serial_short, int max_len) {
        int retval;
        int ser_ind;
        int i;
        int len;
        unsigned char buf[SCSI_INQ_BUFF_LEN];

        memzero(buf, SCSI_INQ_BUFF_LEN);
        retval = scsi_inquiry(dev_scsi, fd, 1, PAGE_80, buf, SCSI_INQ_BUFF_LEN);
        if (retval < 0)
                return retval;

        if (buf[1] != PAGE_80) {
                log_debug("%s: Invalid page 0x80", dev_scsi->kernel);
                return 1;
        }

        len = 1 + VENDOR_LENGTH + MODEL_LENGTH + buf[3];
        if (max_len < len) {
                log_debug("%s: length %d too short - need %d",
                          dev_scsi->kernel, max_len, len);
                return 1;
        }




        len = buf[3];
        if (serial) {
                serial[0] = 'S';
                ser_ind = append_vendor_model(dev_scsi, serial + 1);
                if (ser_ind < 0)
                        return 1;
                ser_ind++;
                for (i = 4; i < len + 4; i++, ser_ind++)
                        serial[ser_ind] = buf[i];
        }
        if (serial_short) {
                memcpy(serial_short, buf + 4, len);
                serial_short[len] = '\0';
        }
        return 0;
}
