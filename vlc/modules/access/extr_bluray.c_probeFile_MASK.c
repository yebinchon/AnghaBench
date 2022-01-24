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
typedef  scalar_t__ uint8_t ;
struct stat {int /*<<< orphan*/  st_mode; } ;
typedef  int /*<<< orphan*/  peek ;

/* Variables and functions */
 int O_NONBLOCK ; 
 int O_RDONLY ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int VLC_EGENERIC ; 
 int VLC_SUCCESS ; 
 int FUNC2 (scalar_t__*) ; 
 int FUNC3 (int,struct stat*) ; 
 int FUNC4 (int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,scalar_t__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (char const*,int) ; 

__attribute__((used)) static int FUNC8(const char *psz_name)
{
    struct stat stat_info;
    uint8_t peek[2048];
    unsigned i;
    int ret = VLC_EGENERIC;
    int fd;

    fd = FUNC7(psz_name, O_RDONLY | O_NONBLOCK);
    if (fd == -1) {
        return VLC_EGENERIC;
    }

    if (FUNC3(fd, &stat_info) == -1) {
        goto bailout;
    }
    if (!FUNC1(stat_info.st_mode) && !FUNC0(stat_info.st_mode)) {
        goto bailout;
    }

    /* first sector should be filled with zeros */
    if (FUNC5(fd, peek, sizeof(peek)) != sizeof(peek)) {
        goto bailout;
    }
    for (i = 0; i < sizeof(peek); i++) {
        if (peek[ i ]) {
            goto bailout;
        }
    }

    /* Check AVDP tag checksum */
    if (FUNC4(fd, 256 * 2048, SEEK_SET) == -1 ||
        FUNC5(fd, peek, 16) != 16 ||
        FUNC2(peek) != 2) {
        goto bailout;
    }

    ret = VLC_SUCCESS;

bailout:
    FUNC6(fd);
    return ret;
}