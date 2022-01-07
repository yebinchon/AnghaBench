
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int * member_4; int * member_3; int * member_2; TYPE_1__* member_1; int member_0; } ;
struct TYPE_5__ {int * cmd_pipe; } ;
typedef TYPE_1__ SeafWTMonitor ;
typedef int CFRunLoopSourceRef ;
typedef int * CFFileDescriptorRef ;
typedef TYPE_2__ CFFileDescriptorContext ;


 int * CFFileDescriptorCreate (int *,int ,int,int ,TYPE_2__*) ;
 int CFFileDescriptorCreateRunLoopSource (int ,int *,int ) ;
 int CFFileDescriptorEnableCallBacks (int *,int ) ;
 int CFRelease (int ) ;
 int CFRunLoopAddSource (int ,int ,int ) ;
 int CFRunLoopGetCurrent () ;
 int command_read_cb ;
 int kCFAllocatorDefault ;
 int kCFFileDescriptorReadCallBack ;
 int kCFRunLoopDefaultMode ;

__attribute__((used)) static int
add_command_pipe (SeafWTMonitor *monitor)
{
    CFFileDescriptorContext ctx = {0, monitor, ((void*)0), ((void*)0), ((void*)0)};
    CFFileDescriptorRef fdref = CFFileDescriptorCreate(((void*)0),
                                                       monitor->cmd_pipe[0], 1,
                                                       command_read_cb, &ctx);
    if (fdref == ((void*)0)) {
        return -1;
    }

    CFFileDescriptorEnableCallBacks(fdref, kCFFileDescriptorReadCallBack);
    CFRunLoopSourceRef source = CFFileDescriptorCreateRunLoopSource(kCFAllocatorDefault, fdref, 0);
    CFRunLoopAddSource (CFRunLoopGetCurrent(), source, kCFRunLoopDefaultMode);
    CFRelease(source);
    return 0;
}
