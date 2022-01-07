
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned int get32bits(unsigned char *p){
  return (p[0]<<24) + (p[1]<<16) + (p[2]<<8) + p[3];
}
