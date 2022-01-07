
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XFORM ;


 int CombineTransform (int *,int *,int *) ;
 int ok_int (int ,int) ;
 int ok_xform (int ,float,float,float,float,double,double) ;
 int set_xform (int *,double,float,float,double,double,double) ;

void Test_CombineTransform_Inval(float eInval, float eOut)
{
    XFORM xform1, xform2, xform3;


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, eInval, 0.0, 0.0, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, eOut, 0.0, 0.0, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, eOut, 0.0, 0.0, 0.0, 0.0, 0.0);


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, 0.0, eInval, 0.0, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, 0.0, eOut, 0.0, eOut, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, eOut, eOut, 0.0, 0.0, 0.0, 0.0);


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, 0.0, 0.0, eInval, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, eOut, 0.0, eOut, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, 0.0, 0.0, eOut, eOut, 0.0, 0.0);


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, 0.0, 0.0, 0.0, eInval, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, 0.0, 0.0, 0.0, eOut, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, 0.0, 0.0, 0.0, eOut, 0.0, 0.0);


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, eInval, eInval, 0.0, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, eOut, eOut, eOut, eOut, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, eOut, eOut, 0.0, 0.0, 0.0, 0.0);


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, eInval, 0.0, eInval, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, eOut, 0.0, eOut, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, eOut, eOut, eOut, eOut, 0.0, 0.0);


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, eInval, 0.0, 0.0, eInval, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, eOut, 0.0, 0.0, eOut, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, eOut, 0.0, 0.0, eOut, 0.0, 0.0);


    set_xform(&xform1, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0);
    set_xform(&xform2, 0.0, eInval, eInval, 0.0, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform1, &xform2), 1);
    ok_xform(xform3, eOut, eOut, eOut, eOut, 0.0, 0.0);
    ok_int(CombineTransform(&xform3, &xform2, &xform1), 1);
    ok_xform(xform3, eOut, eOut, eOut, eOut, 0.0, 0.0);
}
