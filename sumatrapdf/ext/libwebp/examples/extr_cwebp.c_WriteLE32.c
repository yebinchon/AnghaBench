
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int FILE ;


 int WriteLE (int * const,int ,int) ;

__attribute__((used)) static int WriteLE32(FILE* const out, uint32_t val) {
  return WriteLE(out, val, 4);
}
