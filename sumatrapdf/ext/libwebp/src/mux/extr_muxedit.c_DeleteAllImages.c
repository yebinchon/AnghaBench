
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WebPMuxImage ;


 int * MuxImageDelete (int *) ;

__attribute__((used)) static void DeleteAllImages(WebPMuxImage** const wpi_list) {
  while (*wpi_list != ((void*)0)) {
    *wpi_list = MuxImageDelete(*wpi_list);
  }
}
