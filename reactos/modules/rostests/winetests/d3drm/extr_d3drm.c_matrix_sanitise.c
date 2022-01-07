
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float** D3DRMMATRIX4D ;



__attribute__((used)) static void matrix_sanitise(D3DRMMATRIX4D m)
{
    unsigned int i, j;

    for (i = 0; i < 4; ++i)
    {
        for (j = 0; j < 4; ++j)
        {
            if (m[i][j] > -1e-7f && m[i][j] < 1e-7f)
                m[i][j] = 0.0f;
        }
    }
}
