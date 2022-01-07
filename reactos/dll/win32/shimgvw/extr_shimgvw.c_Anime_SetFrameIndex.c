
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;
typedef int GUID ;


 int FrameDimensionPage ;
 int FrameDimensionTime ;
 scalar_t__ GdipImageSelectActiveFrame (int ,int *,scalar_t__) ;
 scalar_t__ Ok ;
 int image ;
 scalar_t__ m_nFrameCount ;
 scalar_t__ m_nFrameIndex ;

__attribute__((used)) static void Anime_SetFrameIndex(UINT nFrameIndex)
{
    if (nFrameIndex < m_nFrameCount)
    {
        GUID guid = FrameDimensionTime;
        if (Ok != GdipImageSelectActiveFrame(image, &guid, nFrameIndex))
        {
            guid = FrameDimensionPage;
            GdipImageSelectActiveFrame(image, &guid, nFrameIndex);
        }
    }
    m_nFrameIndex = nFrameIndex;
}
