
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
unsigned roundup_allones(unsigned limit){
  unsigned m = 1;
  while( m<limit ) m = (m<<1)+1;
  return m;
}
