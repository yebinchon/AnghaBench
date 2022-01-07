
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int WebPMuxImage ;
typedef scalar_t__ WebPMuxError ;
struct TYPE_6__ {int * images_; } ;
typedef TYPE_1__ WebPMux ;
struct TYPE_7__ {scalar_t__ size; int * bytes; } ;
typedef TYPE_2__ WebPData ;


 int DeleteAllImages (int **) ;
 scalar_t__ MAX_CHUNK_PAYLOAD ;
 int MuxImageInit (int *) ;
 scalar_t__ MuxImagePush (int *,int **) ;
 int MuxImageRelease (int *) ;
 scalar_t__ SetAlphaAndImageChunks (TYPE_2__ const*,int,int *) ;
 scalar_t__ WEBP_MUX_INVALID_ARGUMENT ;
 scalar_t__ WEBP_MUX_OK ;

WebPMuxError WebPMuxSetImage(WebPMux* mux, const WebPData* bitstream,
                             int copy_data) {
  WebPMuxImage wpi;
  WebPMuxError err;


  if (mux == ((void*)0) || bitstream == ((void*)0) || bitstream->bytes == ((void*)0) ||
      bitstream->size > MAX_CHUNK_PAYLOAD) {
    return WEBP_MUX_INVALID_ARGUMENT;
  }

  if (mux->images_ != ((void*)0)) {

    DeleteAllImages(&mux->images_);
  }

  MuxImageInit(&wpi);
  err = SetAlphaAndImageChunks(bitstream, copy_data, &wpi);
  if (err != WEBP_MUX_OK) goto Err;


  err = MuxImagePush(&wpi, &mux->images_);
  if (err != WEBP_MUX_OK) goto Err;


  return WEBP_MUX_OK;

 Err:
  MuxImageRelease(&wpi);
  return err;
}
