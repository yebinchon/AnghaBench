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
struct TYPE_3__ {int Node; int Size; int /*<<< orphan*/  ProductId; } ;
typedef  TYPE_1__* PCM_PNP_BIOS_DEVICE_NODE ;
typedef  int /*<<< orphan*/  CM_PNP_BIOS_DEVICE_NODE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 char* Hex ; 
 int /*<<< orphan*/  FUNC1 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*) ; 
 int /*<<< orphan*/  FUNC7 (unsigned char*) ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC8 (unsigned char*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,...) ; 

void FUNC10 (PCM_PNP_BIOS_DEVICE_NODE DeviceNode)
{
  char PnpId[8];
  unsigned char *Ptr;
  unsigned int TagSize;
  unsigned int TagType;

  unsigned char Id[4];

  FUNC9 ("Node: %x  Size %hu (0x%hx)\n",
	  DeviceNode->Node,
	  DeviceNode->Size,
	  DeviceNode->Size);

  FUNC8(Id, &DeviceNode->ProductId, 4);

  PnpId[0] = ((Id[0] >> 2) & 0x1F) + 0x40;
  PnpId[1] = ((Id[0] << 3) & 0x18) +
	     ((Id[1] >> 5) & 0x07) + 0x40;
  PnpId[2] = (Id[1] & 0x1F) + 0x40;

  PnpId[3] = Hex[(Id[2] >> 4) & 0xF];
  PnpId[4] = Hex[Id[2] & 0x0F];

  PnpId[5] = Hex[(Id[3] >> 4) & 0x0F];
  PnpId[6] = Hex[Id[3] & 0x0F];
  PnpId[7] = 0;

  FUNC9("  '%s' (%s)\n",
	 PnpId, FUNC0(PnpId));

  if (DeviceNode->Size > sizeof(CM_PNP_BIOS_DEVICE_NODE))
    {
      Ptr = (unsigned char *)(DeviceNode + 1);
      while (TRUE)
	{
	  if (*Ptr & 0x80)
	    {
	      TagType = *Ptr & 0x7F;
	      Ptr++;
	      TagSize = *Ptr;
	      Ptr++;
	      TagSize += (*Ptr << 16);
	      Ptr++;


	      switch (TagType)
		{
		  case 1:
		    FUNC6(Ptr);
		    break;

		  case 5:
		    FUNC7(Ptr);
		    break;

		  case 6:
		    FUNC3(Ptr);
		    break;

		  default:
		    FUNC9("      Large tag: type %u  size %u\n",
			   TagType,
			   TagSize);
		    break;
		}
	    }
	  else
	    {
	      TagType = (*Ptr >> 3) & 0x0F;
	      TagSize = *Ptr & 0x07;
	      Ptr++;

	      switch (TagType)
		{
		  case 2:
		    FUNC9("      Logical device ID\n");
		    break;

		  case 3:
		    FUNC9("      Compatible device ID\n");
		    break;

		  case 4:
		    FUNC5(Ptr);
		    break;

		  case 5:
		    FUNC1(Ptr);
		    break;

		  case 8:
		    FUNC4(Ptr);
		    break;

		  case 9:
		    FUNC2(Ptr);
		    break;

		  case 0x0F: /* end tag */
		    break;

		  default:
		    FUNC9("      Small tag: type %u  size %u\n",
			   TagType,
			   TagSize);
		    break;
		}

	      /* end tag */
	      if (TagType == 0x0F)
		break;
	    }

	  Ptr = Ptr + TagSize;
	}
    }
}