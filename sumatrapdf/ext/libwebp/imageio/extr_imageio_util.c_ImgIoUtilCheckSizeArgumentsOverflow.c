
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 scalar_t__ WEBP_MAX_IMAGE_SIZE ;

int ImgIoUtilCheckSizeArgumentsOverflow(uint64_t nmemb, size_t size) {
  const uint64_t total_size = nmemb * size;
  int ok = (total_size == (size_t)total_size);



  return ok;
}
