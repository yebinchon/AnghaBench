
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isConsonant (char const*) ;

__attribute__((used)) static int doubleConsonant(const char *z){
  return isConsonant(z) && z[0]==z[1];
}
