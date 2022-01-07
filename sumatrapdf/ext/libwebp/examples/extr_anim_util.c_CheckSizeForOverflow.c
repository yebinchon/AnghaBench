
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;



__attribute__((used)) static int CheckSizeForOverflow(uint64_t size) {
  return (size == (size_t)size);
}
