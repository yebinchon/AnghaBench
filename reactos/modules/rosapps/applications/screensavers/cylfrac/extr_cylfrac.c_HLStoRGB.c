
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float _RGB (float,float,float) ;

void HLStoRGB(float H, float L, float S,
              float* R, float* G, float* B)
{
    float M1, M2;
    if(S <= 0.5) M2 = S * (1 + L);
        else M2 = S * (1 - L) + L;
    M1 = 2 * S - M2;
    if (L == 0.0)
    {
        *R = S;
        *G = S;
        *B = S;
    } else {
        *R = _RGB(H + 120.0, M1, M2);
        *G = _RGB(H , M1, M2);
        *B = _RGB(H - 120.0, M1, M2);
    }
}
