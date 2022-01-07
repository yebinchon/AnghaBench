
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int cmsVEC3 ;
struct TYPE_5__ {int u; int a; } ;
typedef TYPE_1__ cmsLine ;
typedef double cmsFloat64Number ;
typedef int cmsContext ;
typedef int cmsBool ;


 int GetPointOfLine (int *,TYPE_1__ const*,double) ;
 double MATRIX_DET_TOLERANCE ;
 int TRUE ;
 double _cmsVEC3dot (int ,int *,int *) ;
 int _cmsVEC3minus (int ,int *,int *,int *) ;
 double fabs (double) ;

__attribute__((used)) static
cmsBool ClosestLineToLine(cmsContext ContextID, cmsVEC3* r, const cmsLine* line1, const cmsLine* line2)
{
    cmsFloat64Number a, b, c, d, e, D;
    cmsFloat64Number sc, sN, sD;

    cmsFloat64Number tN, tD;
    cmsVEC3 w0;

    _cmsVEC3minus(ContextID, &w0, &line1 ->a, &line2 ->a);

    a = _cmsVEC3dot(ContextID, &line1 ->u, &line1 ->u);
    b = _cmsVEC3dot(ContextID, &line1 ->u, &line2 ->u);
    c = _cmsVEC3dot(ContextID, &line2 ->u, &line2 ->u);
    d = _cmsVEC3dot(ContextID, &line1 ->u, &w0);
    e = _cmsVEC3dot(ContextID, &line2 ->u, &w0);

    D = a*c - b * b;
    sD = tD = D;

    if (D < MATRIX_DET_TOLERANCE) {

        sN = 0.0;
        sD = 1.0;
        tN = e;
        tD = c;
    }
    else {

        sN = (b*e - c*d);
        tN = (a*e - b*d);

        if (sN < 0.0) {

            sN = 0.0;
            tN = e;
            tD = c;
        }
        else if (sN > sD) {
            sN = sD;
            tN = e + b;
            tD = c;
        }
    }

    if (tN < 0.0) {

        tN = 0.0;

        if (-d < 0.0)
            sN = 0.0;
        else if (-d > a)
            sN = sD;
        else {
            sN = -d;
            sD = a;
        }
    }
    else if (tN > tD) {

        tN = tD;


        if ((-d + b) < 0.0)
            sN = 0;
        else if ((-d + b) > a)
            sN = sD;
        else {
            sN = (-d + b);
            sD = a;
        }
    }

    sc = (fabs(sN) < MATRIX_DET_TOLERANCE ? 0.0 : sN / sD);


    GetPointOfLine(r, line1, sc);
    return TRUE;
}
