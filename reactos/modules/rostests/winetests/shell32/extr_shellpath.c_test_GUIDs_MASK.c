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

/* Variables and functions */
 int /*<<< orphan*/  CLSID_CommonDocuments ; 
 int /*<<< orphan*/  CLSID_ControlPanel ; 
 int /*<<< orphan*/  CLSID_Internet ; 
 int /*<<< orphan*/  CLSID_MyComputer ; 
 int /*<<< orphan*/  CLSID_MyDocuments ; 
 int /*<<< orphan*/  CLSID_NetworkExplorerFolder ; 
 int /*<<< orphan*/  CLSID_NetworkPlaces ; 
 int /*<<< orphan*/  CLSID_Printers ; 
 int /*<<< orphan*/  CLSID_RecycleBin ; 
 int /*<<< orphan*/  CSIDL_BITBUCKET ; 
 int /*<<< orphan*/  CSIDL_COMMON_DOCUMENTS ; 
 int /*<<< orphan*/  CSIDL_CONTROLS ; 
 int /*<<< orphan*/  CSIDL_DRIVES ; 
 int /*<<< orphan*/  CSIDL_INTERNET ; 
 int /*<<< orphan*/  CSIDL_NETWORK ; 
 int /*<<< orphan*/  CSIDL_PERSONAL ; 
 int /*<<< orphan*/  CSIDL_PRINTERS ; 
 int /*<<< orphan*/  _CLSID_Documents ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(void)
{
    FUNC0(CSIDL_BITBUCKET, &CLSID_RecycleBin, NULL);
    FUNC0(CSIDL_CONTROLS, &CLSID_ControlPanel, NULL);
    FUNC0(CSIDL_DRIVES, &CLSID_MyComputer, NULL);
    FUNC0(CSIDL_INTERNET, &CLSID_Internet, NULL);
    FUNC0(CSIDL_NETWORK, &CLSID_NetworkPlaces, &CLSID_NetworkExplorerFolder); /* Vista and higher */
    FUNC0(CSIDL_PERSONAL, &CLSID_MyDocuments, &_CLSID_Documents /* win8 */);
    FUNC0(CSIDL_COMMON_DOCUMENTS, &CLSID_CommonDocuments, NULL);
    FUNC0(CSIDL_PRINTERS, &CLSID_Printers, NULL);
}