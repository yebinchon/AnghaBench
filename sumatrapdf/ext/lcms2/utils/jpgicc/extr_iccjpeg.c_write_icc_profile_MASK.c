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
typedef  int /*<<< orphan*/  j_compress_ptr ;
typedef  int JOCTET ;

/* Variables and functions */
 int /*<<< orphan*/  ICC_MARKER ; 
 scalar_t__ ICC_OVERHEAD_LEN ; 
 unsigned int MAX_DATA_BYTES_IN_MARKER ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int const) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned int) ; 

void
FUNC2 (j_compress_ptr cinfo,
		   const JOCTET *icc_data_ptr,
		   unsigned int icc_data_len)
{
  unsigned int num_markers;	/* total number of markers we'll write */
  int cur_marker = 1;		/* per spec, counting starts at 1 */
  unsigned int length;		/* number of bytes to write in this marker */

  /* Calculate the number of markers we'll need, rounding up of course */
  num_markers = icc_data_len / MAX_DATA_BYTES_IN_MARKER;
  if (num_markers * MAX_DATA_BYTES_IN_MARKER != icc_data_len)
    num_markers++;

  while (icc_data_len > 0) {
    /* length of profile to put in this marker */
    length = icc_data_len;
    if (length > MAX_DATA_BYTES_IN_MARKER)
      length = MAX_DATA_BYTES_IN_MARKER;
    icc_data_len -= length;

    /* Write the JPEG marker header (APP2 code and marker length) */
    FUNC1(cinfo, ICC_MARKER,
			(unsigned int) (length + ICC_OVERHEAD_LEN));

    /* Write the marker identifying string "ICC_PROFILE" (null-terminated).
     * We code it in this less-than-transparent way so that the code works
     * even if the local character set is not ASCII.
     */
    FUNC0(cinfo, 0x49);
    FUNC0(cinfo, 0x43);
    FUNC0(cinfo, 0x43);
    FUNC0(cinfo, 0x5F);
    FUNC0(cinfo, 0x50);
    FUNC0(cinfo, 0x52);
    FUNC0(cinfo, 0x4F);
    FUNC0(cinfo, 0x46);
    FUNC0(cinfo, 0x49);
    FUNC0(cinfo, 0x4C);
    FUNC0(cinfo, 0x45);
    FUNC0(cinfo, 0x0);

    /* Add the sequencing info */
    FUNC0(cinfo, cur_marker);
    FUNC0(cinfo, (int) num_markers);

    /* Add the profile data */
    while (length--) {
      FUNC0(cinfo, *icc_data_ptr);
      icc_data_ptr++;
    }
    cur_marker++;
  }
}