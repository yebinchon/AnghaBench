
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int GetLE24 (int const*) ;

__attribute__((used)) static int ReadLE24(const uint8_t** data) {
  const int val = GetLE24(*data);
  *data += 3;
  return val;
}
