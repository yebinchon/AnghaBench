
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scsi_cmd {int dummy; } ;
typedef int features ;


 int ASC (int) ;
 scalar_t__ IN_SET (int ,int,int) ;
 int MIN (unsigned char,unsigned int) ;
 int SK (int) ;
 int cd_profiles_old_mmc (int) ;
 int feature_profile_media (unsigned int) ;
 int feature_profiles (unsigned char*,int ) ;
 int info_scsi_cmd_err (char*,int) ;
 int log_debug (char*,...) ;
 int scsi_cmd_init (struct scsi_cmd*) ;
 int scsi_cmd_run (struct scsi_cmd*,int,unsigned char*,unsigned int) ;
 int scsi_cmd_set (struct scsi_cmd*,int,unsigned int) ;

__attribute__((used)) static int cd_profiles(int fd) {
        struct scsi_cmd sc;
        unsigned char features[65530];
        unsigned cur_profile = 0;
        unsigned len;
        unsigned i;
        int err;
        int ret;

        ret = -1;


        scsi_cmd_init(&sc);
        scsi_cmd_set(&sc, 0, 0x46);
        scsi_cmd_set(&sc, 8, 8);
        scsi_cmd_set(&sc, 9, 0);
        err = scsi_cmd_run(&sc, fd, features, 8);
        if (err != 0) {
                info_scsi_cmd_err("GET CONFIGURATION", err);

                if (SK(err) == 0x5 && IN_SET(ASC(err), 0x20, 0x24)) {
                        log_debug("drive is pre-MMC2 and does not support 46h get configuration command");
                        log_debug("trying to work around the problem");
                        ret = cd_profiles_old_mmc(fd);
                }
                goto out;
        }

        cur_profile = features[6] << 8 | features[7];
        if (cur_profile > 0) {
                log_debug("current profile 0x%02x", cur_profile);
                feature_profile_media(cur_profile);
                ret = 0;
        } else
                log_debug("no current profile, assuming no media");

        len = features[0] << 24 | features[1] << 16 | features[2] << 8 | features[3];
        log_debug("GET CONFIGURATION: size of features buffer 0x%04x", len);

        if (len > sizeof(features)) {
                log_debug("cannot get features in a single query, truncating");
                len = sizeof(features);
        } else if (len <= 8)
                len = sizeof(features);


        scsi_cmd_init(&sc);
        scsi_cmd_set(&sc, 0, 0x46);
        scsi_cmd_set(&sc, 7, ( len >> 8 ) & 0xff);
        scsi_cmd_set(&sc, 8, len & 0xff);
        scsi_cmd_set(&sc, 9, 0);
        err = scsi_cmd_run(&sc, fd, features, len);
        if (err != 0) {
                info_scsi_cmd_err("GET CONFIGURATION", err);
                return -1;
        }


        len = features[0] << 24 | features[1] << 16 | features[2] << 8 | features[3];
        log_debug("GET CONFIGURATION: size of features buffer 0x%04x", len);

        if (len > sizeof(features)) {
                log_debug("cannot get features in a single query, truncating");
                len = sizeof(features);
        }


        for (i = 8; i+4 < len; i += (4 + features[i+3])) {
                unsigned feature;

                feature = features[i] << 8 | features[i+1];

                switch (feature) {
                case 0x00:
                        log_debug("GET CONFIGURATION: feature 'profiles', with %i entries", features[i+3] / 4);
                        feature_profiles(&features[i]+4, MIN(features[i+3], len - i - 4));
                        break;
                default:
                        log_debug("GET CONFIGURATION: feature 0x%04x <ignored>, with 0x%02x bytes", feature, features[i+3]);
                        break;
                }
        }
out:
        return ret;
}
