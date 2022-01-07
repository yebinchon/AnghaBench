
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOENT ;
 int ENOTEMPTY ;
 int IN_SET (int,int ,int ) ;
 int LOG_DEBUG ;
 int LOG_ERR ;
 int errno ;
 int log_full_errno (int ,int,char*,char const*) ;
 int log_info (char*,char const*) ;
 char* prefix_roota (char const*,char const*) ;
 scalar_t__ rmdir (char const*) ;

__attribute__((used)) static int rmdir_one(const char *prefix, const char *suffix) {
        const char *p;

        p = prefix_roota(prefix, suffix);
        if (rmdir(p) < 0) {
                bool ignore = IN_SET(errno, ENOENT, ENOTEMPTY);

                log_full_errno(ignore ? LOG_DEBUG : LOG_ERR, errno,
                               "Failed to remove directory \"%s\": %m", p);
                if (!ignore)
                        return -errno;
        } else
                log_info("Removed \"%s\".", p);

        return 0;
}
