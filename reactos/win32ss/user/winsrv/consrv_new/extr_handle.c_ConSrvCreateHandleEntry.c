
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int VOID ;
typedef int PCONSOLE_IO_HANDLE ;


 int AdjustHandleCounts (int ,int) ;

__attribute__((used)) static VOID
ConSrvCreateHandleEntry(PCONSOLE_IO_HANDLE Entry)
{


    AdjustHandleCounts(Entry, +1);

}
