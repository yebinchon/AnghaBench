
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_nOldX; int m_nOldY; scalar_t__ m_nZPos; scalar_t__ m_nYPos; scalar_t__ m_nXPos; } ;
typedef int HDC ;


 int RGB (int,int,int) ;
 int SetPixel (int ,int,int,int ) ;
 scalar_t__ m_nCenterX ;
 scalar_t__ m_nCenterY ;
 int m_nTotStars ;
 TYPE_1__* stars ;

void DrawStarField (HDC pDC)
{
    int nX, nY;
    int i;
    for (i = 0; i < m_nTotStars; i++)
    {

        SetPixel (
            pDC,
            stars[i].m_nOldX,
            stars[i].m_nOldY,
            RGB (0, 0, 0));

        nX = (int)((((long)stars[i].m_nXPos << 7) / (long)stars[i].m_nZPos) + m_nCenterX);
        nY = (int)((((long)stars[i].m_nYPos << 7) / (long)stars[i].m_nZPos) + m_nCenterY);


        SetPixel (
            pDC,
            nX,
            nY,
            RGB (255, 255, 255));


        stars[i].m_nOldX = nX;
        stars[i].m_nOldY = nY;
    }
}
