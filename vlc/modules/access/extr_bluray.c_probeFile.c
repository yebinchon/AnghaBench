
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct stat {int st_mode; } ;
typedef int peek ;


 int O_NONBLOCK ;
 int O_RDONLY ;
 int SEEK_SET ;
 int S_ISBLK (int ) ;
 int S_ISREG (int ) ;
 int VLC_EGENERIC ;
 int VLC_SUCCESS ;
 int decode_descriptor_tag (scalar_t__*) ;
 int fstat (int,struct stat*) ;
 int lseek (int,int,int ) ;
 int read (int,scalar_t__*,int) ;
 int vlc_close (int) ;
 int vlc_open (char const*,int) ;

__attribute__((used)) static int probeFile(const char *psz_name)
{
    struct stat stat_info;
    uint8_t peek[2048];
    unsigned i;
    int ret = VLC_EGENERIC;
    int fd;

    fd = vlc_open(psz_name, O_RDONLY | O_NONBLOCK);
    if (fd == -1) {
        return VLC_EGENERIC;
    }

    if (fstat(fd, &stat_info) == -1) {
        goto bailout;
    }
    if (!S_ISREG(stat_info.st_mode) && !S_ISBLK(stat_info.st_mode)) {
        goto bailout;
    }


    if (read(fd, peek, sizeof(peek)) != sizeof(peek)) {
        goto bailout;
    }
    for (i = 0; i < sizeof(peek); i++) {
        if (peek[ i ]) {
            goto bailout;
        }
    }


    if (lseek(fd, 256 * 2048, SEEK_SET) == -1 ||
        read(fd, peek, 16) != 16 ||
        decode_descriptor_tag(peek) != 2) {
        goto bailout;
    }

    ret = VLC_SUCCESS;

bailout:
    vlc_close(fd);
    return ret;
}
