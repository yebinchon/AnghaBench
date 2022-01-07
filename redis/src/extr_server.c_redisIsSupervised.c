
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SUPERVISED_AUTODETECT ;
 int SUPERVISED_SYSTEMD ;
 int SUPERVISED_UPSTART ;
 char* getenv (char*) ;
 int redisSupervisedSystemd () ;
 int redisSupervisedUpstart () ;

int redisIsSupervised(int mode) {
    if (mode == SUPERVISED_AUTODETECT) {
        const char *upstart_job = getenv("UPSTART_JOB");
        const char *notify_socket = getenv("NOTIFY_SOCKET");

        if (upstart_job) {
            redisSupervisedUpstart();
        } else if (notify_socket) {
            redisSupervisedSystemd();
        }
    } else if (mode == SUPERVISED_UPSTART) {
        return redisSupervisedUpstart();
    } else if (mode == SUPERVISED_SYSTEMD) {
        return redisSupervisedSystemd();
    }

    return 0;
}
