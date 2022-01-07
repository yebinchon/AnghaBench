
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; int st_gid; int st_uid; } ;
typedef int FILE ;


 int errno ;
 int fchmod_and_chown (int ,int,int ,int ) ;
 int fileno (int *) ;
 scalar_t__ fstat (int ,struct stat*) ;

__attribute__((used)) static int sync_rights(FILE *from, FILE *to) {
        struct stat st;

        if (fstat(fileno(from), &st) < 0)
                return -errno;

        return fchmod_and_chown(fileno(to), st.st_mode & 07777, st.st_uid, st.st_gid);
}
