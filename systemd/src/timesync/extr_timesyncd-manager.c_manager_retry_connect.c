
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int usec_t ;
typedef int sd_event_source ;
typedef int Manager ;


 int assert (int *) ;
 int manager_connect (int *) ;

__attribute__((used)) static int manager_retry_connect(sd_event_source *source, usec_t usec, void *userdata) {
        Manager *m = userdata;

        assert(m);

        return manager_connect(m);
}
