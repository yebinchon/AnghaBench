
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_8__ {int path; } ;
struct TYPE_7__ {int path; } ;
struct TYPE_9__ {int mmap; TYPE_2__ system_storage; TYPE_1__ runtime_storage; int hostname_field; int cgroup_root; int tty_path; int buffer; scalar_t__ kernel_seqnum; scalar_t__ ratelimit; int notify_fd; int hostname_fd; int audit_fd; int dev_kmsg_fd; int stdout_fd; int native_fd; int syslog_fd; int event; int watchdog_event_source; int notify_event_source; int hostname_event_source; int sigrtmin1_event_source; int sigint_event_source; int sigterm_event_source; int sigusr2_event_source; int sigusr1_event_source; int sync_event_source; int audit_event_source; int dev_kmsg_event_source; int stdout_event_source; int native_event_source; int syslog_event_source; int varlink_server; int user_journals; int runtime_journal; int system_journal; scalar_t__ stdout_streams; int deferred_closes; } ;
typedef TYPE_3__ Server ;


 int assert (TYPE_3__*) ;
 int client_context_flush_all (TYPE_3__*) ;
 int free (int ) ;
 int journal_file_close (int ) ;
 int journal_ratelimit_free (scalar_t__) ;
 int mmap_cache_unref (int ) ;
 int munmap (scalar_t__,int) ;
 int ordered_hashmap_free_with_destructor (int ,int (*) (int )) ;
 int safe_close (int ) ;
 int sd_event_source_unref (int ) ;
 int sd_event_unref (int ) ;
 int set_free_with_destructor (int ,int (*) (int )) ;
 int stdout_stream_free (scalar_t__) ;
 int varlink_server_unref (int ) ;

void server_done(Server *s) {
        assert(s);

        set_free_with_destructor(s->deferred_closes, journal_file_close);

        while (s->stdout_streams)
                stdout_stream_free(s->stdout_streams);

        client_context_flush_all(s);

        (void) journal_file_close(s->system_journal);
        (void) journal_file_close(s->runtime_journal);

        ordered_hashmap_free_with_destructor(s->user_journals, journal_file_close);

        varlink_server_unref(s->varlink_server);

        sd_event_source_unref(s->syslog_event_source);
        sd_event_source_unref(s->native_event_source);
        sd_event_source_unref(s->stdout_event_source);
        sd_event_source_unref(s->dev_kmsg_event_source);
        sd_event_source_unref(s->audit_event_source);
        sd_event_source_unref(s->sync_event_source);
        sd_event_source_unref(s->sigusr1_event_source);
        sd_event_source_unref(s->sigusr2_event_source);
        sd_event_source_unref(s->sigterm_event_source);
        sd_event_source_unref(s->sigint_event_source);
        sd_event_source_unref(s->sigrtmin1_event_source);
        sd_event_source_unref(s->hostname_event_source);
        sd_event_source_unref(s->notify_event_source);
        sd_event_source_unref(s->watchdog_event_source);
        sd_event_unref(s->event);

        safe_close(s->syslog_fd);
        safe_close(s->native_fd);
        safe_close(s->stdout_fd);
        safe_close(s->dev_kmsg_fd);
        safe_close(s->audit_fd);
        safe_close(s->hostname_fd);
        safe_close(s->notify_fd);

        if (s->ratelimit)
                journal_ratelimit_free(s->ratelimit);

        if (s->kernel_seqnum)
                munmap(s->kernel_seqnum, sizeof(uint64_t));

        free(s->buffer);
        free(s->tty_path);
        free(s->cgroup_root);
        free(s->hostname_field);
        free(s->runtime_storage.path);
        free(s->system_storage.path);

        mmap_cache_unref(s->mmap);
}
