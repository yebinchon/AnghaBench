
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int child_info_data; int * child_info_pipe; } ;


 scalar_t__ ANET_OK ;
 scalar_t__ anetNonBlock (int *,int ) ;
 int closeChildInfoPipe () ;
 int memset (int *,int ,int) ;
 int pipe (int *) ;
 TYPE_1__ server ;

void openChildInfoPipe(void) {
    if (pipe(server.child_info_pipe) == -1) {


        closeChildInfoPipe();
    } else if (anetNonBlock(((void*)0),server.child_info_pipe[0]) != ANET_OK) {
        closeChildInfoPipe();
    } else {
        memset(&server.child_info_data,0,sizeof(server.child_info_data));
    }
}
