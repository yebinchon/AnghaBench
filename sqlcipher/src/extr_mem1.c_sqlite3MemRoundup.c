
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ROUND8 (int) ;

__attribute__((used)) static int sqlite3MemRoundup(int n){
  return ROUND8(n);
}
