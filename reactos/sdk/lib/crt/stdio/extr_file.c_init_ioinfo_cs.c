
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int exflag; int crit; } ;
typedef TYPE_1__ ioinfo ;


 int EF_CRIT_INIT ;
 int InitializeCriticalSection (int *) ;
 int LOCK_FILES () ;
 int UNLOCK_FILES () ;

__attribute__((used)) static inline void init_ioinfo_cs(ioinfo *info)
{
    if(!(info->exflag & EF_CRIT_INIT)) {
        LOCK_FILES();
        if(!(info->exflag & EF_CRIT_INIT)) {
            InitializeCriticalSection(&info->crit);
            info->exflag |= EF_CRIT_INIT;
        }
        UNLOCK_FILES();
    }
}
