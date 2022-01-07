
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int m_nXPos; int m_nYPos; int m_nZPos; } ;


 int m_nTotStars ;
 TYPE_1__* stars ;

void MoveStarField (int nXofs, int nYofs, int nZofs)
{
    int i;
    for (i = 0; i < m_nTotStars; i++)
    {
        stars[i].m_nXPos += nXofs;
        stars[i].m_nYPos += nYofs;
        stars[i].m_nZPos += nZofs;

        if (stars[i].m_nZPos > m_nTotStars)
            stars[i].m_nZPos -= m_nTotStars;
        if (stars[i].m_nZPos < 1)
            stars[i].m_nZPos += m_nTotStars;
    }
}
