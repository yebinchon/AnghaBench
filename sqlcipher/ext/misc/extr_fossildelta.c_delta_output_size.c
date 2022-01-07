
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int deltaGetInt (char const**,int*) ;

__attribute__((used)) static int delta_output_size(const char *zDelta, int lenDelta){
  int size;
  size = deltaGetInt(&zDelta, &lenDelta);
  if( *zDelta!='\n' ){

    return -1;
  }
  return size;
}
