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
typedef  int ULONG ;
typedef  int /*<<< orphan*/  GUID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 

__attribute__((used)) static unsigned char *FUNC1(unsigned char *data)
{
  ULONG type;

  type = *(ULONG *)data;
  data += sizeof(ULONG);

  switch (type)
  {
    case 0x3:
    case 0xc:
      return data + sizeof(GUID);
    case 0x0:
    case 0x2:
    case 0x4:
    case 0x5:
    case 0x6:
    case 0xd:
      return data + sizeof(ULONG);
    case 0x1:
      return data + 24;
    default:
      FUNC0("unimplemented type 0x%x\n", type);
      return data;
  }
}