
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ cluster_reissue_command; scalar_t__ cluster_mode; } ;


 int CC_FORCE ;
 int REDIS_ERR ;
 scalar_t__ REDIS_OK ;
 int cliConnect (int ) ;
 int cliPrintContextError () ;
 scalar_t__ cliSendCommand (int,char**,long) ;
 TYPE_1__ config ;

__attribute__((used)) static int issueCommandRepeat(int argc, char **argv, long repeat) {
    while (1) {
        config.cluster_reissue_command = 0;
        if (cliSendCommand(argc,argv,repeat) != REDIS_OK) {
            cliConnect(CC_FORCE);



            if (cliSendCommand(argc,argv,repeat) != REDIS_OK) {
                cliPrintContextError();
                return REDIS_ERR;
            }
        }

        if (config.cluster_mode && config.cluster_reissue_command) {
            cliConnect(CC_FORCE);
        } else {
            break;
        }
    }
    return REDIS_OK;
}
