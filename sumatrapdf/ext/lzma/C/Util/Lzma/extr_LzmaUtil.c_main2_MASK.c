#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  UInt64 ;
typedef  int /*<<< orphan*/  UInt32 ;
struct TYPE_6__ {int /*<<< orphan*/  file; int /*<<< orphan*/  s; } ;
struct TYPE_5__ {int /*<<< orphan*/  file; int /*<<< orphan*/  s; } ;
typedef  TYPE_1__ CFileSeqInStream ;
typedef  TYPE_2__ CFileOutStream ;
typedef  scalar_t__ Bool ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ False ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC9 (char*,char*) ; 
 int FUNC10 (char*,int) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int FUNC12 (char*) ; 
 int SZ_ERROR_DATA ; 
 int SZ_ERROR_MEM ; 
 int SZ_ERROR_READ ; 
 int SZ_ERROR_WRITE ; 
 int SZ_OK ; 
 scalar_t__ True ; 
 char* kCantAllocateMessage ; 
 char* kCantReadMessage ; 
 char* kCantWriteMessage ; 
 char* kDataErrorMessage ; 
 int FUNC13 (char const*) ; 

int FUNC14(int numArgs, const char *args[], char *rs)
{
  CFileSeqInStream inStream;
  CFileOutStream outStream;
  char c;
  int res;
  int encodeMode;
  Bool useOutFile = False;

  FUNC3(&inStream);
  FUNC5(&inStream.file);

  FUNC2(&outStream);
  FUNC5(&outStream.file);

  if (numArgs == 1)
  {
    FUNC11(rs);
    return 0;
  }

  if (numArgs < 3 || numArgs > 4 || FUNC13(args[1]) != 1)
    return FUNC12(rs);

  c = args[1][0];
  encodeMode = (c == 'e' || c == 'E');
  if (!encodeMode && c != 'd' && c != 'D')
    return FUNC12(rs);

  {
    size_t t4 = sizeof(UInt32);
    size_t t8 = sizeof(UInt64);
    if (t4 != 4 || t8 != 8)
      return FUNC9(rs, "Incorrect UInt32 or UInt64");
  }

  if (FUNC7(&inStream.file, args[2]) != 0)
    return FUNC9(rs, "Can not open input file");

  if (numArgs > 3)
  {
    useOutFile = True;
    if (FUNC8(&outStream.file, args[3]) != 0)
      return FUNC9(rs, "Can not open output file");
  }
  else if (encodeMode)
    FUNC12(rs);

  if (encodeMode)
  {
    UInt64 fileSize;
    FUNC6(&inStream.file, &fileSize);
    res = FUNC1(&outStream.s, &inStream.s, fileSize, rs);
  }
  else
  {
    res = FUNC0(&outStream.s, useOutFile ? &inStream.s : NULL);
  }

  if (useOutFile)
    FUNC4(&outStream.file);
  FUNC4(&inStream.file);

  if (res != SZ_OK)
  {
    if (res == SZ_ERROR_MEM)
      return FUNC9(rs, kCantAllocateMessage);
    else if (res == SZ_ERROR_DATA)
      return FUNC9(rs, kDataErrorMessage);
    else if (res == SZ_ERROR_WRITE)
      return FUNC9(rs, kCantWriteMessage);
    else if (res == SZ_ERROR_READ)
      return FUNC9(rs, kCantReadMessage);
    return FUNC10(rs, res);
  }
  return 0;
}