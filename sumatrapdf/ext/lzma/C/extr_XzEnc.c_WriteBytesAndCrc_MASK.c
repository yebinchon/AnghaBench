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
typedef  int /*<<< orphan*/  UInt32 ;
typedef  int /*<<< orphan*/  SRes ;
typedef  int /*<<< orphan*/  ISeqOutStream ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,void const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,void const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static SRes FUNC2(ISeqOutStream *s, const void *buf, UInt32 size, UInt32 *crc)
{
  *crc = FUNC0(*crc, buf, size);
  return FUNC1(s, buf, size);
}