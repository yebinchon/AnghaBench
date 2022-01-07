
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int VOID ;
struct TYPE_7__ {int Information; } ;
struct TYPE_6__ {scalar_t__ QuadPart; } ;
typedef int PVOID ;
typedef int ** PHANDLE ;
typedef scalar_t__ NTSTATUS ;
typedef TYPE_1__ LARGE_INTEGER ;
typedef TYPE_2__ IO_STATUS_BLOCK ;


 int CalcFileObject ;
 int FALSE ;
 int FILE_ATTRIBUTE_NORMAL ;
 int FILE_CREATED ;
 int FILE_NON_DIRECTORY_FILE ;
 int FILE_OPEN ;
 int FILE_SHARE_READ ;
 int FILE_SHARE_WRITE ;
 int FILE_SUPERSEDE ;
 int GENERIC_EXECUTE ;
 int GENERIC_READ ;
 int GENERIC_WRITE ;
 int KmtestFileObject ;
 int NtdllObject ;
 scalar_t__ STATUS_PENDING ;
 scalar_t__ STATUS_SUCCESS ;
 int SYNCHRONIZE ;
 scalar_t__ TestString ;
 int TestStringSize ;
 scalar_t__ ZwCreateFile (int **,int,int *,TYPE_2__*,int *,int ,int ,int ,int ,int *,int ) ;
 scalar_t__ ZwWaitForSingleObject (int *,int ,int *) ;
 scalar_t__ ZwWriteFile (int *,int *,int *,int *,TYPE_2__*,int ,int ,TYPE_1__*,int *) ;
 int ok (int,char*,...) ;
 int ok_eq_hex (scalar_t__,scalar_t__) ;
 int ok_eq_ulongptr (int ,int ) ;
 int skip (int ,char*) ;

__attribute__((used)) static
VOID
KmtInitTestFiles(PHANDLE ReadOnlyFile, PHANDLE WriteOnlyFile, PHANDLE ExecutableFile)
{
    NTSTATUS Status;
    LARGE_INTEGER FileOffset;
    IO_STATUS_BLOCK IoStatusBlock;


    Status = ZwCreateFile(ReadOnlyFile, ( GENERIC_READ | GENERIC_EXECUTE ), &NtdllObject, &IoStatusBlock, ((void*)0), FILE_ATTRIBUTE_NORMAL, FILE_SHARE_READ, FILE_OPEN, FILE_NON_DIRECTORY_FILE, ((void*)0), 0);
    ok_eq_hex(Status, STATUS_SUCCESS);
    ok(*ReadOnlyFile != ((void*)0), "Couldn't acquire READONLY handle\n");


    Status = ZwCreateFile(ExecutableFile, GENERIC_EXECUTE, &CalcFileObject, &IoStatusBlock, ((void*)0), FILE_ATTRIBUTE_NORMAL, FILE_SHARE_READ, FILE_OPEN, FILE_NON_DIRECTORY_FILE, ((void*)0), 0);
    ok_eq_hex(Status, STATUS_SUCCESS);
    ok(*ExecutableFile != ((void*)0), "Couldn't acquire EXECUTE handle\n");



    Status = ZwCreateFile(WriteOnlyFile, (GENERIC_WRITE | SYNCHRONIZE), &KmtestFileObject, &IoStatusBlock, ((void*)0), FILE_ATTRIBUTE_NORMAL, FILE_SHARE_WRITE, FILE_SUPERSEDE, FILE_NON_DIRECTORY_FILE, ((void*)0), 0);
    ok_eq_hex(Status, STATUS_SUCCESS);
    ok_eq_ulongptr(IoStatusBlock.Information, FILE_CREATED);
    ok(*WriteOnlyFile != ((void*)0), "WriteOnlyFile is NULL\n");
    if (!skip(*WriteOnlyFile != ((void*)0), "No WriteOnlyFile\n"))
    {
        FileOffset.QuadPart = 0;
        Status = ZwWriteFile(*WriteOnlyFile, ((void*)0), ((void*)0), ((void*)0), &IoStatusBlock, (PVOID)TestString, TestStringSize, &FileOffset, ((void*)0));
        ok(Status == STATUS_SUCCESS || Status == STATUS_PENDING, "Status = 0x%08lx\n", Status);
        Status = ZwWaitForSingleObject(*WriteOnlyFile, FALSE, ((void*)0));
        ok_eq_hex(Status, STATUS_SUCCESS);
        ok_eq_ulongptr(IoStatusBlock.Information, TestStringSize);
    }
}
