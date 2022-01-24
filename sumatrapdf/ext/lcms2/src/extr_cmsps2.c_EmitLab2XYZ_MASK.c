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
typedef  int /*<<< orphan*/  cmsIOHANDLER ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 

__attribute__((used)) static
void FUNC1(cmsContext ContextID, cmsIOHANDLER* m)
{
    FUNC0(ContextID, m, "/RangeABC [ 0 1 0 1 0 1]\n");
    FUNC0(ContextID, m, "/DecodeABC [\n");
    FUNC0(ContextID, m, "{100 mul  16 add 116 div } bind\n");
    FUNC0(ContextID, m, "{255 mul 128 sub 500 div } bind\n");
    FUNC0(ContextID, m, "{255 mul 128 sub 200 div } bind\n");
    FUNC0(ContextID, m, "]\n");
    FUNC0(ContextID, m, "/MatrixABC [ 1 1 1 1 0 0 0 0 -1]\n");
    FUNC0(ContextID, m, "/RangeLMN [ -0.236 1.254 0 1 -0.635 1.640 ]\n");
    FUNC0(ContextID, m, "/DecodeLMN [\n");
    FUNC0(ContextID, m, "{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse 0.964200 mul} bind\n");
    FUNC0(ContextID, m, "{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse } bind\n");
    FUNC0(ContextID, m, "{dup 6 29 div ge {dup dup mul mul} {4 29 div sub 108 841 div mul} ifelse 0.824900 mul} bind\n");
    FUNC0(ContextID, m, "]\n");
}