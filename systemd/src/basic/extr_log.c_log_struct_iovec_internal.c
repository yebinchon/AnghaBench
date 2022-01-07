
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct msghdr {int msg_iovlen; struct iovec* msg_iov; } ;
struct iovec {scalar_t__ iov_len; scalar_t__ iov_base; } ;
typedef int header ;
typedef size_t LogRealm ;


 int ERRNO_VALUE (int) ;
 scalar_t__ IN_SET (scalar_t__,int ,int ,int ) ;
 struct iovec IOVEC_MAKE_STRING (char*) ;
 int LINE_MAX ;
 int LOG_FACMASK ;
 scalar_t__ LOG_PRI (int) ;
 size_t LOG_REALM_REMOVE_LEVEL (int) ;
 int LOG_TARGET_AUTO ;
 int LOG_TARGET_JOURNAL ;
 int LOG_TARGET_JOURNAL_OR_KMSG ;
 scalar_t__ LOG_TARGET_NULL ;
 int MSG_NOSIGNAL ;
 int PROTECT_ERRNO ;
 scalar_t__ STRLEN (char*) ;
 scalar_t__ _likely_ (int) ;
 scalar_t__ _unlikely_ (int) ;
 scalar_t__ journal_fd ;
 int log_dispatch_internal (int,int,char const*,int,char const*,int *,int *,int *,int *,char*) ;
 int log_do_header (char*,int,int,int,char const*,int,char const*,int *,int *,int *,int *) ;
 int log_facility ;
 scalar_t__* log_max_level ;
 scalar_t__ log_target ;
 scalar_t__ memory_startswith (scalar_t__,scalar_t__,char*) ;
 scalar_t__ sendmsg (scalar_t__,struct msghdr*,int ) ;
 char* strndupa (scalar_t__,scalar_t__) ;

int log_struct_iovec_internal(
                int level,
                int error,
                const char *file,
                int line,
                const char *func,
                const struct iovec input_iovec[],
                size_t n_input_iovec) {

        LogRealm realm = LOG_REALM_REMOVE_LEVEL(level);
        PROTECT_ERRNO;
        size_t i;
        char *m;

        if (_likely_(LOG_PRI(level) > log_max_level[realm]) ||
            log_target == LOG_TARGET_NULL)
                return -ERRNO_VALUE(error);

        if ((level & LOG_FACMASK) == 0)
                level |= log_facility;

        if (IN_SET(log_target, LOG_TARGET_AUTO,
                               LOG_TARGET_JOURNAL_OR_KMSG,
                               LOG_TARGET_JOURNAL) &&
            journal_fd >= 0) {

                struct iovec iovec[1 + n_input_iovec*2];
                char header[LINE_MAX];
                struct msghdr mh = {
                        .msg_iov = iovec,
                        .msg_iovlen = 1 + n_input_iovec*2,
                };

                log_do_header(header, sizeof(header), level, error, file, line, func, ((void*)0), ((void*)0), ((void*)0), ((void*)0));
                iovec[0] = IOVEC_MAKE_STRING(header);

                for (i = 0; i < n_input_iovec; i++) {
                        iovec[1+i*2] = input_iovec[i];
                        iovec[1+i*2+1] = IOVEC_MAKE_STRING("\n");
                }

                if (sendmsg(journal_fd, &mh, MSG_NOSIGNAL) >= 0)
                        return -ERRNO_VALUE(error);
        }

        for (i = 0; i < n_input_iovec; i++)
                if (memory_startswith(input_iovec[i].iov_base, input_iovec[i].iov_len, "MESSAGE="))
                        break;

        if (_unlikely_(i >= n_input_iovec))
                return -ERRNO_VALUE(error);

        m = strndupa(input_iovec[i].iov_base + STRLEN("MESSAGE="),
                     input_iovec[i].iov_len - STRLEN("MESSAGE="));

        return log_dispatch_internal(level, error, file, line, func, ((void*)0), ((void*)0), ((void*)0), ((void*)0), m);
}
