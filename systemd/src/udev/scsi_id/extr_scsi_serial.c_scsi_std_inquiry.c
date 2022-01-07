
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_rdev; } ;
struct scsi_id_device {char* vendor; char* model; char* revision; int type; int kernel; } ;


 int O_CLOEXEC ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int SCSI_INQ_BUFF_LEN ;
 int close (int) ;
 int errno ;
 scalar_t__ fstat (int,struct stat*) ;
 int log_debug_errno (int ,char*,char const*) ;
 int major (int ) ;
 int memcpy (char*,unsigned char*,int) ;
 int memzero (unsigned char*,int) ;
 int minor (int ) ;
 int open (char const*,int) ;
 int scsi_inquiry (struct scsi_id_device*,int,int ,int ,unsigned char*,int) ;
 int sprintf (int ,char*,unsigned char,...) ;

int scsi_std_inquiry(struct scsi_id_device *dev_scsi, const char *devname) {
        int fd;
        unsigned char buf[SCSI_INQ_BUFF_LEN];
        struct stat statbuf;
        int err = 0;

        fd = open(devname, O_RDONLY | O_NONBLOCK | O_CLOEXEC);
        if (fd < 0) {
                log_debug_errno(errno, "scsi_id: cannot open %s: %m", devname);
                return 1;
        }

        if (fstat(fd, &statbuf) < 0) {
                log_debug_errno(errno, "scsi_id: cannot stat %s: %m", devname);
                err = 2;
                goto out;
        }
        sprintf(dev_scsi->kernel,"%d:%d", major(statbuf.st_rdev),
                minor(statbuf.st_rdev));

        memzero(buf, SCSI_INQ_BUFF_LEN);
        err = scsi_inquiry(dev_scsi, fd, 0, 0, buf, SCSI_INQ_BUFF_LEN);
        if (err < 0)
                goto out;

        err = 0;
        memcpy(dev_scsi->vendor, buf + 8, 8);
        dev_scsi->vendor[8] = '\0';
        memcpy(dev_scsi->model, buf + 16, 16);
        dev_scsi->model[16] = '\0';
        memcpy(dev_scsi->revision, buf + 32, 4);
        dev_scsi->revision[4] = '\0';
        sprintf(dev_scsi->type,"%x", buf[0] & 0x1f);

out:
        close(fd);
        return err;
}
