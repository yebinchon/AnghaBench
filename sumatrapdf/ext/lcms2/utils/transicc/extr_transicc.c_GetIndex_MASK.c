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
typedef  int /*<<< orphan*/  cmsUInt16Number ;
typedef  int /*<<< orphan*/  cmsNAMEDCOLORLIST ;
typedef  int /*<<< orphan*/  cmsContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ) ; 
 int cmsMAX_PATH ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/  const*,int,char*,char*,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  hTrans ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*,char*) ; 

__attribute__((used)) static
cmsUInt16Number FUNC7(cmsContext ContextID)
{
    char Buffer[4096], Name[cmsMAX_PATH], Prefix[40], Suffix[40];
    int index, max;
    const cmsNAMEDCOLORLIST* NamedColorList;

    NamedColorList = FUNC3(hTrans);
    if (NamedColorList == NULL) return 0;

    max = FUNC4(ContextID, NamedColorList)-1;

    FUNC1(ContextID, Buffer, "Color index (0..%d)? ", max);
    index = FUNC2(Buffer);

    if (index > max)
        FUNC0("Named color %d out of range!", index);

    FUNC5(ContextID, NamedColorList, index, Name, Prefix, Suffix, NULL, NULL);

    FUNC6("\n%s %s %s\n", Prefix, Name, Suffix);

    return (cmsUInt16Number) index;
}