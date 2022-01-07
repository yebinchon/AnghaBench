
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int * Decode (int ,int const*,size_t,int*,int*,int *) ;
 int MODE_ARGB ;

uint8_t* WebPDecodeARGB(const uint8_t* data, size_t data_size,
                        int* width, int* height) {
  return Decode(MODE_ARGB, data, data_size, width, height, ((void*)0));
}
