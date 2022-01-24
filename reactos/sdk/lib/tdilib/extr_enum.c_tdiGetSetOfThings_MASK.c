#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  req ;
struct TYPE_11__ {scalar_t__ Status; scalar_t__ Information; } ;
struct TYPE_8__ {scalar_t__ tei_instance; scalar_t__ tei_entity; } ;
struct TYPE_9__ {TYPE_1__ toi_entity; scalar_t__ toi_id; scalar_t__ toi_type; scalar_t__ toi_class; } ;
struct TYPE_10__ {TYPE_2__ ID; } ;
typedef  TYPE_3__ TCP_REQUEST_QUERY_INFORMATION_EX ;
typedef  int /*<<< orphan*/ * PVOID ;
typedef  scalar_t__* PDWORD ;
typedef  scalar_t__ NTSTATUS ;
typedef  TYPE_4__ IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  scalar_t__ DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IOCTL_TCP_QUERY_INFORMATION_EX ; 
 scalar_t__ MAX_TDI_ENTITIES ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_4__*,int /*<<< orphan*/ ,TYPE_3__*,int,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ STATUS_INSUFFICIENT_RESOURCES ; 
 scalar_t__ STATUS_PENDING ; 
 scalar_t__ STATUS_SUCCESS ; 
 TYPE_3__ TCP_REQUEST_QUERY_INFORMATION_INIT ; 
 scalar_t__ TRUE ; 

NTSTATUS FUNC6( HANDLE tcpFile,
                            DWORD toiClass,
                            DWORD toiType,
                            DWORD toiId,
                            DWORD teiEntity,
                            DWORD teiInstance,
                            DWORD fixedPart,
                            DWORD entrySize,
                            PVOID *tdiEntitySet,
                            PDWORD numEntries ) {
    TCP_REQUEST_QUERY_INFORMATION_EX req = TCP_REQUEST_QUERY_INFORMATION_INIT;
    PVOID entitySet = 0;
    NTSTATUS status = STATUS_SUCCESS;
    DWORD allocationSizeForEntityArray = entrySize * MAX_TDI_ENTITIES;
    IO_STATUS_BLOCK Iosb;

    req.ID.toi_class                = toiClass;
    req.ID.toi_type                 = toiType;
    req.ID.toi_id                   = toiId;
    req.ID.toi_entity.tei_entity    = teiEntity;
    req.ID.toi_entity.tei_instance  = teiInstance;

    /* There's a subtle problem here...
     * If an interface is added at this exact instant, (as if by a PCMCIA
     * card insertion), the array will still not have enough entries after
     * have allocated it after the first DeviceIoControl call.
     *
     * We'll get around this by repeating until the number of interfaces
     * stabilizes.
     */
    do {
        status = FUNC4( tcpFile,
                                        NULL,
                                        NULL,
                                        NULL,
                                        &Iosb,
                                        IOCTL_TCP_QUERY_INFORMATION_EX,
                                        &req,
                                        sizeof(req),
                                        NULL,
                                        0);
        if (status == STATUS_PENDING)
        {
            status = FUNC5(tcpFile, FALSE, NULL);
            if (FUNC3(status)) status = Iosb.Status;
        }

        if(!FUNC3(status))
        {
            return status;
        }

        allocationSizeForEntityArray = Iosb.Information;
        entitySet = FUNC1( FUNC0(), 0, allocationSizeForEntityArray );

        if( !entitySet ) {
            status = STATUS_INSUFFICIENT_RESOURCES;
            return status;
        }

        status = FUNC4( tcpFile,
                                        NULL,
                                        NULL,
                                        NULL,
                                        &Iosb,
                                        IOCTL_TCP_QUERY_INFORMATION_EX,
                                        &req,
                                        sizeof(req),
                                        entitySet,
                                        allocationSizeForEntityArray);
        if (status == STATUS_PENDING)
        {
            status = FUNC5(tcpFile, FALSE, NULL);
            if (FUNC3(status)) status = Iosb.Status;
        }

        /* This is why we have the loop -- we might have added an adapter */
        if( Iosb.Information == allocationSizeForEntityArray )
            break;

        FUNC2( FUNC0(), 0, entitySet );
        entitySet = 0;

        if(!FUNC3(status))
            return status;
    } while( TRUE ); /* We break if the array we received was the size we
                      * expected.  Therefore, we got here because it wasn't */

    *numEntries = (allocationSizeForEntityArray - fixedPart) / entrySize;
    *tdiEntitySet = entitySet;

    return STATUS_SUCCESS;
}