
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;
typedef int Unit ;


 int assert (int *) ;
 int unit_synthesize_cgroup_empty_event (int *) ;
 int unit_tidy_watch_pids (int *) ;
 int unit_watch_all_pids (int *) ;

__attribute__((used)) static int on_rewatch_pids_event(sd_event_source *s, void *userdata) {
        Unit *u = userdata;

        assert(s);
        assert(u);

        unit_tidy_watch_pids(u);
        unit_watch_all_pids(u);


        unit_synthesize_cgroup_empty_event(u);

        return 0;
}
