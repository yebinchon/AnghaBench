
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int cmd ;
struct TYPE_6__ {int repo_id; int type; } ;
typedef TYPE_1__ WatchCommand ;
struct TYPE_7__ {int * cmd_pipe; } ;
typedef TYPE_2__ SeafWTMonitor ;
typedef int CFOptionFlags ;
typedef int CFFileDescriptorRef ;


 int CFFileDescriptorEnableCallBacks (int ,int ) ;
 scalar_t__ CFRunLoopGetCurrent () ;
 int handle_watch_command (TYPE_2__*,TYPE_1__*) ;
 int kCFFileDescriptorReadCallBack ;
 int seaf_debug (char*,long,int ,int ) ;
 int seaf_pipe_readn (int ,TYPE_1__*,int) ;
 int seaf_warning (char*) ;

__attribute__((used)) static void
command_read_cb (CFFileDescriptorRef fdref,
                             CFOptionFlags callBackTypes,
                             void *info)
{
    SeafWTMonitor *monitor = (SeafWTMonitor *)info;
    WatchCommand cmd;
    int n;

    n = seaf_pipe_readn (monitor->cmd_pipe[0], &cmd, sizeof(cmd));
    if (n != sizeof(cmd)) {
        seaf_warning ("[wt mon] failed to read command.\n");
        CFFileDescriptorEnableCallBacks (fdref, kCFFileDescriptorReadCallBack);
        return;
    }

    seaf_debug ("[wt mon] %ld receive command type=%d, repo=%s\n",
                (long)CFRunLoopGetCurrent(), cmd.type, cmd.repo_id);
    handle_watch_command (monitor, &cmd);
    CFFileDescriptorEnableCallBacks (fdref, kCFFileDescriptorReadCallBack);
}
