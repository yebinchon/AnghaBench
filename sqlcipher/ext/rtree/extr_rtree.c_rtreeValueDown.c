
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sqlite3_value ;
typedef float RtreeValue ;


 double RNDAWAY ;
 double RNDTOWARDS ;
 double sqlite3_value_double (int *) ;

__attribute__((used)) static RtreeValue rtreeValueDown(sqlite3_value *v){
  double d = sqlite3_value_double(v);
  float f = (float)d;
  if( f>d ){
    f = (float)(d*(d<0 ? RNDAWAY : RNDTOWARDS));
  }
  return f;
}
