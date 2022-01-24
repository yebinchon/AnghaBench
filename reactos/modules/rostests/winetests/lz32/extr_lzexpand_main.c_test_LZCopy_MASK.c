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
typedef  int /*<<< orphan*/  OFSTRUCT ;
typedef  scalar_t__ HANDLE ;
typedef  int DWORD ;
typedef  int BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_NEW ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC_READ ; 
 int /*<<< orphan*/  GENERIC_WRITE ; 
 int FUNC3 () ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int FUNC5 (int,int) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  OF_CREATE ; 
 int /*<<< orphan*/  OF_READ ; 
 int /*<<< orphan*/  OPEN_EXISTING ; 
 int FUNC7 (scalar_t__,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,int /*<<< orphan*/ ,int,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  buf ; 
 int /*<<< orphan*/  compressed_file ; 
 int compressed_file_size ; 
 int /*<<< orphan*/  filename2 ; 
 int /*<<< orphan*/  filename_ ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,...) ; 
 int /*<<< orphan*/  uncompressed_data ; 
 int uncompressed_data_size ; 

__attribute__((used)) static void FUNC11(void)
{
  HANDLE file;
  DWORD ret;
  int source, dest;
  OFSTRUCT stest, dtest;
  BOOL retok;

  /* Create the compressed file. */
  file = FUNC1(filename_, GENERIC_WRITE, 0, NULL, CREATE_NEW, 0, 0);
  FUNC10(file != INVALID_HANDLE_VALUE, 
     "CreateFileA: error %d\n", FUNC3());
  retok = FUNC8(file, compressed_file, compressed_file_size, &ret, 0);
  FUNC10( retok, "WriteFile error %d\n", FUNC3());
  FUNC10(ret == compressed_file_size, "Wrote wrong number of bytes\n");
  FUNC0(file);

  source = FUNC6(filename_, &stest, OF_READ);
  FUNC10(source >= 0, "LZOpenFileA failed on compressed file\n");
  dest = FUNC6(filename2, &dtest, OF_CREATE);
  FUNC10(dest >= 0, "LZOpenFileA failed on creating new file %d\n", dest);

  ret = FUNC5(source, dest);
  FUNC10(ret > 0, "LZCopy error\n");

  FUNC4(source);
  FUNC4(dest);

  file = FUNC1(filename2, GENERIC_READ, 0, NULL, OPEN_EXISTING, 0, 0);
  FUNC10(file != INVALID_HANDLE_VALUE,
     "CreateFileA: error %d\n", FUNC3());

  retok = FUNC7(file, buf, uncompressed_data_size*2, &ret, 0);
  FUNC10( retok && ret == uncompressed_data_size, "ReadFile: error %d\n", FUNC3());
  /* Compare what we read with what we think we should read. */
  FUNC10(!FUNC9(buf, uncompressed_data, uncompressed_data_size),
     "buffer contents mismatch\n");
  FUNC0(file);

  ret = FUNC2(filename_);
  FUNC10(ret, "DeleteFileA: error %d\n", FUNC3());
  ret = FUNC2(filename2);
  FUNC10(ret, "DeleteFileA: error %d\n", FUNC3());
}