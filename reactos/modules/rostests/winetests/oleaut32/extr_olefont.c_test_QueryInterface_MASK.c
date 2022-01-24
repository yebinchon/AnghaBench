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
typedef  int /*<<< orphan*/ * LPVOID ;
typedef  int LONG ;
typedef  int /*<<< orphan*/  IFont ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  E_POINTER ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  IID_IFont ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 

__attribute__((used)) static void FUNC7(void)
{
    LPVOID pvObj = NULL;
    HRESULT hr;
    IFont*  font = NULL;
    LONG ref;

    hr = FUNC6(NULL, &IID_IFont, NULL);
    FUNC0(hr, E_POINTER);

    hr = FUNC6(NULL, &IID_IFont, &pvObj);
    font = pvObj;

    FUNC0(hr, S_OK);
    FUNC5(font != NULL,"OCFI (NULL,..) returns NULL, instead of !NULL\n");

    pvObj = NULL;
    hr = FUNC2( font, &IID_IFont, &pvObj);
    FUNC0(hr, S_OK);

    /* Test if QueryInterface increments ref counter for IFONTs */
    ref = FUNC1(font);
    FUNC5(ref == 3 ||
       FUNC4(ref == 1), /* win95 */
           "IFont_QI expected ref value 3 but instead got %d\n", ref);
    FUNC3(font);

    FUNC5(pvObj != NULL,"IFont_QI does return NULL, instead of a ptr\n");

    FUNC3(font);
    FUNC3(font);
}