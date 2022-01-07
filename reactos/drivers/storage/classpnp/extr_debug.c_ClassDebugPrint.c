
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PCCHAR ;
typedef int CLASS_DEBUG_LEVEL ;


 int DbgPrint (char*) ;

VOID ClassDebugPrint(CLASS_DEBUG_LEVEL DebugPrintLevel, PCCHAR DebugMessage, ...)
    {
        DbgPrint("retail build\n");
    }
