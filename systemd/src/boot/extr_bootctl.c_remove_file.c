
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int assert (char const*) ;
 int errno ;
 int log_full_errno (int ,int,char*,char const*) ;
 int log_info (char*,char const*) ;
 char* prefix_roota (char const*,char const*) ;
 scalar_t__ unlink (char const*) ;

__attribute__((used)) static int remove_file(const char *root, const char *file) {
        const char *p;

        assert(root);
        assert(file);

        p = prefix_roota(root, file);
        if (unlink(p) < 0) {
                log_full_errno(errno == ENOENT ? LOG_DEBUG : LOG_ERR, errno,
                               "Failed to unlink file \"%s\": %m", p);

                return errno == ENOENT ? 0 : -errno;
        }

        log_info("Removed \"%s\".", p);
        return 1;
}
