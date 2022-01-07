
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG ;
typedef scalar_t__ SIZE_T ;
typedef int * PVOID ;
typedef scalar_t__ PUCHAR ;
typedef scalar_t__* PSIZE_T ;
typedef int NTSTATUS ;


 int DPRINT1 (char*,int) ;
 int KsecDecryptMemory (int *,scalar_t__,int ) ;
 int KsecEncryptMemory (int *,scalar_t__,int ) ;
 int KsecGenRandom (int *,scalar_t__) ;
 int RTL_ENCRYPT_OPTION_CROSS_PROCESS ;
 int RTL_ENCRYPT_OPTION_SAME_LOGON ;
 int RTL_ENCRYPT_OPTION_SAME_PROCESS ;
 int RtlSecureZeroMemory (scalar_t__,scalar_t__) ;
 int STATUS_INVALID_PARAMETER ;
 int STATUS_SUCCESS ;
 int __debugbreak () ;

__attribute__((used)) static
NTSTATUS
KsecDeviceControl(
    ULONG IoControlCode,
    PVOID Buffer,
    SIZE_T InputLength,
    PSIZE_T OutputLength)
{
    NTSTATUS Status;

    if ((IoControlCode == 129) ||
        (IoControlCode == 130) ||
        (IoControlCode == 133) ||
        (IoControlCode == 132) ||
        (IoControlCode == 135) ||
        (IoControlCode == 131) ||
        (IoControlCode == 134))
    {

        if ((Buffer == ((void*)0)) || (OutputLength == ((void*)0)))
        {
            return STATUS_INVALID_PARAMETER;
        }


        if (InputLength < *OutputLength)
        {

            RtlSecureZeroMemory((PUCHAR)Buffer + InputLength,
                                *OutputLength - InputLength);
        }
    }


    switch (IoControlCode)
    {
        case 128:

            Status = STATUS_SUCCESS;
            break;

        case 129:

            Status = KsecGenRandom(Buffer, *OutputLength);
            break;

        case 130:

            Status = KsecEncryptMemory(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_PROCESS);
            break;

        case 133:

            Status = KsecDecryptMemory(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_PROCESS);
            break;

        case 132:

            Status = KsecEncryptMemory(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_CROSS_PROCESS);
            break;

        case 135:

            Status = KsecDecryptMemory(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_CROSS_PROCESS);
            break;

        case 131:

            Status = KsecEncryptMemory(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_LOGON);
            break;

        case 134:

            Status = KsecDecryptMemory(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_LOGON);
            break;

        default:
            DPRINT1("Unhandled control code 0x%lx\n", IoControlCode);
            __debugbreak();
            return STATUS_INVALID_PARAMETER;
    }

    return Status;
}
