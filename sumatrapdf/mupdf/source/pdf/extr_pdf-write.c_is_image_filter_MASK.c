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
typedef  int /*<<< orphan*/  pdf_obj ;

/* Variables and functions */
 int /*<<< orphan*/  CCF ; 
 int /*<<< orphan*/  CCITTFaxDecode ; 
 int /*<<< orphan*/  DCT ; 
 int /*<<< orphan*/  DCTDecode ; 
 int /*<<< orphan*/  JBIG2Decode ; 
 int /*<<< orphan*/  JPXDecode ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  RL ; 
 int /*<<< orphan*/  RunLengthDecode ; 

__attribute__((used)) static int FUNC1(pdf_obj *s)
{
	return
		s == FUNC0(CCITTFaxDecode) || s == FUNC0(CCF) ||
		s == FUNC0(DCTDecode) || s == FUNC0(DCT) ||
		s == FUNC0(RunLengthDecode) || s == FUNC0(RL) ||
		s == FUNC0(JBIG2Decode) ||
		s == FUNC0(JPXDecode);
}