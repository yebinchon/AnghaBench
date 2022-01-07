
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {double x; double y; } ;
struct TYPE_7__ {double x; double y; } ;
struct TYPE_6__ {double x; double y; } ;
struct TYPE_5__ {double x; double y; } ;
struct cie1931_primaries {TYPE_4__ white; TYPE_3__ blue; TYPE_2__ green; TYPE_1__ red; } ;


 size_t BLUE ;
 int Float3Multiply (double*,double*,double*) ;
 int Float3x3Inverse (double*) ;
 size_t GREEN ;
 size_t RED ;

__attribute__((used)) static void GetRGB2XYZMatrix(const struct cie1931_primaries *primaries,
                             double out[3 * 3])
{



    double X[3], Y[3], Z[3], S[3], W[3];
    double W_TO_S[3 * 3];

    X[0 ] = primaries->red.x / primaries->red.y;
    X[1] = 1;
    X[2 ] = (1 - primaries->red.x - primaries->red.y) / primaries->red.y;

    Y[0 ] = primaries->green.x / primaries->green.y;
    Y[1] = 1;
    Y[2 ] = (1 - primaries->green.x - primaries->green.y) / primaries->green.y;

    Z[0 ] = primaries->blue.x / primaries->blue.y;
    Z[1] = 1;
    Z[2 ] = (1 - primaries->blue.x - primaries->blue.y) / primaries->blue.y;

    W_TO_S[0 + 0*3] = X[0 ];
    W_TO_S[1 + 0*3] = X[1];
    W_TO_S[2 + 0*3] = X[2 ];
    W_TO_S[0 + 1*3] = Y[0 ];
    W_TO_S[1 + 1*3] = Y[1];
    W_TO_S[2 + 1*3] = Y[2 ];
    W_TO_S[0 + 2*3] = Z[0 ];
    W_TO_S[1 + 2*3] = Z[1];
    W_TO_S[2 + 2*3] = Z[2 ];

    Float3x3Inverse(W_TO_S);

    W[0] = primaries->white.x / primaries->white.y;
    W[1] = 1;
    W[2] = (1 - primaries->white.x - primaries->white.y) / primaries->white.y;

    Float3Multiply(W, W_TO_S, S);

    out[0 + 0*3] = S[0 ] * X[0 ];
    out[1 + 0*3] = S[1] * Y[0 ];
    out[2 + 0*3] = S[2 ] * Z[0 ];
    out[0 + 1*3] = S[0 ] * X[1];
    out[1 + 1*3] = S[1] * Y[1];
    out[2 + 1*3] = S[2 ] * Z[1];
    out[0 + 2*3] = S[0 ] * X[2 ];
    out[1 + 2*3] = S[1] * Y[2 ];
    out[2 + 2*3] = S[2 ] * Z[2 ];



}
