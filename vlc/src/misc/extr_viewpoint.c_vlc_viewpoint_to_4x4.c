
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {float yaw; float pitch; float roll; } ;
typedef TYPE_1__ vlc_viewpoint_t ;


 scalar_t__ M_PI ;
 scalar_t__ M_PI_2 ;
 float cosf (float) ;
 int memset (float*,int ,int) ;
 float sinf (float) ;

void vlc_viewpoint_to_4x4( const vlc_viewpoint_t *vp, float *m )
{
    float yaw = vp->yaw * (float)M_PI / 180.f + (float)M_PI_2;
    float pitch = vp->pitch * (float)M_PI / 180.f;
    float roll = vp->roll * (float)M_PI / 180.f;

    float s, c;

    s = sinf(pitch);
    c = cosf(pitch);
    const float x_rot[4][4] = {
        { 1.f, 0.f, 0.f, 0.f },
        { 0.f, c, -s, 0.f },
        { 0.f, s, c, 0.f },
        { 0.f, 0.f, 0.f, 1.f } };

    s = sinf(yaw);
    c = cosf(yaw);
    const float y_rot[4][4] = {
        { c, 0.f, s, 0.f },
        { 0.f, 1.f, 0.f, 0.f },
        { -s, 0.f, c, 0.f },
        { 0.f, 0.f, 0.f, 1.f } };

    s = sinf(roll);
    c = cosf(roll);
    const float z_rot[4][4] = {
        { c, s, 0.f, 0.f },
        { -s, c, 0.f, 0.f },
        { 0.f, 0.f, 1.f, 0.f },
        { 0.f, 0.f, 0.f, 1.f } };





    memset(m, 0, 16 * sizeof(float));
    for (int i=0; i<4; ++i)
        for (int j=0; j<4; ++j)
            for (int k=0; k<4; ++k)
                for (int l=0; l<4; ++l)
                    m[4*i+l] += y_rot[i][j] * x_rot[j][k] * z_rot[k][l];
}
