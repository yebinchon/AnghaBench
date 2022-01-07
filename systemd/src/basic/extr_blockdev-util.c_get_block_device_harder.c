
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char const dev_t ;


 int assert (char const*) ;
 int block_get_originating (char const,char const*) ;
 int get_block_device (char const*,char const*) ;
 int log_debug_errno (int,char*,char const*) ;

int get_block_device_harder(const char *path, dev_t *ret) {
        int r;

        assert(path);
        assert(ret);




        r = get_block_device(path, ret);
        if (r <= 0)
                return r;

        r = block_get_originating(*ret, ret);
        if (r < 0)
                log_debug_errno(r, "Failed to chase block device '%s', ignoring: %m", path);

        return 1;
}
