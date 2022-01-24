#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ULONG ;
struct TYPE_11__ {char* VendorId; } ;
struct TYPE_10__ {int Offset; } ;
typedef  TYPE_1__* PBYTE ;
typedef  TYPE_1__ OVERLAPPED ;
typedef  TYPE_3__ INQUIRYDATA ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  char CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FILE_SHARE_READ ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,TYPE_3__*) ; 
 int FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  MEM_COMMIT ; 
 int /*<<< orphan*/  MEM_RELEASE ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int /*<<< orphan*/  PAGE_READWRITE ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,TYPE_1__*,int,int*,TYPE_1__*) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,...) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC10(void)
{
    HANDLE hDevice;
    OVERLAPPED ov;

    PBYTE Buffer = NULL ;
    DWORD Start;
    DWORD dwReturned;
    DWORD dwReadTotal;
    DWORD Size;
    BOOL Result;
    ULONG Drive;
    CHAR Name[20];

    INQUIRYDATA InquiryData;


    Drive = 0;
    while (1)
      {
        FUNC9(Name, "\\\\.\\PHYSICALDRIVE%ld", Drive);
	hDevice = FUNC1(Name,
	                     GENERIC_READ,
			     FILE_SHARE_READ,
			     NULL,
			     OPEN_EXISTING,
			     0,
			     NULL);
	if (hDevice == INVALID_HANDLE_VALUE)
	  {
	    if (Drive > 0)
	      {
	        FUNC6(Buffer, 512 * 1024, MEM_RELEASE);
	      }
	    else
	      {
	        FUNC8("Cannot open '%s'\n", Name);
	      }
	    break;
	  }
        if (Drive == 0)
	  {
            FUNC8("Transfer Size (kB)           1     2     4     8    16    32    64   128   256\n");
            FUNC8("Transfer Rate (MB/s)\n");
            FUNC8("-------------------------------------------------------------------------------\n");

	    Buffer = FUNC5(NULL, 512 * 1024, MEM_COMMIT, PAGE_READWRITE);
	  }
        Result = FUNC2(hDevice, &InquiryData);
        if (Result)
	  {
            FUNC8("%.24s ", InquiryData.VendorId);
	  }
	else
	  {
	    FUNC8("Disk %ld                   ", Drive + 1);
	  }
        Size = 1024;
        FUNC7(&ov, 0, sizeof(OVERLAPPED));
	while (Size <= 256 * 1024)
	  {
	    FUNC7(Buffer, 0, Size);
	    dwReadTotal = 0;

            Start = FUNC3() + 2000;
	    while (Start > FUNC3())
	      {
	        Result = FUNC4(hDevice, Buffer, Size, &dwReturned, &ov);
		if (Result)
		  {
		    dwReadTotal += dwReturned;
		    ov.Offset += dwReturned;
		  }
	      }
	    dwReadTotal /= 2048;
            FUNC8("%3ld.%ld ", dwReadTotal / 1024, (dwReadTotal % 1024) * 10 / 1024);
	    Size *= 2;
	  }
        FUNC8("\n");
	FUNC0(hDevice);
	Drive++;
      }
    FUNC8("\n");


    return 0;
}