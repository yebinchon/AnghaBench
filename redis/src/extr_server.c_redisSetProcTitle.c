
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char** bindaddr; scalar_t__ tls_port; scalar_t__ port; scalar_t__ bindaddr_count; scalar_t__ sentinel_mode; scalar_t__ cluster_enabled; } ;


 int UNUSED (char*) ;
 TYPE_1__ server ;
 int setproctitle (char*,char*,char*,scalar_t__,char*) ;

void redisSetProcTitle(char *title) {
    UNUSED(title);

}
