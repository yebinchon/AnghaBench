
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct index_state {int dummy; } ;


 int O_BINARY ;
 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int SEAF_PATH_MAX ;
 int close (int) ;
 int errno ;
 int seaf_util_create (char*,int,int) ;
 int seaf_util_rename (char*,char const*) ;
 int seaf_warning (char*,int ,...) ;
 int snprintf (char*,int,char*,char const*) ;
 int strerror (int ) ;
 scalar_t__ write_index (struct index_state*,int) ;

int
update_index (struct index_state *istate, const char *index_path)
{
    char index_shadow[SEAF_PATH_MAX];
    int index_fd;
    int ret = 0;

    snprintf (index_shadow, SEAF_PATH_MAX, "%s.shadow", index_path);
    index_fd = seaf_util_create (index_shadow, O_RDWR | O_CREAT | O_TRUNC | O_BINARY,
                                 0666);
    if (index_fd < 0) {
        seaf_warning ("Failed to open shadow index: %s.\n", strerror(errno));
        return -1;
    }

    if (write_index (istate, index_fd) < 0) {
        seaf_warning ("Failed to write shadow index: %s.\n", strerror(errno));
        close (index_fd);
        return -1;
    }
    close (index_fd);

    ret = seaf_util_rename (index_shadow, index_path);
    if (ret < 0) {
        seaf_warning ("Failed to update index errno=%d %s\n", errno, strerror(errno));
        return -1;
    }
    return 0;
}
