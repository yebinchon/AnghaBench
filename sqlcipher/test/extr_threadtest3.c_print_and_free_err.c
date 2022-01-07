
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Error ;


 int free_err (int *) ;
 int print_err (int *) ;

__attribute__((used)) static void print_and_free_err(Error *p){
  print_err(p);
  free_err(p);
}
