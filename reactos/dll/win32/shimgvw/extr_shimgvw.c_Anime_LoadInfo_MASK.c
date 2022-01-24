#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ value; } ;
typedef  TYPE_1__ PropertyItem ;
typedef  TYPE_1__ GUID ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ANIME_TIMER_ID ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ Ok ; 
 int /*<<< orphan*/  PropertyTagFrameDelay ; 
 int /*<<< orphan*/  PropertyTagLoopCount ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  hDispWnd ; 
 int /*<<< orphan*/  image ; 
 scalar_t__ m_nFrameCount ; 
 int /*<<< orphan*/  m_nLoopCount ; 
 TYPE_1__* m_pDelayItem ; 
 scalar_t__ FUNC10 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC11(void)
{
    GUID *dims;
    UINT nDimCount = 0;
    UINT cbItem;
    UINT result;
    PropertyItem *pItem;

    FUNC0();
    FUNC6(hDispWnd, ANIME_TIMER_ID);

    if (!image)
        return FALSE;

    FUNC4(image, &nDimCount);
    if (nDimCount)
    {
        dims = (GUID *)FUNC8(nDimCount, sizeof(GUID));
        if (dims)
        {
            FUNC5(image, dims, nDimCount);
            FUNC3(image, dims, &result);
            m_nFrameCount = result;
            FUNC9(dims);
        }
    }

    result = 0;
    FUNC2(image, PropertyTagFrameDelay, &result);
    cbItem = result;
    if (cbItem)
    {
        m_pDelayItem = (PropertyItem *)FUNC10(cbItem);
        FUNC1(image, PropertyTagFrameDelay, cbItem, m_pDelayItem);
    }

    result = 0;
    FUNC2(image, PropertyTagLoopCount, &result);
    cbItem = result;
    if (cbItem)
    {
        pItem = (PropertyItem *)FUNC10(cbItem);
        if (pItem)
        {
            if (FUNC1(image, PropertyTagLoopCount, cbItem, pItem) == Ok)
            {
                m_nLoopCount = *(WORD *)pItem->value;
            }
            FUNC9(pItem);
        }
    }

    if (m_pDelayItem)
    {
        FUNC7(hDispWnd, ANIME_TIMER_ID, 0, NULL);
    }

    return m_pDelayItem != NULL;
}