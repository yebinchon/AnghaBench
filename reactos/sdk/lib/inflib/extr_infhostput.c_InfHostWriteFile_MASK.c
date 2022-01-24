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
typedef  int /*<<< orphan*/  WCHAR ;
typedef  scalar_t__ ULONG ;
typedef  int /*<<< orphan*/  PINFCACHE ;
typedef  int /*<<< orphan*/  INFSTATUS ;
typedef  scalar_t__ HINF ;
typedef  int /*<<< orphan*/  FILE ;
typedef  char CHAR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,scalar_t__*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*,char*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,size_t,size_t,int /*<<< orphan*/ *) ; 

int
FUNC8(HINF InfHandle,
                 const CHAR *FileName,
                 const CHAR *HeaderComment)
{
  WCHAR *Buffer;
  ULONG BufferSize;
  INFSTATUS Status;
  FILE *File;

  Status = FUNC4((PINFCACHE) InfHandle, &Buffer, &BufferSize);
  if (! FUNC3(Status))
    {
      errno = Status;
      return -1;
    }

  File = FUNC6(FileName, "wb");
  if (NULL == File)
    {
      FUNC2(Buffer);
      FUNC1("fopen() failed (errno %d)\n", errno);
      return -1;
    }

  FUNC0("fopen() successful\n");

  if (NULL != HeaderComment && '\0' != *HeaderComment)
    {
//      fprintf(File, "; %s\r\n\r\n", HeaderComment);
    }

  if (BufferSize != FUNC7(Buffer, (size_t)1, (size_t)BufferSize, File))
    {
      FUNC1("fwrite() failed (errno %d)\n", errno);
      FUNC5(File);
      FUNC2(Buffer);
      return -1;
    }

  FUNC5(File);

  FUNC2(Buffer);

  return 0;
}