
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;

__attribute__((used)) static int safe_strcmp(const char *a, const char *b){
  if( a==b ) return 0;
  if( a==0 ) return -1;
  if( b==0 ) return 1;
  return strcmp(a,b);
}
