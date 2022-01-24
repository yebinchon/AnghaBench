#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int UInt64 ;
struct TYPE_3__ {int mode; int /*<<< orphan*/  sha; int /*<<< orphan*/  crc64; int /*<<< orphan*/  crc; } ;
typedef  TYPE_1__ CXzCheck ;
typedef  int /*<<< orphan*/  Byte ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
#define  XZ_CHECK_CRC32 130 
#define  XZ_CHECK_CRC64 129 
#define  XZ_CHECK_SHA256 128 

int FUNC4(CXzCheck *p, Byte *digest)
{
  switch (p->mode)
  {
    case XZ_CHECK_CRC32:
      FUNC2(digest, FUNC1(p->crc));
      break;
    case XZ_CHECK_CRC64:
    {
      int i;
      UInt64 v = FUNC0(p->crc64);
      for (i = 0; i < 8; i++, v >>= 8)
        digest[i] = (Byte)(v & 0xFF);
      break;
    }
    case XZ_CHECK_SHA256:
      FUNC3(&p->sha, digest);
      break;
    default:
      return 0;
  }
  return 1;
}