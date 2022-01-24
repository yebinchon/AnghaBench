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
typedef  int /*<<< orphan*/  UNICODE_STRING ;
typedef  int /*<<< orphan*/ * PHANDLE ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int ACCESS_MASK ;

/* Variables and functions */
 int FILE_SHARE_READ ; 
 int FILE_SHARE_WRITE ; 
 int /*<<< orphan*/  FILE_SYNCHRONOUS_IO_NONALERT ; 
 int /*<<< orphan*/  INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OBJ_CASE_INSENSITIVE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  TcpFileName ; 

NTSTATUS FUNC4(PHANDLE tcpFile, ACCESS_MASK DesiredAccess)
{
    UNICODE_STRING fileName;
    OBJECT_ATTRIBUTES objectAttributes;
    IO_STATUS_BLOCK ioStatusBlock;
    NTSTATUS status;

    FUNC3( &fileName, TcpFileName );

    FUNC0( &objectAttributes,
                                &fileName,
                                OBJ_CASE_INSENSITIVE,
                                NULL,
                                NULL );

    status = FUNC2( tcpFile,
                         DesiredAccess | SYNCHRONIZE,
                         &objectAttributes,
                         &ioStatusBlock,
                         FILE_SHARE_READ | FILE_SHARE_WRITE,
                         FILE_SYNCHRONOUS_IO_NONALERT);

    /* String does not need to be freed: it points to the constant
     * string we provided */

    if (!FUNC1(status))
        *tcpFile = INVALID_HANDLE_VALUE;

    return status;
}