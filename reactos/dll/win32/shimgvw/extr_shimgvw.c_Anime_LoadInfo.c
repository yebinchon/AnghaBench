
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


typedef int WORD ;
typedef scalar_t__ UINT ;
struct TYPE_8__ {scalar_t__ value; } ;
typedef TYPE_1__ PropertyItem ;
typedef TYPE_1__ GUID ;
typedef int BOOL ;


 int ANIME_TIMER_ID ;
 int Anime_FreeInfo () ;
 int FALSE ;
 scalar_t__ GdipGetPropertyItem (int ,int ,scalar_t__,TYPE_1__*) ;
 int GdipGetPropertyItemSize (int ,int ,scalar_t__*) ;
 int GdipImageGetFrameCount (int ,TYPE_1__*,scalar_t__*) ;
 int GdipImageGetFrameDimensionsCount (int ,scalar_t__*) ;
 int GdipImageGetFrameDimensionsList (int ,TYPE_1__*,scalar_t__) ;
 int KillTimer (int ,int ) ;
 scalar_t__ Ok ;
 int PropertyTagFrameDelay ;
 int PropertyTagLoopCount ;
 int SetTimer (int ,int ,int ,int *) ;
 scalar_t__ calloc (scalar_t__,int) ;
 int free (TYPE_1__*) ;
 int hDispWnd ;
 int image ;
 scalar_t__ m_nFrameCount ;
 int m_nLoopCount ;
 TYPE_1__* m_pDelayItem ;
 scalar_t__ malloc (scalar_t__) ;

__attribute__((used)) static BOOL Anime_LoadInfo(void)
{
    GUID *dims;
    UINT nDimCount = 0;
    UINT cbItem;
    UINT result;
    PropertyItem *pItem;

    Anime_FreeInfo();
    KillTimer(hDispWnd, ANIME_TIMER_ID);

    if (!image)
        return FALSE;

    GdipImageGetFrameDimensionsCount(image, &nDimCount);
    if (nDimCount)
    {
        dims = (GUID *)calloc(nDimCount, sizeof(GUID));
        if (dims)
        {
            GdipImageGetFrameDimensionsList(image, dims, nDimCount);
            GdipImageGetFrameCount(image, dims, &result);
            m_nFrameCount = result;
            free(dims);
        }
    }

    result = 0;
    GdipGetPropertyItemSize(image, PropertyTagFrameDelay, &result);
    cbItem = result;
    if (cbItem)
    {
        m_pDelayItem = (PropertyItem *)malloc(cbItem);
        GdipGetPropertyItem(image, PropertyTagFrameDelay, cbItem, m_pDelayItem);
    }

    result = 0;
    GdipGetPropertyItemSize(image, PropertyTagLoopCount, &result);
    cbItem = result;
    if (cbItem)
    {
        pItem = (PropertyItem *)malloc(cbItem);
        if (pItem)
        {
            if (GdipGetPropertyItem(image, PropertyTagLoopCount, cbItem, pItem) == Ok)
            {
                m_nLoopCount = *(WORD *)pItem->value;
            }
            free(pItem);
        }
    }

    if (m_pDelayItem)
    {
        SetTimer(hDispWnd, ANIME_TIMER_ID, 0, ((void*)0));
    }

    return m_pDelayItem != ((void*)0);
}
