
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sd_event_source ;
typedef int Varlink ;
typedef int Server ;


 int assert (int *) ;
 int assert_se (int *) ;
 int log_error_errno (int,char*) ;
 int sd_event_source_set_floating (int *,int) ;
 int server_full_sync (int *) ;
 int * varlink_get_userdata (int *) ;
 int varlink_reply (int *,int *) ;

__attribute__((used)) static int synchronize_second_half(sd_event_source *event_source, void *userdata) {
        Varlink *link = userdata;
        Server *s;
        int r;

        assert(link);
        assert_se(s = varlink_get_userdata(link));




        server_full_sync(s);




        r = sd_event_source_set_floating(event_source, 0);
        if (r < 0)
                return log_error_errno(r, "Failed to mark event source as non-floating: %m");

        return varlink_reply(link, ((void*)0));
}
