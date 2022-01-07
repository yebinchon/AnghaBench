
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int integrity; } ;
typedef TYPE_1__ sqliterk_pager ;



unsigned int sqliterkPagerGetIntegrity(sqliterk_pager *pager)
{
    if (!pager) {
        return 0;
    }
    return pager->integrity;
}
