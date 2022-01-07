
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmd {int dummy; } ;
typedef int header ;
typedef int format ;
typedef int dvdstruct ;
typedef int buffer ;


 int EINVAL ;
 int ENOMEDIUM ;
 int SYNTHETIC_ERRNO (int ) ;
 int cd_media ;
 int cd_media_cd_rom ;
 scalar_t__ cd_media_dvd_plus_rw ;
 scalar_t__ cd_media_dvd_plus_rw_dl ;
 scalar_t__ cd_media_dvd_ram ;
 scalar_t__ cd_media_dvd_rw_ro ;
 unsigned char cd_media_session_count ;
 unsigned char cd_media_session_next ;
 char* cd_media_state ;
 unsigned char cd_media_track_count ;
 int info_scsi_cmd_err (char*,int) ;
 int log_debug (char*,...) ;
 int log_debug_errno (int ,char*) ;
 int scsi_cmd_init (struct scsi_cmd*) ;
 int scsi_cmd_run (struct scsi_cmd*,int,unsigned char*,int) ;
 int scsi_cmd_set (struct scsi_cmd*,int,int) ;

__attribute__((used)) static int cd_media_info(int fd) {
        struct scsi_cmd sc;
        unsigned char header[32];
        static const char *const media_status[] = {
                "blank",
                "appendable",
                "complete",
                "other"
        };
        int err;

        scsi_cmd_init(&sc);
        scsi_cmd_set(&sc, 0, 0x51);
        scsi_cmd_set(&sc, 8, sizeof(header) & 0xff);
        scsi_cmd_set(&sc, 9, 0);
        err = scsi_cmd_run(&sc, fd, header, sizeof(header));
        if (err != 0) {
                info_scsi_cmd_err("READ DISC INFORMATION", err);
                return -1;
        };

        cd_media = 1;
        log_debug("disk type %02x", header[8]);
        log_debug("hardware reported media status: %s", media_status[header[2] & 3]);


        if (!cd_media_cd_rom)
                cd_media_state = media_status[header[2] & 3];




        if (cd_media_dvd_rw_ro && (header[2] & 3) == 1)
                cd_media_state = media_status[0];




        if ((cd_media_dvd_rw_ro || cd_media_dvd_plus_rw || cd_media_dvd_plus_rw_dl || cd_media_dvd_ram) && (header[2] & 3) > 1) {
                unsigned char buffer[32 * 2048];
                unsigned char len;
                int offset;

                if (cd_media_dvd_ram) {


                        unsigned char dvdstruct[8];
                        unsigned char format[12];

                        scsi_cmd_init(&sc);
                        scsi_cmd_set(&sc, 0, 0xAD);
                        scsi_cmd_set(&sc, 7, 0xC0);
                        scsi_cmd_set(&sc, 9, sizeof(dvdstruct));
                        scsi_cmd_set(&sc, 11, 0);
                        err = scsi_cmd_run(&sc, fd, dvdstruct, sizeof(dvdstruct));
                        if (err != 0) {
                                info_scsi_cmd_err("READ DVD STRUCTURE", err);
                                return -1;
                        }
                        if (dvdstruct[4] & 0x02) {
                                cd_media_state = media_status[2];
                                log_debug("write-protected DVD-RAM media inserted");
                                goto determined;
                        }


                        scsi_cmd_init(&sc);
                        scsi_cmd_set(&sc, 0, 0x23);
                        scsi_cmd_set(&sc, 8, sizeof(format));
                        scsi_cmd_set(&sc, 9, 0);
                        err = scsi_cmd_run(&sc, fd, format, sizeof(format));
                        if (err != 0) {
                                info_scsi_cmd_err("READ DVD FORMAT CAPACITIES", err);
                                return -1;
                        }

                        len = format[3];
                        if (len & 7 || len < 16)
                                return log_debug_errno(SYNTHETIC_ERRNO(EINVAL),
                                                       "invalid format capacities length");

                        switch(format[8] & 3) {
                            case 1:
                                log_debug("unformatted DVD-RAM media inserted");





                                goto determined;

                            case 2:
                                log_debug("formatted DVD-RAM media inserted");
                                break;

                            case 3:
                                cd_media = 0;
                                return log_debug_errno(SYNTHETIC_ERRNO(ENOMEDIUM),
                                                       "format capacities returned no media");
                        }
                }





                scsi_cmd_init(&sc);
                scsi_cmd_set(&sc, 0, 0x28);
                scsi_cmd_set(&sc, 5, 0);
                scsi_cmd_set(&sc, 8, 32);
                scsi_cmd_set(&sc, 9, 0);
                err = scsi_cmd_run(&sc, fd, buffer, sizeof(buffer));
                if (err != 0) {
                        cd_media = 0;
                        info_scsi_cmd_err("READ FIRST 32 BLOCKS", err);
                        return -1;
                }





                for (offset = 32768; offset < (32768 + 2048); offset++) {
                        if (buffer [offset]) {
                                log_debug("data in block 16, assuming complete");
                                goto determined;
                        }
                }

                for (offset = 0; offset < 2048; offset++) {
                        if (buffer [offset]) {
                                log_debug("data in block 0, assuming complete");
                                goto determined;
                        }
                }

                cd_media_state = media_status[0];
                log_debug("no data in blocks 0 or 16, assuming blank");
        }

determined:


        if ((header[2] & 3) < 2 && !cd_media_dvd_rw_ro)
                cd_media_session_next = header[10] << 8 | header[5];
        cd_media_session_count = header[9] << 8 | header[4];
        cd_media_track_count = header[11] << 8 | header[6];

        return 0;
}
