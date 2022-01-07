
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int sd_id128_t ;
typedef int buffer ;
typedef scalar_t__ Id128Format ;


 int EINVAL ;
 int ENOMEDIUM ;
 scalar_t__ ID128_PLAIN ;
 scalar_t__ ID128_UUID ;
 scalar_t__ _ID128_FORMAT_MAX ;
 int _fallthrough_ ;
 int assert (int) ;
 int loop_read (int,char*,int,int) ;
 int sd_id128_from_string (char*,int *) ;

int id128_read_fd(int fd, Id128Format f, sd_id128_t *ret) {
        char buffer[36 + 2];
        ssize_t l;

        assert(fd >= 0);
        assert(f < _ID128_FORMAT_MAX);






        l = loop_read(fd, buffer, sizeof(buffer), 0);
        if (l < 0)
                return (int) l;
        if (l == 0)
                return -ENOMEDIUM;

        switch (l) {

        case 33:
                if (buffer[32] != '\n')
                        return -EINVAL;

                _fallthrough_;
        case 32:
                if (f == ID128_UUID)
                        return -EINVAL;

                buffer[32] = 0;
                break;

        case 37:
                if (buffer[36] != '\n')
                        return -EINVAL;

                _fallthrough_;
        case 36:
                if (f == ID128_PLAIN)
                        return -EINVAL;

                buffer[36] = 0;
                break;

        default:
                return -EINVAL;
        }

        return sd_id128_from_string(buffer, ret);
}
