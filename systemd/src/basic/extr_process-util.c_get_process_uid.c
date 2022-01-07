
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef scalar_t__ pid_t ;


 int get_process_id (scalar_t__,char*,int *) ;
 scalar_t__ getpid_cached () ;
 int getuid () ;

int get_process_uid(pid_t pid, uid_t *uid) {

        if (pid == 0 || pid == getpid_cached()) {
                *uid = getuid();
                return 0;
        }

        return get_process_id(pid, "Uid:", uid);
}
