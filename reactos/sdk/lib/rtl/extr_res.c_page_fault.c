
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ULONG ;


 scalar_t__ EXCEPTION_ACCESS_VIOLATION ;
 int EXCEPTION_CONTINUE_SEARCH ;
 int EXCEPTION_EXECUTE_HANDLER ;
 scalar_t__ EXCEPTION_PRIV_INSTRUCTION ;

int page_fault(ULONG ExceptionCode)
{
    if (ExceptionCode == EXCEPTION_ACCESS_VIOLATION ||
        ExceptionCode == EXCEPTION_PRIV_INSTRUCTION)
        return EXCEPTION_EXECUTE_HANDLER;
    return EXCEPTION_CONTINUE_SEARCH;
}
