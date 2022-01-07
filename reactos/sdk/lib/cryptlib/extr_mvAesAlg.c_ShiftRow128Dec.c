
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ MV_U8 ;
typedef int MV_U32 ;


 int MAXBC ;

void ShiftRow128Dec(MV_U8 a[4][MAXBC]) {



    MV_U8 tmp[MAXBC];

    tmp[0] = a[1][3];
    tmp[1] = a[1][0];
    tmp[2] = a[1][1];
    tmp[3] = a[1][2];

    ((MV_U32*)(&(a[1][0])))[0] = ((MV_U32*)(&(tmp[0])))[0];







    tmp[0] = a[2][2];
    tmp[1] = a[2][3];
    tmp[2] = a[2][0];
    tmp[3] = a[2][1];

    ((MV_U32*)(&(a[2][0])))[0] = ((MV_U32*)(&(tmp[0])))[0];







    tmp[0] = a[3][1];
    tmp[1] = a[3][2];
    tmp[2] = a[3][3];
    tmp[3] = a[3][0];

    ((MV_U32*)(&(a[3][0])))[0] = ((MV_U32*)(&(tmp[0])))[0];






}
