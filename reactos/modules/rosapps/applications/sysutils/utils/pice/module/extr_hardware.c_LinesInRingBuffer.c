
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;


 int LINES_IN_BUFFER ;
 int ulInPos ;
 int ulLastPos ;

ULONG LinesInRingBuffer(void)
{
    ULONG ulResult;



    ulResult = (ulInPos-ulLastPos)%LINES_IN_BUFFER;



 return ulResult;
}
