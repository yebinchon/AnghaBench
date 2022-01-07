
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int * unknown_; int * img_; int * alpha_; int * header_; } ;
typedef TYPE_1__ WebPMuxImage ;


 int * ChunkEmit (int *,int *) ;
 int * ChunkEmitSpecial (int *,int ,int *) ;
 int * ChunkListEmit (int *,int *) ;
 int MuxImageDiskSize (TYPE_1__ const* const) ;
 int assert (TYPE_1__ const* const) ;

uint8_t* MuxImageEmit(const WebPMuxImage* const wpi, uint8_t* dst) {




  assert(wpi);
  if (wpi->header_ != ((void*)0)) {
    dst = ChunkEmitSpecial(wpi->header_, MuxImageDiskSize(wpi), dst);
  }
  if (wpi->alpha_ != ((void*)0)) dst = ChunkEmit(wpi->alpha_, dst);
  if (wpi->img_ != ((void*)0)) dst = ChunkEmit(wpi->img_, dst);
  if (wpi->unknown_ != ((void*)0)) dst = ChunkListEmit(wpi->unknown_, dst);
  return dst;
}
