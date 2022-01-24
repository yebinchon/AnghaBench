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
    FUNC0(ContextID, m, "/RangeLMN [ -0.635 2.0 0 2 -0.635 2.0 ]\n");
    FUNC0(ContextID, m, "/EncodeLMN [\n");
    FUNC0(ContextID, m, "{ 0.964200  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n");
    FUNC0(ContextID, m, "{ 1.000000  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n");
    FUNC0(ContextID, m, "{ 0.824900  div dup 0.008856 le {7.787 mul 16 116 div add}{1 3 div exp} ifelse } bind\n");
    FUNC0(ContextID, m, "]\n");
    FUNC0(ContextID, m, "/MatrixABC [ 0 1 0 1 -1 1 0 0 -1 ]\n");
    FUNC0(ContextID, m, "/EncodeABC [\n");


    FUNC0(ContextID, m, "{ 116 mul  16 sub 100 div  } bind\n");
    FUNC0(ContextID, m, "{ 500 mul 128 add 256 div  } bind\n");
    FUNC0(ContextID, m, "{ 200 mul 128 add 256 div  } bind\n");


    FUNC0(ContextID, m, "]\n");


}