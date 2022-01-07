
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int real ;


 int DOUBLE_TO_REAL (double) ;
 double M_PI ;
 double cos (double) ;
 int ** pnts ;

void prepare_decode_tables()
{

  int i,k,kr,divv;
  real *costab;

  for(i=0;i<5;i++)
  {
    kr=0x10>>i; divv=0x40>>i;
    costab = pnts[i];
    for(k=0;k<kr;k++)
      costab[k] = DOUBLE_TO_REAL(1.0 / (2.0 * cos(M_PI * ((double) k * 2.0 + 1.0) / (double) divv)));
  }

}
