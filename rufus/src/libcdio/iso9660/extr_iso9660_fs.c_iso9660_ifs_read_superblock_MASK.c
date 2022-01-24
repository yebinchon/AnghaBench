#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int iso_extension_mask_t ;
struct TYPE_8__ {scalar_t__ u_joliet_level; int /*<<< orphan*/  svd; int /*<<< orphan*/  pvd; } ;
typedef  TYPE_1__ iso9660_t ;
struct TYPE_9__ {int* escape_sequences; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ iso9660_svd_t ;

/* Variables and functions */
 int ISO_EXTENSION_JOLIET_LEVEL1 ; 
 int ISO_EXTENSION_JOLIET_LEVEL2 ; 
 int ISO_EXTENSION_JOLIET_LEVEL3 ; 
 scalar_t__ ISO_PVD_SECTOR ; 
 scalar_t__ ISO_VD_END ; 
 scalar_t__ ISO_VD_SUPPLEMENTARY ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (TYPE_1__*,TYPE_2__*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_2__*,int) ; 

bool
FUNC5 (iso9660_t *p_iso,
			     iso_extension_mask_t iso_extension_mask)
{
  iso9660_svd_t p_svd;  /* Secondary volume descriptor. */
  int i;

  if (!p_iso || !FUNC2(p_iso, &(p_iso->pvd)))
    return false;

  p_iso->u_joliet_level = 0;

  /* There may be multiple Secondary Volume Descriptors (eg. El Torito + Joliet) */
  for (i=1; (0 != FUNC3 (p_iso, &p_svd, ISO_PVD_SECTOR+i, 1)); i++) {
    if (ISO_VD_END == FUNC1(p_svd.type) ) /* Last SVD */
      break;
    if ( ISO_VD_SUPPLEMENTARY == FUNC1(p_svd.type) ) {
      /* We're only interested in Joliet => make sure the SVD isn't overwritten */
      if (p_iso->u_joliet_level == 0)
        FUNC4(&(p_iso->svd), &p_svd, sizeof(iso9660_svd_t));
      if (p_svd.escape_sequences[0] == 0x25
	  && p_svd.escape_sequences[1] == 0x2f) {
	switch (p_svd.escape_sequences[2]) {
	case 0x40:
	  if (iso_extension_mask & ISO_EXTENSION_JOLIET_LEVEL1)
	    p_iso->u_joliet_level = 1;
	  break;
	case 0x43:
	  if (iso_extension_mask & ISO_EXTENSION_JOLIET_LEVEL2)
	    p_iso->u_joliet_level = 2;
	  break;
	case 0x45:
	  if (iso_extension_mask & ISO_EXTENSION_JOLIET_LEVEL3)
	    p_iso->u_joliet_level = 3;
	  break;
	default:
	  FUNC0("Supplementary Volume Descriptor found, but not Joliet");
	}
	if (p_iso->u_joliet_level > 0) {
	  FUNC0("Found Extension: Joliet Level %d", p_iso->u_joliet_level);
	}
      }
    }
  }

  return true;
}