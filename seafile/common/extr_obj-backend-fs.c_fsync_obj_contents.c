
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ HANDLE ;


 scalar_t__ EINVAL ;
 int F_FULLFSYNC ;
 int FlushFileBuffers (scalar_t__) ;
 int GetLastError () ;
 scalar_t__ INVALID_HANDLE_VALUE ;
 scalar_t__ _get_osfhandle (int) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,int *) ;
 scalar_t__ fsync (int) ;
 int seaf_warning (char*,...) ;
 int strerror (scalar_t__) ;

__attribute__((used)) static int
fsync_obj_contents (int fd)
{




    if (fsync (fd) < 0) {
        if (errno == EINVAL)
            return 0;
        else {
            seaf_warning ("Failed to fsync: %s.\n", strerror(errno));
            return -1;
        }
    }
    return 0;
}
