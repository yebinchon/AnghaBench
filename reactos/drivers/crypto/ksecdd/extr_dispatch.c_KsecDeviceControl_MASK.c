#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int ULONG ;
typedef  scalar_t__ SIZE_T ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__ PUCHAR ;
typedef  scalar_t__* PSIZE_T ;
typedef  int /*<<< orphan*/  NTSTATUS ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
#define  IOCTL_KSEC_DECRYPT_CROSS_PROCESS 135 
#define  IOCTL_KSEC_DECRYPT_SAME_LOGON 134 
#define  IOCTL_KSEC_DECRYPT_SAME_PROCESS 133 
#define  IOCTL_KSEC_ENCRYPT_CROSS_PROCESS 132 
#define  IOCTL_KSEC_ENCRYPT_SAME_LOGON 131 
#define  IOCTL_KSEC_ENCRYPT_SAME_PROCESS 130 
#define  IOCTL_KSEC_RANDOM_FILL_BUFFER 129 
#define  IOCTL_KSEC_REGISTER_LSA_PROCESS 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  RTL_ENCRYPT_OPTION_CROSS_PROCESS ; 
 int /*<<< orphan*/  RTL_ENCRYPT_OPTION_SAME_LOGON ; 
 int /*<<< orphan*/  RTL_ENCRYPT_OPTION_SAME_PROCESS ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  STATUS_INVALID_PARAMETER ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static
NTSTATUS
FUNC6(
    ULONG IoControlCode,
    PVOID Buffer,
    SIZE_T InputLength,
    PSIZE_T OutputLength)
{
    NTSTATUS Status;

    if ((IoControlCode == IOCTL_KSEC_RANDOM_FILL_BUFFER) ||
        (IoControlCode == IOCTL_KSEC_ENCRYPT_SAME_PROCESS) ||
        (IoControlCode == IOCTL_KSEC_DECRYPT_SAME_PROCESS) ||
        (IoControlCode == IOCTL_KSEC_ENCRYPT_CROSS_PROCESS) ||
        (IoControlCode == IOCTL_KSEC_DECRYPT_CROSS_PROCESS) ||
        (IoControlCode == IOCTL_KSEC_ENCRYPT_SAME_LOGON) ||
        (IoControlCode == IOCTL_KSEC_DECRYPT_SAME_LOGON))
    {
        /* Make sure we have a valid output buffer */
        if ((Buffer == NULL) || (OutputLength == NULL))
        {
            return STATUS_INVALID_PARAMETER;
        }

        /* Check if the input is smaller than the output */
        if (InputLength < *OutputLength)
        {
            /* We might have uninitialized memory, zero it out */
            FUNC4((PUCHAR)Buffer + InputLength,
                                *OutputLength - InputLength);
        }
    }

    /* Check ioctl code */
    switch (IoControlCode)
    {
        case IOCTL_KSEC_REGISTER_LSA_PROCESS:

            Status = STATUS_SUCCESS;
            break;

        case IOCTL_KSEC_RANDOM_FILL_BUFFER:

            Status = FUNC3(Buffer, *OutputLength);
            break;

        case IOCTL_KSEC_ENCRYPT_SAME_PROCESS:

            Status = FUNC2(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_PROCESS);
            break;

        case IOCTL_KSEC_DECRYPT_SAME_PROCESS:

            Status = FUNC1(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_PROCESS);
            break;

        case IOCTL_KSEC_ENCRYPT_CROSS_PROCESS:

            Status = FUNC2(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_CROSS_PROCESS);
            break;

        case IOCTL_KSEC_DECRYPT_CROSS_PROCESS:

            Status = FUNC1(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_CROSS_PROCESS);
            break;

        case IOCTL_KSEC_ENCRYPT_SAME_LOGON:

            Status = FUNC2(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_LOGON);
            break;

        case IOCTL_KSEC_DECRYPT_SAME_LOGON:

            Status = FUNC1(Buffer,
                                       *OutputLength,
                                       RTL_ENCRYPT_OPTION_SAME_LOGON);
            break;

        default:
            FUNC0("Unhandled control code 0x%lx\n", IoControlCode);
            FUNC5();
            return STATUS_INVALID_PARAMETER;
    }

    return Status;
}