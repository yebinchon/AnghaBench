
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int check_oom (void*) ;
 void* sqlite3_malloc (int) ;

__attribute__((used)) static void *safe_malloc(int sz){
  void *x = sqlite3_malloc(sz>0?sz:1);
  check_oom(x);
  return x;
}
