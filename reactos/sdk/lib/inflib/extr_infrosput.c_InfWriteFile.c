
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int WCHAR ;
typedef int ULONG ;
typedef int UINT ;
struct TYPE_5__ {int Length; int * Buffer; } ;
typedef int * PWCHAR ;
typedef TYPE_1__* PUNICODE_STRING ;
typedef int PINFCACHE ;
typedef int OBJECT_ATTRIBUTES ;
typedef int NTSTATUS ;
typedef int IO_STATUS_BLOCK ;
typedef int INFSTATUS ;
typedef scalar_t__ HINF ;
typedef int HANDLE ;


 int DPRINT (char*,...) ;
 int DPRINT1 (char*,int ) ;
 int FILE_NON_DIRECTORY_FILE ;
 int FILE_SYNCHRONOUS_IO_NONALERT ;
 int FREE (int *) ;
 int GENERIC_WRITE ;
 int INF_SUCCESS (int ) ;
 int InfpBuildFileBuffer (int ,int **,int*) ;
 int InitializeObjectAttributes (int *,TYPE_1__*,int ,int *,int *) ;
 int * MALLOC (int) ;
 int NtClose (int ) ;
 int NtOpenFile (int *,int,int *,int *,int ,int) ;
 int NtWriteFile (int ,int *,int *,int *,int *,int *,int,int *,int *) ;
 int STATUS_SUCCESS ;
 int SYNCHRONIZE ;
 int strcpyW (int *,char*) ;

NTSTATUS
InfWriteFile(HINF InfHandle,
             PUNICODE_STRING FileName,
             PUNICODE_STRING HeaderComment)
{
  OBJECT_ATTRIBUTES ObjectAttributes;
  IO_STATUS_BLOCK IoStatusBlock;
  HANDLE FileHandle;
  NTSTATUS Status;
  INFSTATUS InfStatus;
  PWCHAR Buffer;
  ULONG BufferSize;
  PWCHAR HeaderBuffer;
  ULONG HeaderBufferSize;
  UINT Index;

  InfStatus = InfpBuildFileBuffer((PINFCACHE) InfHandle, &Buffer, &BufferSize);
  if (! INF_SUCCESS(InfStatus))
    {
      DPRINT("Failed to create buffer (Status 0x%lx)\n", InfStatus);
      return InfStatus;
    }


  InitializeObjectAttributes(&ObjectAttributes,
                             FileName,
                             0,
                             ((void*)0),
                             ((void*)0));

  Status = NtOpenFile(&FileHandle,
                      GENERIC_WRITE | SYNCHRONIZE,
                      &ObjectAttributes,
                      &IoStatusBlock,
                      0,
                      FILE_SYNCHRONOUS_IO_NONALERT | FILE_NON_DIRECTORY_FILE);
  if (!INF_SUCCESS(Status))
    {
      DPRINT1("NtOpenFile() failed (Status %lx)\n", Status);
      FREE(Buffer);
      return Status;
    }

  DPRINT("NtOpenFile() successful\n");

  if (((void*)0) != HeaderComment && 0 != HeaderComment->Length)
    {

      HeaderBufferSize = HeaderComment->Length + 7 * sizeof(WCHAR);
      HeaderBuffer = MALLOC(HeaderBufferSize);
      if (((void*)0) != HeaderBuffer)
        {
          strcpyW(HeaderBuffer, L"; ");
          for (Index = 0; Index < HeaderComment->Length / sizeof(WCHAR); Index++)
            {
              HeaderBuffer[2 + Index] = HeaderComment->Buffer[Index];
            }
          strcpyW(HeaderBuffer + (2 + HeaderComment->Length / sizeof(WCHAR)),
                  L"\r\n\r\n");
          NtWriteFile(FileHandle,
                      ((void*)0),
                      ((void*)0),
                      ((void*)0),
                      &IoStatusBlock,
                      HeaderBuffer,
                      HeaderBufferSize,
                      ((void*)0),
                      ((void*)0));
          FREE(HeaderBuffer);
        }
    }


  Status = NtWriteFile(FileHandle,
                       ((void*)0),
                       ((void*)0),
                       ((void*)0),
                       &IoStatusBlock,
                       Buffer,
                       BufferSize,
                       ((void*)0),
                       ((void*)0));

  NtClose(FileHandle);
  FREE(Buffer);

  if (!INF_SUCCESS(Status))
    {
      DPRINT1("NtWriteFile() failed (Status %lx)\n", Status);
      return(Status);
    }

  return STATUS_SUCCESS;
}
