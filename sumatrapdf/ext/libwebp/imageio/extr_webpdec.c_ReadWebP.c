
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint64_t ;
typedef int uint32_t ;
struct TYPE_18__ {int width; int height; int* argb; int argb_stride; int y_stride; int uv_stride; int a_stride; scalar_t__ use_argb; int * a; int v; int u; int y; int colorspace; } ;
typedef TYPE_4__ WebPPicture ;
struct TYPE_21__ {int width; int height; int has_alpha; } ;
struct TYPE_16__ {int y_stride; int u_stride; int v_stride; int a_stride; int y_size; int u_size; int v_size; int a_size; int * a; int v; int u; int y; } ;
struct TYPE_15__ {int stride; int size; int * rgba; } ;
struct TYPE_17__ {TYPE_2__ YUVA; TYPE_1__ RGBA; } ;
struct TYPE_20__ {int is_external_memory; TYPE_3__ u; int colorspace; } ;
struct TYPE_19__ {TYPE_7__ input; TYPE_6__ output; } ;
typedef TYPE_5__ WebPDecoderConfig ;
typedef TYPE_6__ WebPDecBuffer ;
typedef TYPE_7__ WebPBitstreamFeatures ;
typedef scalar_t__ VP8StatusCode ;
typedef int Metadata ;


 scalar_t__ DecodeWebP (int const* const,size_t,TYPE_5__*) ;
 int ExtractMetadata (int const* const,size_t,int * const) ;
 int ImgIoUtilCheckSizeArgumentsOverflow (int,int) ;
 int MODE_ARGB ;
 int MODE_BGRA ;
 int MODE_YUV ;
 int MODE_YUVA ;
 int PrintWebPError (char*,scalar_t__) ;
 scalar_t__ VP8_STATUS_BITSTREAM_ERROR ;
 scalar_t__ VP8_STATUS_OK ;
 scalar_t__ VP8_STATUS_OUT_OF_MEMORY ;
 int WEBP_YUV420 ;
 int WEBP_YUV420A ;
 int WebPFreeDecBuffer (TYPE_6__* const) ;
 scalar_t__ WebPGetFeatures (int const* const,size_t,TYPE_7__* const) ;
 int WebPInitDecoderConfig (TYPE_5__*) ;
 int WebPPictureAlloc (TYPE_4__* const) ;
 int WebPPictureFree (TYPE_4__* const) ;
 int fprintf (int ,char*) ;
 int stderr ;

int ReadWebP(const uint8_t* const data, size_t data_size,
             WebPPicture* const pic,
             int keep_alpha, Metadata* const metadata) {
  int ok = 0;
  VP8StatusCode status = VP8_STATUS_OK;
  WebPDecoderConfig config;
  WebPDecBuffer* const output_buffer = &config.output;
  WebPBitstreamFeatures* const bitstream = &config.input;

  if (data == ((void*)0) || data_size == 0 || pic == ((void*)0)) return 0;

  if (!WebPInitDecoderConfig(&config)) {
    fprintf(stderr, "Library version mismatch!\n");
    return 0;
  }

  status = WebPGetFeatures(data, data_size, bitstream);
  if (status != VP8_STATUS_OK) {
    PrintWebPError("input data", status);
    return 0;
  }

  do {
    const int has_alpha = keep_alpha && bitstream->has_alpha;
    uint64_t stride;
    pic->width = bitstream->width;
    pic->height = bitstream->height;
    if (pic->use_argb) {
      stride = (uint64_t)bitstream->width * 4;
    } else {
      stride = (uint64_t)bitstream->width * (has_alpha ? 5 : 3) / 2;
      pic->colorspace = has_alpha ? WEBP_YUV420A : WEBP_YUV420;
    }

    if (!ImgIoUtilCheckSizeArgumentsOverflow(stride, bitstream->height)) {
      status = VP8_STATUS_OUT_OF_MEMORY;
      break;
    }

    ok = WebPPictureAlloc(pic);
    if (!ok) {
      status = VP8_STATUS_OUT_OF_MEMORY;
      break;
    }
    if (pic->use_argb) {



      output_buffer->colorspace = MODE_BGRA;

      output_buffer->u.RGBA.rgba = (uint8_t*)pic->argb;
      output_buffer->u.RGBA.stride = pic->argb_stride * sizeof(uint32_t);
      output_buffer->u.RGBA.size = output_buffer->u.RGBA.stride * pic->height;
    } else {
      output_buffer->colorspace = has_alpha ? MODE_YUVA : MODE_YUV;
      output_buffer->u.YUVA.y = pic->y;
      output_buffer->u.YUVA.u = pic->u;
      output_buffer->u.YUVA.v = pic->v;
      output_buffer->u.YUVA.a = has_alpha ? pic->a : ((void*)0);
      output_buffer->u.YUVA.y_stride = pic->y_stride;
      output_buffer->u.YUVA.u_stride = pic->uv_stride;
      output_buffer->u.YUVA.v_stride = pic->uv_stride;
      output_buffer->u.YUVA.a_stride = has_alpha ? pic->a_stride : 0;
      output_buffer->u.YUVA.y_size = pic->height * pic->y_stride;
      output_buffer->u.YUVA.u_size = (pic->height + 1) / 2 * pic->uv_stride;
      output_buffer->u.YUVA.v_size = (pic->height + 1) / 2 * pic->uv_stride;
      output_buffer->u.YUVA.a_size = pic->height * pic->a_stride;
    }
    output_buffer->is_external_memory = 1;

    status = DecodeWebP(data, data_size, &config);
    ok = (status == VP8_STATUS_OK);
    if (ok && !keep_alpha && pic->use_argb) {

      int x, y;
      uint32_t* argb = pic->argb;
      for (y = 0; y < pic->height; ++y) {
        for (x = 0; x < pic->width; ++x) argb[x] |= 0xff000000u;
        argb += pic->argb_stride;
      }
    }
  } while (0);

  if (status != VP8_STATUS_OK) {
    PrintWebPError("input data", status);
    ok = 0;
  }

  WebPFreeDecBuffer(output_buffer);

  if (ok && metadata != ((void*)0)) {
    ok = ExtractMetadata(data, data_size, metadata);
    if (!ok) {
      PrintWebPError("metadata", VP8_STATUS_BITSTREAM_ERROR);
    }
  }
  if (!ok) WebPPictureFree(pic);
  return ok;
}
