
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * unknown_; int * img_; int * alpha_; int * header_; } ;
typedef TYPE_1__ WebPMuxImage ;


 scalar_t__ ChunkDiskSize (int *) ;
 scalar_t__ ChunkListDiskSize (int *) ;

size_t MuxImageDiskSize(const WebPMuxImage* const wpi) {
  size_t size = 0;
  if (wpi->header_ != ((void*)0)) size += ChunkDiskSize(wpi->header_);
  if (wpi->alpha_ != ((void*)0)) size += ChunkDiskSize(wpi->alpha_);
  if (wpi->img_ != ((void*)0)) size += ChunkDiskSize(wpi->img_);
  if (wpi->unknown_ != ((void*)0)) size += ChunkListDiskSize(wpi->unknown_);
  return size;
}
