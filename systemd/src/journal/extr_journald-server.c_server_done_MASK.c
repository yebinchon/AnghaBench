#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint64_t ;
struct TYPE_8__ {int /*<<< orphan*/  path; } ;
struct TYPE_7__ {int /*<<< orphan*/  path; } ;
struct TYPE_9__ {int /*<<< orphan*/  mmap; TYPE_2__ system_storage; TYPE_1__ runtime_storage; int /*<<< orphan*/  hostname_field; int /*<<< orphan*/  cgroup_root; int /*<<< orphan*/  tty_path; int /*<<< orphan*/  buffer; scalar_t__ kernel_seqnum; scalar_t__ ratelimit; int /*<<< orphan*/  notify_fd; int /*<<< orphan*/  hostname_fd; int /*<<< orphan*/  audit_fd; int /*<<< orphan*/  dev_kmsg_fd; int /*<<< orphan*/  stdout_fd; int /*<<< orphan*/  native_fd; int /*<<< orphan*/  syslog_fd; int /*<<< orphan*/  event; int /*<<< orphan*/  watchdog_event_source; int /*<<< orphan*/  notify_event_source; int /*<<< orphan*/  hostname_event_source; int /*<<< orphan*/  sigrtmin1_event_source; int /*<<< orphan*/  sigint_event_source; int /*<<< orphan*/  sigterm_event_source; int /*<<< orphan*/  sigusr2_event_source; int /*<<< orphan*/  sigusr1_event_source; int /*<<< orphan*/  sync_event_source; int /*<<< orphan*/  audit_event_source; int /*<<< orphan*/  dev_kmsg_event_source; int /*<<< orphan*/  stdout_event_source; int /*<<< orphan*/  native_event_source; int /*<<< orphan*/  syslog_event_source; int /*<<< orphan*/  varlink_server; int /*<<< orphan*/  user_journals; int /*<<< orphan*/  runtime_journal; int /*<<< orphan*/  system_journal; scalar_t__ stdout_streams; int /*<<< orphan*/  deferred_closes; } ;
typedef  TYPE_3__ Server ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 

void FUNC14(Server *s) {
        FUNC0(s);

        FUNC11(s->deferred_closes, journal_file_close);

        while (s->stdout_streams)
                FUNC12(s->stdout_streams);

        FUNC1(s);

        (void) FUNC3(s->system_journal);
        (void) FUNC3(s->runtime_journal);

        FUNC7(s->user_journals, journal_file_close);

        FUNC13(s->varlink_server);

        FUNC9(s->syslog_event_source);
        FUNC9(s->native_event_source);
        FUNC9(s->stdout_event_source);
        FUNC9(s->dev_kmsg_event_source);
        FUNC9(s->audit_event_source);
        FUNC9(s->sync_event_source);
        FUNC9(s->sigusr1_event_source);
        FUNC9(s->sigusr2_event_source);
        FUNC9(s->sigterm_event_source);
        FUNC9(s->sigint_event_source);
        FUNC9(s->sigrtmin1_event_source);
        FUNC9(s->hostname_event_source);
        FUNC9(s->notify_event_source);
        FUNC9(s->watchdog_event_source);
        FUNC10(s->event);

        FUNC8(s->syslog_fd);
        FUNC8(s->native_fd);
        FUNC8(s->stdout_fd);
        FUNC8(s->dev_kmsg_fd);
        FUNC8(s->audit_fd);
        FUNC8(s->hostname_fd);
        FUNC8(s->notify_fd);

        if (s->ratelimit)
                FUNC4(s->ratelimit);

        if (s->kernel_seqnum)
                FUNC6(s->kernel_seqnum, sizeof(uint64_t));

        FUNC2(s->buffer);
        FUNC2(s->tty_path);
        FUNC2(s->cgroup_root);
        FUNC2(s->hostname_field);
        FUNC2(s->runtime_storage.path);
        FUNC2(s->system_storage.path);

        FUNC5(s->mmap);
}