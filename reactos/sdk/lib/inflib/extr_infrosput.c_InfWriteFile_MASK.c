#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int ULONG ;
typedef  int UINT ;
struct TYPE_5__ {int Length; int /*<<< orphan*/ * Buffer; } ;
typedef  int /*<<< orphan*/ * PWCHAR ;
typedef  TYPE_1__* PUNICODE_STRING ;
typedef  int /*<<< orphan*/  PINFCACHE ;
typedef  int /*<<< orphan*/  OBJECT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  NTSTATUS ;
typedef  int /*<<< orphan*/  IO_STATUS_BLOCK ;
typedef  int /*<<< orphan*/  INFSTATUS ;
typedef  scalar_t__ HINF ;
typedef  int /*<<< orphan*/  HANDLE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int FILE_NON_DIRECTORY_FILE ; 
 int FILE_SYNCHRONOUS_IO_NONALERT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int GENERIC_WRITE ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  STATUS_SUCCESS ; 
 int SYNCHRONIZE ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 

NTSTATUS
FUNC11(HINF InfHandle,
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

  InfStatus = FUNC4((PINFCACHE) InfHandle, &Buffer, &BufferSize);
  if (! FUNC3(InfStatus))
    {
      FUNC0("Failed to create buffer (Status 0x%lx)\n", InfStatus);
      return InfStatus;
    }

  /* Open the inf file */
  FUNC5(&ObjectAttributes,
                             FileName,
                             0,
                             NULL,
                             NULL);

  Status = FUNC8(&FileHandle,
                      GENERIC_WRITE | SYNCHRONIZE,
                      &ObjectAttributes,
                      &IoStatusBlock,
                      0,
                      FILE_SYNCHRONOUS_IO_NONALERT | FILE_NON_DIRECTORY_FILE);
  if (!FUNC3(Status))
    {
      FUNC1("NtOpenFile() failed (Status %lx)\n", Status);
      FUNC2(Buffer);
      return Status;
    }

  FUNC0("NtOpenFile() successful\n");

  if (NULL != HeaderComment && 0 != HeaderComment->Length)
    {
      /* This is just a comment header, don't abort on errors here */
      HeaderBufferSize = HeaderComment->Length + 7 * sizeof(WCHAR);
      HeaderBuffer = FUNC6(HeaderBufferSize);
      if (NULL != HeaderBuffer)
        {
          FUNC10(HeaderBuffer, L"; ");
          for (Index = 0; Index < HeaderComment->Length / sizeof(WCHAR); Index++)
            {
              HeaderBuffer[2 + Index] = HeaderComment->Buffer[Index];
            }
          FUNC10(HeaderBuffer + (2 + HeaderComment->Length / sizeof(WCHAR)),
                  L"\r\n\r\n");
          FUNC9(FileHandle,
                      NULL,
                      NULL,
                      NULL,
                      &IoStatusBlock,
                      HeaderBuffer,
                      HeaderBufferSize,
                      NULL,
                      NULL);
          FUNC2(HeaderBuffer);
        }
    }

  /* Write main contents */
  Status = FUNC9(FileHandle,
                       NULL,
                       NULL,
                       NULL,
                       &IoStatusBlock,
                       Buffer,
                       BufferSize,
                       NULL,
                       NULL);

  FUNC7(FileHandle);
  FUNC2(Buffer);

  if (!FUNC3(Status))
    {
      FUNC1("NtWriteFile() failed (Status %lx)\n", Status);
      return(Status);
    }

  return STATUS_SUCCESS;
}