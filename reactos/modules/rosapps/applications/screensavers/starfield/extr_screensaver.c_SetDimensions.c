
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int m_nCenterX ;
 int m_nCenterY ;

void SetDimensions (int nWidth, int nHeight)
{
    m_nCenterX = nWidth / 2;
    m_nCenterY = nHeight / 2;
}
