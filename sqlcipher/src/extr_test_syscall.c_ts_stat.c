
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int dummy; } ;


 int orig_stat (char const*,struct stat*) ;
 scalar_t__ tsIsFail () ;

__attribute__((used)) static int ts_stat(const char *zPath, struct stat *p){
  if( tsIsFail() ){
    return -1;
  }
  return orig_stat(zPath, p);
}
