
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_event_source ;
typedef int Session ;


 int assert (int *) ;
 int session_stop (int *,int) ;

__attribute__((used)) static int release_timeout_callback(sd_event_source *es, uint64_t usec, void *userdata) {
        Session *s = userdata;

        assert(es);
        assert(s);

        session_stop(s, 0);
        return 0;
}
