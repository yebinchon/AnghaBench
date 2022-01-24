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
typedef  int /*<<< orphan*/  toc ;
struct scsi_cmd {int dummy; } ;
typedef  int /*<<< orphan*/  header ;

/* Variables and functions */
 unsigned long long cd_media_session_last_offset ; 
 int /*<<< orphan*/  cd_media_track_count_audio ; 
 int /*<<< orphan*/  cd_media_track_count_data ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,unsigned char,unsigned int,...) ; 
 int /*<<< orphan*/  FUNC2 (struct scsi_cmd*) ; 
 int FUNC3 (struct scsi_cmd*,int,unsigned char*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct scsi_cmd*,int,int) ; 

__attribute__((used)) static int FUNC5(int fd) {
        struct scsi_cmd sc;
        unsigned char header[12];
        unsigned char toc[65536];
        unsigned len, i, num_tracks;
        unsigned char *p;
        int err;

        FUNC2(&sc);
        FUNC4(&sc, 0, 0x43);
        FUNC4(&sc, 6, 1);
        FUNC4(&sc, 8, sizeof(header) & 0xff);
        FUNC4(&sc, 9, 0);
        err = FUNC3(&sc, fd, header, sizeof(header));
        if (err != 0) {
                FUNC0("READ TOC", err);
                return -1;
        }

        len = (header[0] << 8 | header[1]) + 2;
        FUNC1("READ TOC: len: %d, start track: %d, end track: %d", len, header[2], header[3]);
        if (len > sizeof(toc))
                return -1;
        if (len < 2)
                return -1;
        /* 2: first track, 3: last track */
        num_tracks = header[3] - header[2] + 1;

        /* empty media has no tracks */
        if (len < 8)
                return 0;

        FUNC2(&sc);
        FUNC4(&sc, 0, 0x43);
        FUNC4(&sc, 6, header[2]); /* First Track/Session Number */
        FUNC4(&sc, 7, (len >> 8) & 0xff);
        FUNC4(&sc, 8, len & 0xff);
        FUNC4(&sc, 9, 0);
        err = FUNC3(&sc, fd, toc, len);
        if (err != 0) {
                FUNC0("READ TOC (tracks)", err);
                return -1;
        }

        /* Take care to not iterate beyond the last valid track as specified in
         * the TOC, but also avoid going beyond the TOC length, just in case
         * the last track number is invalidly large */
        for (p = toc+4, i = 4; i < len-8 && num_tracks > 0; i += 8, p += 8, --num_tracks) {
                unsigned block;
                unsigned is_data_track;

                is_data_track = (p[1] & 0x04) != 0;

                block = p[4] << 24 | p[5] << 16 | p[6] << 8 | p[7];
                FUNC1("track=%u info=0x%x(%s) start_block=%u",
                     p[2], p[1] & 0x0f, is_data_track ? "data":"audio", block);

                if (is_data_track)
                        cd_media_track_count_data++;
                else
                        cd_media_track_count_audio++;
        }

        FUNC2(&sc);
        FUNC4(&sc, 0, 0x43);
        FUNC4(&sc, 2, 1); /* Session Info */
        FUNC4(&sc, 8, sizeof(header));
        FUNC4(&sc, 9, 0);
        err = FUNC3(&sc, fd, header, sizeof(header));
        if (err != 0) {
                FUNC0("READ TOC (multi session)", err);
                return -1;
        }
        len = header[4+4] << 24 | header[4+5] << 16 | header[4+6] << 8 | header[4+7];
        FUNC1("last track %u starts at block %u", header[4+2], len);
        cd_media_session_last_offset = (unsigned long long int)len * 2048;
        return 0;
}