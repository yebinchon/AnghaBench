
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int LONG ;


 int ERROR_INSTALL_FAILURE ;
 int ERROR_INSTALL_SUSPEND ;
 int ERROR_INSTALL_USEREXIT ;
 int ERROR_SUCCESS ;






__attribute__((used)) static UINT map_return_value(LONG val)
{
    switch (val)
    {
    case 0:
    case 129:
    case 130: return ERROR_SUCCESS;
    case 131: return ERROR_INSTALL_USEREXIT;
    case 128: return ERROR_INSTALL_SUSPEND;
    case 132:
    default: return ERROR_INSTALL_FAILURE;
    }
}
