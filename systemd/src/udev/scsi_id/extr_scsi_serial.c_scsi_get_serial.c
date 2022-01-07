
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct scsi_id_device {int serial_short; int serial; int tgpt_group; int wwn_vendor_extension; int wwn; int unit_serial_number; int kernel; } ;


 scalar_t__ EBUSY ;
 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int PAGE_80 ;
 int PAGE_83 ;
 int PAGE_83_PRE_SPC3 ;
 int SCSI_INQ_BUFF_LEN ;
 int close (int) ;
 scalar_t__ do_scsi_page0_inquiry (struct scsi_id_device*,int,unsigned char*,int) ;
 scalar_t__ do_scsi_page80_inquiry (struct scsi_id_device*,int,int ,int ,int) ;
 scalar_t__ do_scsi_page83_inquiry (struct scsi_id_device*,int,int ,int ,int,int ,int ,int ,int ) ;
 int do_scsi_page83_prespc3_inquiry (struct scsi_id_device*,int,int ,int ,int) ;
 scalar_t__ errno ;
 int initialize_srand () ;
 int log_debug (char*,int ,int) ;
 int memzero (int ,int) ;
 int nanosleep (struct timespec*,int *) ;
 int open (char const*,int) ;
 int rand () ;

int scsi_get_serial(struct scsi_id_device *dev_scsi, const char *devname,
                    int page_code, int len) {
        unsigned char page0[SCSI_INQ_BUFF_LEN];
        int fd = -1;
        int cnt;
        int ind;
        int retval;

        memzero(dev_scsi->serial, len);
        initialize_srand();
        for (cnt = 20; cnt > 0; cnt--) {
                struct timespec duration;

                fd = open(devname, O_RDONLY | O_NONBLOCK | O_CLOEXEC);
                if (fd >= 0 || errno != EBUSY)
                        break;
                duration.tv_sec = 0;
                duration.tv_nsec = (200 * 1000 * 1000) + (rand() % 100 * 1000 * 1000);
                nanosleep(&duration, ((void*)0));
        }
        if (fd < 0)
                return 1;

        if (page_code == PAGE_80) {
                if (do_scsi_page80_inquiry(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len)) {
                        retval = 1;
                        goto completed;
                } else {
                        retval = 0;
                        goto completed;
                }
        } else if (page_code == PAGE_83) {
                if (do_scsi_page83_inquiry(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len, dev_scsi->unit_serial_number, dev_scsi->wwn, dev_scsi->wwn_vendor_extension, dev_scsi->tgpt_group)) {
                        retval = 1;
                        goto completed;
                } else {
                        retval = 0;
                        goto completed;
                }
        } else if (page_code == PAGE_83_PRE_SPC3) {
                retval = do_scsi_page83_prespc3_inquiry(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len);
                if (retval) {





                        if (retval == 2) {
                                if (do_scsi_page83_inquiry(dev_scsi, fd, dev_scsi->serial, dev_scsi->serial_short, len, dev_scsi->unit_serial_number, dev_scsi->wwn, dev_scsi->wwn_vendor_extension, dev_scsi->tgpt_group)) {
                                        retval = 1;
                                        goto completed;
                                } else {
                                        retval = 0;
                                        goto completed;
                                }
                        }
                        else {
                                retval = 1;
                                goto completed;
                        }
                } else {
                        retval = 0;
                        goto completed;
                }
        } else if (page_code != 0x00) {
                log_debug("%s: unsupported page code 0x%d", dev_scsi->kernel, page_code);
                retval = 1;
                goto completed;
        }





        if (do_scsi_page0_inquiry(dev_scsi, fd, page0, SCSI_INQ_BUFF_LEN)) {





                retval = 1;
                goto completed;
        }

        for (ind = 4; ind <= page0[3] + 3; ind++)
                if (page0[ind] == PAGE_83)
                        if (!do_scsi_page83_inquiry(dev_scsi, fd,
                                                    dev_scsi->serial, dev_scsi->serial_short, len, dev_scsi->unit_serial_number, dev_scsi->wwn, dev_scsi->wwn_vendor_extension, dev_scsi->tgpt_group)) {



                                retval = 0;
                                goto completed;
                        }

        for (ind = 4; ind <= page0[3] + 3; ind++)
                if (page0[ind] == PAGE_80)
                        if (!do_scsi_page80_inquiry(dev_scsi, fd,
                                                    dev_scsi->serial, dev_scsi->serial_short, len)) {



                                retval = 0;
                                goto completed;
                        }
        retval = 1;

completed:
        close(fd);
        return retval;
}
