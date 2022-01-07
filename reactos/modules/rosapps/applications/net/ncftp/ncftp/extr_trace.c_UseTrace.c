
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * errLog; int errLogProc; int * debugLog; int debugLogProc; } ;


 int DebugHook ;
 int ErrorHook ;
 TYPE_1__ gConn ;

void
UseTrace(void)
{
 gConn.debugLogProc = DebugHook;
 gConn.debugLog = ((void*)0);
 gConn.errLogProc = ErrorHook;
 gConn.errLog = ((void*)0);
}
