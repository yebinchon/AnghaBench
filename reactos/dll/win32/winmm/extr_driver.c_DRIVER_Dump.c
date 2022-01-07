
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dwDriverID; } ;
struct TYPE_6__ {TYPE_1__ d32; } ;
struct TYPE_7__ {struct TYPE_7__* lpNextItem; TYPE_2__ d; int dwMagic; } ;
typedef TYPE_3__* LPWINE_DRIVER ;


 int EnterCriticalSection (int *) ;
 int LeaveCriticalSection (int *) ;
 int TRACE (char*,...) ;
 TYPE_3__* lpDrvItemList ;
 int mmdriver_lock ;

__attribute__((used)) static void DRIVER_Dump(const char *comment)
{
}
