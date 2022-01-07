
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ENOENT ;
 scalar_t__ EROFS ;
 int F_OK ;
 scalar_t__ access (char const*,int ) ;
 scalar_t__ errno ;
 int log_error_errno (scalar_t__,char*,char const*) ;
 scalar_t__ unlink (char const*) ;

int unlink_or_warn(const char *filename) {
        if (unlink(filename) < 0 && errno != ENOENT)



                if (errno != EROFS || access(filename, F_OK) >= 0)
                        return log_error_errno(errno, "Failed to remove \"%s\": %m", filename);

        return 0;
}
