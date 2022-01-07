
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int app_user_data; int mme_handle; int flags; int callback; } ;
typedef TYPE_1__ SessionInfo ;
typedef int DWORD_PTR ;
typedef int DWORD ;
typedef int BOOL ;


 int DriverCallback (int ,int ,int ,int ,int ,int ,int ) ;
 int HIWORD (int ) ;

BOOL
NotifyClient(
    SessionInfo* session_info,
    DWORD message,
    DWORD_PTR parameter1,
    DWORD_PTR parameter2)
{
    return DriverCallback(session_info->callback,
                          HIWORD(session_info->flags),
                          session_info->mme_handle,
                          message,
                          session_info->app_user_data,
                          parameter1,
                          parameter2);
}
