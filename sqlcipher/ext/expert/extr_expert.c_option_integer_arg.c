
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atoi (char const*) ;

__attribute__((used)) static int option_integer_arg(const char *zVal){
  return atoi(zVal);
}
