
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
struct stat {int st_uid; } ;


 int STDIN_FILENO ;
 scalar_t__ fstat (int ,struct stat*) ;
 int getuid () ;
 scalar_t__ isatty (int ) ;
 char* uid_to_name (int ) ;

char* getlogname_malloc(void) {
        uid_t uid;
        struct stat st;

        if (isatty(STDIN_FILENO) && fstat(STDIN_FILENO, &st) >= 0)
                uid = st.st_uid;
        else
                uid = getuid();

        return uid_to_name(uid);
}
