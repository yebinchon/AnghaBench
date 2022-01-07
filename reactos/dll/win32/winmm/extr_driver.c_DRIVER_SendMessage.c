
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_4__ {int dwDriverID; int (* lpDrvProc ) (int ,int ,int ,int ,int ) ;} ;
typedef int LRESULT ;
typedef TYPE_1__* LPWINE_DRIVER ;
typedef int LPARAM ;
typedef int HDRVR ;


 int TRACE (char*,int (*) (int ,int ,int ,int ,int ),int ,TYPE_1__*,int ,int ,int ,...) ;
 int stub1 (int ,int ,int ,int ,int ) ;

__attribute__((used)) static inline LRESULT DRIVER_SendMessage(LPWINE_DRIVER lpDrv, UINT msg,
                                         LPARAM lParam1, LPARAM lParam2)
{
    LRESULT ret = 0;

    TRACE("Before call32 proc=%p drvrID=%08lx hDrv=%p wMsg=%04x p1=%08lx p2=%08lx\n",
          lpDrv->lpDrvProc, lpDrv->dwDriverID, lpDrv, msg, lParam1, lParam2);
    ret = lpDrv->lpDrvProc(lpDrv->dwDriverID, (HDRVR)lpDrv, msg, lParam1, lParam2);
    TRACE("After  call32 proc=%p drvrID=%08lx hDrv=%p wMsg=%04x p1=%08lx p2=%08lx => %08lx\n",
          lpDrv->lpDrvProc, lpDrv->dwDriverID, lpDrv, msg, lParam1, lParam2, ret);

    return ret;
}
