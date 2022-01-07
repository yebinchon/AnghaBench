
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PUNICODE_STRING ;
typedef int PCONSRV_CONSOLE ;


 int HistoryCurrentBuffer (int ,int ) ;
 int HistoryDeleteBuffer (int ) ;

VOID
HistoryDeleteCurrentBuffer(PCONSRV_CONSOLE Console,
                           PUNICODE_STRING ExeName)
{
    HistoryDeleteBuffer(HistoryCurrentBuffer(Console, ExeName));
}
