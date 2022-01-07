
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TestDb ;


 int unused_parameter (int) ;

__attribute__((used)) static int error_transaction_function(TestDb *p, int iLevel){
  unused_parameter(p);
  unused_parameter(iLevel);
  return -1;
}
