
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MFD_CLOEXEC ;
 int O_CLOEXEC ;
 int O_RDWR ;
 int getpid_cached () ;
 int log_debug (char*,char const*,...) ;
 int memfd_create (char const*,int ) ;
 int open_tmpfile_unlinkable (char const*,int) ;

int open_serialization_fd(const char *ident) {
        int fd;

        fd = memfd_create(ident, MFD_CLOEXEC);
        if (fd < 0) {
                const char *path;

                path = getpid_cached() == 1 ? "/run/systemd" : "/tmp";
                fd = open_tmpfile_unlinkable(path, O_RDWR|O_CLOEXEC);
                if (fd < 0)
                        return fd;

                log_debug("Serializing %s to %s.", ident, path);
        } else
                log_debug("Serializing %s to memfd.", ident);

        return fd;
}
