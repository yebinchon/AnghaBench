
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* WebPSafeMalloc (int,size_t) ;

void* WebPMalloc(size_t size) {
  return WebPSafeMalloc(1, size);
}
