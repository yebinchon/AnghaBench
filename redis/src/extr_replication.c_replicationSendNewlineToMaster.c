
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ time_t ;
struct TYPE_2__ {scalar_t__ repl_transfer_s; } ;


 int connWrite (scalar_t__,char*,int) ;
 TYPE_1__ server ;
 scalar_t__ time (int *) ;

void replicationSendNewlineToMaster(void) {
    static time_t newline_sent;
    if (time(((void*)0)) != newline_sent) {
        newline_sent = time(((void*)0));

        if (server.repl_transfer_s) connWrite(server.repl_transfer_s, "\n", 1);
    }
}
