
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef enum nss_status { ____Placeholder_nss_status } nss_status ;
struct TYPE_4__ {int mutex; } ;
typedef TYPE_1__ GetentData ;


 int BLOCK_SIGNALS (int ) ;
 int NSS_SIGNALS_BLOCK ;
 int NSS_STATUS_SUCCESS ;
 int PROTECT_ERRNO ;
 int assert_se (int) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;
 int systemd_endent (TYPE_1__*) ;

__attribute__((used)) static enum nss_status nss_systemd_endent(GetentData *p) {
        PROTECT_ERRNO;
        BLOCK_SIGNALS(NSS_SIGNALS_BLOCK);

        assert_se(pthread_mutex_lock(&p->mutex) == 0);
        systemd_endent(p);
        assert_se(pthread_mutex_unlock(&p->mutex) == 0);

        return NSS_STATUS_SUCCESS;
}
