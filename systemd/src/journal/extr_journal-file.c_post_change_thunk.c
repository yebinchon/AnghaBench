
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int sd_event_source ;


 int assert (void*) ;
 int journal_file_post_change (void*) ;

__attribute__((used)) static int post_change_thunk(sd_event_source *timer, uint64_t usec, void *userdata) {
        assert(userdata);

        journal_file_post_change(userdata);

        return 1;
}
