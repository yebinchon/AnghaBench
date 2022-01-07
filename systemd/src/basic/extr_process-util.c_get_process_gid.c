
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uid_t ;
typedef scalar_t__ pid_t ;
typedef int gid_t ;


 int assert_cc (int) ;
 int get_process_id (scalar_t__,char*,int *) ;
 int getgid () ;
 scalar_t__ getpid_cached () ;

int get_process_gid(pid_t pid, gid_t *gid) {

        if (pid == 0 || pid == getpid_cached()) {
                *gid = getgid();
                return 0;
        }

        assert_cc(sizeof(uid_t) == sizeof(gid_t));
        return get_process_id(pid, "Gid:", gid);
}
