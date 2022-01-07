
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_id128_t ;
typedef scalar_t__ Id128Format ;


 scalar_t__ ID128_UUID ;
 scalar_t__ _ID128_FORMAT_MAX ;
 int assert (int) ;
 int errno ;
 scalar_t__ fsync (int) ;
 int fsync_directory_of_file (int) ;
 int id128_to_uuid_string (int ,char*) ;
 int loop_write (int,char*,size_t,int) ;
 int sd_id128_to_string (int ,char*) ;

int id128_write_fd(int fd, Id128Format f, sd_id128_t id, bool do_sync) {
        char buffer[36 + 2];
        size_t sz;
        int r;

        assert(fd >= 0);
        assert(f < _ID128_FORMAT_MAX);

        if (f != ID128_UUID) {
                sd_id128_to_string(id, buffer);
                buffer[32] = '\n';
                sz = 33;
        } else {
                id128_to_uuid_string(id, buffer);
                buffer[36] = '\n';
                sz = 37;
        }

        r = loop_write(fd, buffer, sz, 0);
        if (r < 0)
                return r;

        if (do_sync) {
                if (fsync(fd) < 0)
                        return -errno;

                r = fsync_directory_of_file(fd);
                if (r < 0)
                        return r;
        }

        return 0;
}
