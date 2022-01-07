
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int msi_dialog ;
typedef int WCHAR ;
typedef int UINT ;


 int ERROR_SUCCESS ;
 int FIXME (char*) ;

__attribute__((used)) static UINT event_spawn_wait_dialog( msi_dialog *dialog, const WCHAR *argument )
{
    FIXME("doing nothing\n");
    return ERROR_SUCCESS;
}
