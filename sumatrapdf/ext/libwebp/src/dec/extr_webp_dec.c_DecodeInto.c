
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_32__ TYPE_9__ ;
typedef struct TYPE_31__ TYPE_5__ ;
typedef struct TYPE_30__ TYPE_4__ ;
typedef struct TYPE_29__ TYPE_3__ ;
typedef struct TYPE_28__ TYPE_2__ ;
typedef struct TYPE_27__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_27__ {size_t data_size; int have_all_data; int offset; int alpha_data_size; int alpha_data; int is_lossless; int * data; } ;
typedef TYPE_1__ WebPHeaderStructure ;
struct TYPE_28__ {int output; TYPE_9__* options; } ;
typedef TYPE_2__ WebPDecParams ;
typedef scalar_t__ VP8StatusCode ;
struct TYPE_29__ {scalar_t__ status_; } ;
typedef TYPE_3__ VP8LDecoder ;
struct TYPE_30__ {int data_size; int height; int width; int * data; } ;
typedef TYPE_4__ VP8Io ;
struct TYPE_31__ {scalar_t__ status_; int mt_method_; int alpha_data_size_; int alpha_data_; } ;
typedef TYPE_5__ VP8Decoder ;
struct TYPE_32__ {scalar_t__ flip; } ;


 int VP8Decode (TYPE_5__* const,TYPE_4__*) ;
 int VP8Delete (TYPE_5__* const) ;
 int VP8GetHeaders (TYPE_5__* const,TYPE_4__*) ;
 int VP8GetThreadMethod (TYPE_9__*,TYPE_1__*,int ,int ) ;
 int VP8InitDithering (TYPE_9__*,TYPE_5__* const) ;
 int VP8InitIo (TYPE_4__*) ;
 int VP8LDecodeHeader (TYPE_3__* const,TYPE_4__*) ;
 int VP8LDecodeImage (TYPE_3__* const) ;
 int VP8LDelete (TYPE_3__* const) ;
 TYPE_3__* VP8LNew () ;
 TYPE_5__* VP8New () ;
 scalar_t__ VP8_STATUS_OK ;
 scalar_t__ VP8_STATUS_OUT_OF_MEMORY ;
 scalar_t__ WebPAllocateDecBuffer (int ,int ,TYPE_9__*,int ) ;
 scalar_t__ WebPFlipBuffer (int ) ;
 int WebPFreeDecBuffer (int ) ;
 int WebPInitCustomIo (TYPE_2__* const,TYPE_4__*) ;
 scalar_t__ WebPParseHeaders (TYPE_1__*) ;
 int assert (int ) ;

__attribute__((used)) static VP8StatusCode DecodeInto(const uint8_t* const data, size_t data_size,
                                WebPDecParams* const params) {
  VP8StatusCode status;
  VP8Io io;
  WebPHeaderStructure headers;

  headers.data = data;
  headers.data_size = data_size;
  headers.have_all_data = 1;
  status = WebPParseHeaders(&headers);
  if (status != VP8_STATUS_OK) {
    return status;
  }

  assert(params != ((void*)0));
  VP8InitIo(&io);
  io.data = headers.data + headers.offset;
  io.data_size = headers.data_size - headers.offset;
  WebPInitCustomIo(params, &io);

  if (!headers.is_lossless) {
    VP8Decoder* const dec = VP8New();
    if (dec == ((void*)0)) {
      return VP8_STATUS_OUT_OF_MEMORY;
    }
    dec->alpha_data_ = headers.alpha_data;
    dec->alpha_data_size_ = headers.alpha_data_size;


    if (!VP8GetHeaders(dec, &io)) {
      status = dec->status_;
    } else {

      status = WebPAllocateDecBuffer(io.width, io.height, params->options,
                                     params->output);
      if (status == VP8_STATUS_OK) {

        dec->mt_method_ = VP8GetThreadMethod(params->options, &headers,
                                             io.width, io.height);
        VP8InitDithering(params->options, dec);
        if (!VP8Decode(dec, &io)) {
          status = dec->status_;
        }
      }
    }
    VP8Delete(dec);
  } else {
    VP8LDecoder* const dec = VP8LNew();
    if (dec == ((void*)0)) {
      return VP8_STATUS_OUT_OF_MEMORY;
    }
    if (!VP8LDecodeHeader(dec, &io)) {
      status = dec->status_;
    } else {

      status = WebPAllocateDecBuffer(io.width, io.height, params->options,
                                     params->output);
      if (status == VP8_STATUS_OK) {
        if (!VP8LDecodeImage(dec)) {
          status = dec->status_;
        }
      }
    }
    VP8LDelete(dec);
  }

  if (status != VP8_STATUS_OK) {
    WebPFreeDecBuffer(params->output);
  } else {
    if (params->options != ((void*)0) && params->options->flip) {


      status = WebPFlipBuffer(params->output);
    }
  }
  return status;
}
