
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PEXCEPTION_RECORD ;
typedef int PCONTEXT ;
typedef int EXCEPTION_REGISTRATION_RECORD ;
typedef int DWORD ;


 int UNIMPLEMENTED ;
 int __debugbreak () ;

DWORD
__CxxFrameHandler(
    PEXCEPTION_RECORD rec,
    EXCEPTION_REGISTRATION_RECORD* ExceptionRegistrationFrame,
    PCONTEXT context,
    EXCEPTION_REGISTRATION_RECORD** _ExceptionRecord)
{
    UNIMPLEMENTED;
    __debugbreak();
    return 0;
}
