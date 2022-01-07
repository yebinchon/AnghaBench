
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _EXCEPTION_RECORD {int dummy; } ;
struct _DISPATCHER_CONTEXT {int dummy; } ;
struct _CONTEXT {int dummy; } ;
typedef int __cdecl ;


 int UNIMPLEMENTED ;
 int __debugbreak () ;

__cdecl
__C_specific_handler(
    struct _EXCEPTION_RECORD *_ExceptionRecord,
    void *_EstablisherFrame,
    struct _CONTEXT *_ContextRecord,
    struct _DISPATCHER_CONTEXT *_DispatcherContext)
{
    UNIMPLEMENTED;
    __debugbreak();
    return 0;
}
