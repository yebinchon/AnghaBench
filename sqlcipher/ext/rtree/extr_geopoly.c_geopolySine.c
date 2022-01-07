
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 double GEOPOLY_PI ;
 int assert (int) ;

__attribute__((used)) static double geopolySine(double r){
  assert( r>=-0.5*GEOPOLY_PI && r<=2.0*GEOPOLY_PI );
  if( r>=1.5*GEOPOLY_PI ){
    r -= 2.0*GEOPOLY_PI;
  }
  if( r>=0.5*GEOPOLY_PI ){
    return -geopolySine(r-GEOPOLY_PI);
  }else{
    double r2 = r*r;
    double r3 = r2*r;
    double r5 = r3*r2;
    return 0.9996949*r - 0.1656700*r3 + 0.0075134*r5;
  }
}
