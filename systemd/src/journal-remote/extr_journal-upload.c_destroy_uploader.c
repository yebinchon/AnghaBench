
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int events; int sigint_event; int sigterm_event; int input_event; int url; int current_cursor; int last_cursor; int answer; int header; int easy; } ;
typedef TYPE_1__ Uploader ;


 int assert (TYPE_1__*) ;
 int close_fd_input (TYPE_1__*) ;
 int close_journal_input (TYPE_1__*) ;
 int curl_easy_cleanup (int ) ;
 int curl_slist_free_all (int ) ;
 int free (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;

__attribute__((used)) static void destroy_uploader(Uploader *u) {
        assert(u);

        curl_easy_cleanup(u->easy);
        curl_slist_free_all(u->header);
        free(u->answer);

        free(u->last_cursor);
        free(u->current_cursor);

        free(u->url);

        u->input_event = sd_event_source_unref(u->input_event);

        close_fd_input(u);
        close_journal_input(u);

        sd_event_source_unref(u->sigterm_event);
        sd_event_source_unref(u->sigint_event);
        sd_event_unref(u->events);
}
