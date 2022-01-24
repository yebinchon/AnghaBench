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
typedef  int UInt32 ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISeqInStream ;
typedef  int /*<<< orphan*/  CXzBlock ;
typedef  scalar_t__ Byte ;
typedef  int /*<<< orphan*/  Bool ;

/* Variables and functions */
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  SZ_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,scalar_t__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,scalar_t__*) ; 
 int /*<<< orphan*/  True ; 
 int XZ_BLOCK_HEADER_SIZE_MAX ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__*) ; 

SRes FUNC4(CXzBlock *p, ISeqInStream *inStream, Bool *isIndex, UInt32 *headerSizeRes)
{
  Byte header[XZ_BLOCK_HEADER_SIZE_MAX];
  unsigned headerSize;
  *headerSizeRes = 0;
  FUNC0(FUNC2(inStream, &header[0]));
  headerSize = ((unsigned)header[0] << 2) + 4;
  if (headerSize == 0)
  {
    *headerSizeRes = 1;
    *isIndex = True;
    return SZ_OK;
  }

  *isIndex = False;
  *headerSizeRes = headerSize;
  FUNC0(FUNC1(inStream, header + 1, headerSize - 1));
  return FUNC3(p, header);
}