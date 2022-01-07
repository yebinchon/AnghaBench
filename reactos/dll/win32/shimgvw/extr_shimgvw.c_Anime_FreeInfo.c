
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ UINT ;


 int free (int *) ;
 scalar_t__ m_nFrameCount ;
 scalar_t__ m_nFrameIndex ;
 scalar_t__ m_nLoopCount ;
 scalar_t__ m_nLoopIndex ;
 int * m_pDelayItem ;

__attribute__((used)) static void Anime_FreeInfo(void)
{
    if (m_pDelayItem)
    {
        free(m_pDelayItem);
        m_pDelayItem = ((void*)0);
    }
    m_nFrameIndex = 0;
    m_nFrameCount = 0;
    m_nLoopIndex = 0;
    m_nLoopCount = (UINT)-1;
}
