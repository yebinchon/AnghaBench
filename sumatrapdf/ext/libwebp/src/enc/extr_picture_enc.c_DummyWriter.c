
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int WebPPicture ;



__attribute__((used)) static int DummyWriter(const uint8_t* data, size_t data_size,
                       const WebPPicture* const picture) {

  (void)data;
  (void)data_size;
  (void)picture;
  return 1;
}
