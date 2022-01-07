
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ULONG64 ;
typedef int ULONG ;


 int SAMPLE_FREQENCY ;

__attribute__((used)) static
ULONG64
DoLinearRegression(
    ULONG XMax,
    ULONG64 *ArrayY)
{
    ULONG X, SumXX;
    ULONG64 SumXY;


    SumXX = (XMax * (XMax + 1) * (2*XMax + 1)) / 6;



    for (SumXY = 0, X = 1; X <= XMax; X++)
    {
         SumXY += X * (ArrayY[X] - ArrayY[0]);
    }


    SumXY *= SAMPLE_FREQENCY;


    return (SumXY + (SumXX/2)) / SumXX;
}
