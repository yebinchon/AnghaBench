
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int pMutex; } ;


 TYPE_1__ gQuota ;
 int sqlite3_mutex_leave (int ) ;

__attribute__((used)) static void quotaLeave(void){ sqlite3_mutex_leave(gQuota.pMutex); }
