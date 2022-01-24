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
struct scsi_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  features ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,unsigned int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (struct scsi_cmd*) ; 
 int FUNC10 (struct scsi_cmd*,int,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC11 (struct scsi_cmd*,int,unsigned int) ; 

__attribute__((used)) static int FUNC12(int fd) {
        struct scsi_cmd sc;
        unsigned char features[65530];
        unsigned cur_profile = 0;
        unsigned len;
        unsigned i;
        int err;
        int ret;

        ret = -1;

        /* First query the current profile */
        FUNC9(&sc);
        FUNC11(&sc, 0, 0x46);
        FUNC11(&sc, 8, 8);
        FUNC11(&sc, 9, 0);
        err = FUNC10(&sc, fd, features, 8);
        if (err != 0) {
                FUNC7("GET CONFIGURATION", err);
                /* handle pre-MMC2 drives which do not support GET CONFIGURATION */
                if (FUNC3(err) == 0x5 && FUNC1(FUNC0(err), 0x20, 0x24)) {
                        FUNC8("drive is pre-MMC2 and does not support 46h get configuration command");
                        FUNC8("trying to work around the problem");
                        ret = FUNC4(fd);
                }
                goto out;
        }

        cur_profile = features[6] << 8 | features[7];
        if (cur_profile > 0) {
                FUNC8("current profile 0x%02x", cur_profile);
                FUNC5(cur_profile);
                ret = 0; /* we have media */
        } else
                FUNC8("no current profile, assuming no media");

        len = features[0] << 24 | features[1] << 16 | features[2] << 8 | features[3];
        FUNC8("GET CONFIGURATION: size of features buffer 0x%04x", len);

        if (len > sizeof(features)) {
                FUNC8("cannot get features in a single query, truncating");
                len = sizeof(features);
        } else if (len <= 8)
                len = sizeof(features);

        /* Now get the full feature buffer */
        FUNC9(&sc);
        FUNC11(&sc, 0, 0x46);
        FUNC11(&sc, 7, ( len >> 8 ) & 0xff);
        FUNC11(&sc, 8, len & 0xff);
        FUNC11(&sc, 9, 0);
        err = FUNC10(&sc, fd, features, len);
        if (err != 0) {
                FUNC7("GET CONFIGURATION", err);
                return -1;
        }

        /* parse the length once more, in case the drive decided to have other features suddenly :) */
        len = features[0] << 24 | features[1] << 16 | features[2] << 8 | features[3];
        FUNC8("GET CONFIGURATION: size of features buffer 0x%04x", len);

        if (len > sizeof(features)) {
                FUNC8("cannot get features in a single query, truncating");
                len = sizeof(features);
        }

        /* device features */
        for (i = 8; i+4 < len; i += (4 + features[i+3])) {
                unsigned feature;

                feature = features[i] << 8 | features[i+1];

                switch (feature) {
                case 0x00:
                        FUNC8("GET CONFIGURATION: feature 'profiles', with %i entries", features[i+3] / 4);
                        FUNC6(&features[i]+4, FUNC2(features[i+3], len - i - 4));
                        break;
                default:
                        FUNC8("GET CONFIGURATION: feature 0x%04x <ignored>, with 0x%02x bytes", feature, features[i+3]);
                        break;
                }
        }
out:
        return ret;
}