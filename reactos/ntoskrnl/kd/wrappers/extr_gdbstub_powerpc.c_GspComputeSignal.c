
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef int NTSTATUS ;
ULONG
GspComputeSignal(NTSTATUS ExceptionCode)
{
    ULONG SigVal;

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
    return SigVal;
}
