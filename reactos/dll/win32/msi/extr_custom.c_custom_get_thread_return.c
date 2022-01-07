
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int MSIPACKAGE ;
typedef int HANDLE ;
typedef int DWORD ;


 int ACTION_ForceReboot (int *) ;
 int ERR (char*,int) ;






 int GetExitCodeThread (int ,int*) ;

__attribute__((used)) static UINT custom_get_thread_return( MSIPACKAGE *package, HANDLE thread )
{
    DWORD rc = 0;

    GetExitCodeThread( thread, &rc );

    switch (rc)
    {
    case 133:
    case 128:
    case 130:
    case 132:
        return rc;
    case 129:
        return 128;
    case 131:
        ACTION_ForceReboot( package );
        return 128;
    default:
        ERR("Invalid Return Code %d\n",rc);
        return 132;
    }
}
