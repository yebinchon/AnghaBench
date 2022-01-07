
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int PCHAR ;
typedef int BOOLEAN ;


 int FALSE ;
 int KdbDmesgTotalWritten ;
 int KdbpIsInDmesgMode ;
 int KdbpPager (scalar_t__,int) ;
 int KdbpPrint (char*,...) ;
 scalar_t__ KdpDmesgBuffer ;
 int KdpDmesgBufferSize ;
 int KdpDmesgCurrentPosition ;
 int KdpDmesgFreeBytes ;
 int TRUE ;

__attribute__((used)) static BOOLEAN
KdbpCmdDmesg(
    ULONG Argc,
    PCHAR Argv[])
{
    ULONG beg, end;

    KdbpIsInDmesgMode = TRUE;
    if (!KdpDmesgBuffer)
    {
        KdbpPrint("Dmesg: error, buffer is not allocated! /DEBUGPORT=SCREEN kernel param required for dmesg.\n");
        return TRUE;
    }

    KdbpPrint("*** Dmesg *** TotalWritten=%lu, BufferSize=%lu, CurrentPosition=%lu\n",
              KdbDmesgTotalWritten, KdpDmesgBufferSize, KdpDmesgCurrentPosition);


    end = KdpDmesgCurrentPosition;
    beg = (end + KdpDmesgFreeBytes) % KdpDmesgBufferSize;


    if (KdbDmesgTotalWritten <= KdpDmesgBufferSize)
    {

        KdbpPager(KdpDmesgBuffer, KdpDmesgCurrentPosition);
    }
    else
    {


        KdbpPager(KdpDmesgBuffer + beg, KdpDmesgBufferSize - beg);
        KdbpPrint("*** Dmesg: buffer rollup ***\n");
        KdbpPager(KdpDmesgBuffer, end);
    }
    KdbpPrint("*** Dmesg: end of output ***\n");

    KdbpIsInDmesgMode = FALSE;

    return TRUE;
}
