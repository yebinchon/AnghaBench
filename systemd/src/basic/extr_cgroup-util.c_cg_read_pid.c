
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ pid_t ;
typedef scalar_t__ FILE ;


 int EIO ;
 int assert (scalar_t__*) ;
 scalar_t__ errno ;
 int errno_or_else (int) ;
 scalar_t__ feof (scalar_t__*) ;
 int fscanf (scalar_t__*,char*,unsigned long*) ;

int cg_read_pid(FILE *f, pid_t *_pid) {
        unsigned long ul;




        assert(f);
        assert(_pid);

        errno = 0;
        if (fscanf(f, "%lu", &ul) != 1) {

                if (feof(f))
                        return 0;

                return errno_or_else(EIO);
        }

        if (ul <= 0)
                return -EIO;

        *_pid = (pid_t) ul;
        return 1;
}
