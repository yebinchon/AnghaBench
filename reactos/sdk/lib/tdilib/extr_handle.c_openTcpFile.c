
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UNICODE_STRING ;
typedef int * PHANDLE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int ACCESS_MASK ;


 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int INVALID_HANDLE_VALUE ;
 int InitializeObjectAttributes (int *,int *,int ,int *,int *) ;
 int NT_SUCCESS (int ) ;
 int NtOpenFile (int *,int,int *,int *,int,int ) ;
 int OBJ_CASE_INSENSITIVE ;
 int RtlInitUnicodeString (int *,int ) ;
 int SYNCHRONIZE ;
 int TcpFileName ;

NTSTATUS openTcpFile(PHANDLE tcpFile, ACCESS_MASK DesiredAccess)
{
    UNICODE_STRING fileName;
    OBJECT_ATTRIBUTES objectAttributes;
    IO_STATUS_BLOCK ioStatusBlock;
    NTSTATUS status;

    RtlInitUnicodeString( &fileName, TcpFileName );

    InitializeObjectAttributes( &objectAttributes,
                                &fileName,
                                OBJ_CASE_INSENSITIVE,
                                ((void*)0),
                                ((void*)0) );

    status = NtOpenFile( tcpFile,
                         DesiredAccess | SYNCHRONIZE,
                         &objectAttributes,
                         &ioStatusBlock,
                         FILE_SHARE_READ | FILE_SHARE_WRITE,
                         FILE_SYNCHRONOUS_IO_NONALERT);




    if (!NT_SUCCESS(status))
        *tcpFile = INVALID_HANDLE_VALUE;

    return status;
}
