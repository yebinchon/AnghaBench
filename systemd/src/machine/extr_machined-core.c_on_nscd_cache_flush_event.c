
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;


 int STRV_MAKE (char*,char*,char*) ;
 int nscd_flush_cache (int ) ;

__attribute__((used)) static int on_nscd_cache_flush_event(sd_event_source *s, void *userdata) {




        (void) nscd_flush_cache(STRV_MAKE("passwd", "group", "hosts"));
        return 0;
}
