
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int csv_boolean (char const*) ;
 char* csv_skip_whitespace (char const*) ;
 scalar_t__ strncmp (char const*,char const*,int) ;

__attribute__((used)) static int csv_boolean_parameter(
  const char *zTag,
  int nTag,
  const char *z,
  int *pValue
){
  int b;
  z = csv_skip_whitespace(z);
  if( strncmp(zTag, z, nTag)!=0 ) return 0;
  z = csv_skip_whitespace(z + nTag);
  if( z[0]==0 ){
    *pValue = 1;
    return 1;
  }
  if( z[0]!='=' ) return 0;
  z = csv_skip_whitespace(z+1);
  b = csv_boolean(z);
  if( b>=0 ){
    *pValue = b;
    return 1;
  }
  return 0;
}
