
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ i64 ;


 unsigned int HASHSIZE ;

__attribute__((used)) static unsigned int nodeHash(i64 iNode){
  return ((unsigned)iNode) % HASHSIZE;
}
