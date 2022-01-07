
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;
typedef int mpg123_handle ;


 int DOUBLE_TO_REAL_SCALE_LAYER12 (int) ;
 int ** layer12_table ;
 int* mulmul ;
 int pow (double,double) ;

real* init_layer12_table(mpg123_handle *fr, real *table, int m)
{





 int i,j;
 for(j=3,i=0;i<63;i++,j--)
 *table++ = DOUBLE_TO_REAL_SCALE_LAYER12(mulmul[m] * pow(2.0,(double) j / 3.0));


 return table;
}
