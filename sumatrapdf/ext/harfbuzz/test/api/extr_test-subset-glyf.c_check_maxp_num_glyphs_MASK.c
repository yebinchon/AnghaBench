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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint16_t ;
typedef  int /*<<< orphan*/  hb_face_t ;
typedef  int /*<<< orphan*/  hb_blob_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char,char,char,char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (hb_face_t *face, uint16_t expected_num_glyphs, bool hints)
{
  hb_blob_t *maxp_blob = FUNC4 (face, FUNC0 ('m','a','x', 'p'));

  unsigned int maxp_len;
  uint8_t *raw_maxp = (uint8_t *) FUNC3(maxp_blob, &maxp_len);

  FUNC1 (raw_maxp, 4, expected_num_glyphs); // numGlyphs
  if (!hints)
  {
    FUNC1 (raw_maxp, 14, 1); // maxZones
    FUNC1 (raw_maxp, 16, 0); // maxTwilightPoints
    FUNC1 (raw_maxp, 18, 0); // maxStorage
    FUNC1 (raw_maxp, 20, 0); // maxFunctionDefs
    FUNC1 (raw_maxp, 22, 0); // maxInstructionDefs
    FUNC1 (raw_maxp, 24, 0); // maxStackElements
    FUNC1 (raw_maxp, 26, 0); // maxSizeOfInstructions
  }

  FUNC2 (maxp_blob);
}