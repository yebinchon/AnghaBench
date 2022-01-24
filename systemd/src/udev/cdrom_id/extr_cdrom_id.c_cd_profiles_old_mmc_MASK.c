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
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 int /*<<< orphan*/  ENOMEDIUM ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ cd_cd_r ; 
 int cd_media ; 
 int cd_media_cd_r ; 
 int cd_media_cd_rom ; 
 int cd_media_cd_rw ; 
 int cd_media_track_count ; 
 int cd_media_track_count_data ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmd*) ; 
 int FUNC5 (struct scsi_cmd*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct scsi_cmd*,int,int) ; 

__attribute__((used)) static int FUNC7(int fd) {
        struct scsi_cmd sc;
        int err;

        unsigned char header[32];

        FUNC4(&sc);
        FUNC6(&sc, 0, 0x51);
        FUNC6(&sc, 8, sizeof(header));
        FUNC6(&sc, 9, 0);
        err = FUNC5(&sc, fd, header, sizeof(header));
        if (err != 0) {
                FUNC1("READ DISC INFORMATION", err);
                if (cd_media == 1) {
                        FUNC2("no current profile, but disc is present; assuming CD-ROM");
                        cd_media_cd_rom = 1;
                        cd_media_track_count = 1;
                        cd_media_track_count_data = 1;
                        return 0;
                } else
                        return FUNC3(FUNC0(ENOMEDIUM),
                                               "no current profile, assuming no media");
        };

        cd_media = 1;

        if (header[2] & 16) {
                cd_media_cd_rw = 1;
                FUNC2("profile 0x0a media_cd_rw");
        } else if ((header[2] & 3) < 2 && cd_cd_r) {
                cd_media_cd_r = 1;
                FUNC2("profile 0x09 media_cd_r");
        } else {
                cd_media_cd_rom = 1;
                FUNC2("profile 0x08 media_cd_rom");
        }
        return 0;
}