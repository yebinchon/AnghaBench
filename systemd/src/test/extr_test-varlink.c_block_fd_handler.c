
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int sd_event_source ;
typedef int c ;


 int SD_EVENT_OFF ;
 int assert_se (int) ;
 scalar_t__ fd_nonblock (int,int) ;
 int read (int,char*,int) ;
 scalar_t__ sd_event_source_set_enabled (int *,int ) ;

__attribute__((used)) static int block_fd_handler(sd_event_source *s, int fd, uint32_t revents, void *userdata) {
        char c;

        assert_se(fd_nonblock(fd, 0) >= 0);

        assert_se(read(fd, &c, sizeof(c)) == sizeof(c));


        assert_se(read(fd, &c, sizeof(c)) == 0);

        assert_se(fd_nonblock(fd, 1) >= 0);

        assert_se(sd_event_source_set_enabled(s, SD_EVENT_OFF) >= 0);

        return 0;
}
