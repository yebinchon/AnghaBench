
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_4__ {int Eip; int Ebp; } ;
typedef TYPE_1__* PKTRAP_FRAME ;
typedef char* PCHAR ;
typedef int NTSTATUS ;
typedef int LONG ;


 size_t EBP ;
 size_t ESP ;
 int GspGetEspFromTrapFrame (TYPE_1__*) ;
 char* GspMem2Hex (char*,char*,int,int ) ;
 char* GspOutBuffer ;
 void** HexChars ;
 size_t PC ;
__attribute__((used)) static void
GspStopReply(NTSTATUS ExceptionCode, PKTRAP_FRAME TrapFrame)
{
    PCHAR ptr = GspOutBuffer;
    ULONG SigVal;
    LONG Esp;

    switch (ExceptionCode)
    {
        case 131:
            SigVal = 8;
            break;
        case 129:
        case 134:
            SigVal = 5;
            break;
        case 130:
        case 135:
            SigVal = 16;
            break;
        case 132:
            SigVal = 4;
            break;
        case 128:
        case 133:
        case 136:
            SigVal = 11;
            break;
        default:
            SigVal = 7;
    }

    ptr = GspOutBuffer;

    *ptr++ = 'T';
    *ptr++ = HexChars[(SigVal >> 4) & 0xf];
    *ptr++ = HexChars[SigVal & 0xf];

    *ptr++ = HexChars[ESP];
    *ptr++ = ':';

    Esp = GspGetEspFromTrapFrame(TrapFrame);
    ptr = GspMem2Hex((PCHAR)&Esp, ptr, 4, 0);
    *ptr++ = ';';

    *ptr++ = HexChars[EBP];
    *ptr++ = ':';
    ptr = GspMem2Hex((PCHAR)&TrapFrame->Ebp, ptr, 4, 0);
    *ptr++ = ';';

    *ptr++ = HexChars[PC];
    *ptr++ = ':';
    ptr = GspMem2Hex((PCHAR)&TrapFrame->Eip, ptr, 4, 0);
    *ptr++ = ';';

    *ptr = '\0';
}
