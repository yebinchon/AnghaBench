
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ WebPOutputFileFormat ;
typedef int WebPDecBuffer ;
typedef int W_CHAR ;
typedef int FILE ;


 scalar_t__ ALPHA_PLANE_ONLY ;
 scalar_t__ ARGB ;
 scalar_t__ Argb ;
 scalar_t__ BGR ;
 scalar_t__ BGRA ;
 scalar_t__ BMP ;
 int * ImgIoUtilSetBinaryMode (int *) ;
 scalar_t__ PAM ;
 scalar_t__ PGM ;
 scalar_t__ PNG ;
 scalar_t__ PPM ;
 scalar_t__ RAW_YUV ;
 scalar_t__ RGB ;
 scalar_t__ RGBA ;
 scalar_t__ RGBA_4444 ;
 scalar_t__ RGB_565 ;
 scalar_t__ TIFF ;
 int * WFOPEN (char const* const,char*) ;
 int WFPRINTF (int ,char*,int const*) ;
 int WSTRCMP (char const* const,char*) ;
 int WebPWrite16bAsPGM (int *,int const* const) ;
 int WebPWriteAlphaPlane (int *,int const* const) ;
 int WebPWriteBMP (int *,int const* const) ;
 int WebPWritePAM (int *,int const* const) ;
 int WebPWritePGM (int *,int const* const) ;
 int WebPWritePNG (char const* const,int const,...) ;
 int WebPWritePPM (int *,int const* const) ;
 int WebPWriteTIFF (int *,int const* const) ;
 int WebPWriteYUV (int *,int const* const) ;
 scalar_t__ YUV ;
 scalar_t__ YUVA ;
 scalar_t__ bgrA ;
 int fclose (int *) ;
 scalar_t__ rgbA ;
 scalar_t__ rgbA_4444 ;
 int stderr ;
 int * stdout ;

int WebPSaveImage(const WebPDecBuffer* const buffer,
                  WebPOutputFileFormat format,
                  const char* const out_file_name) {
  FILE* fout = ((void*)0);
  int needs_open_file = 1;
  const int use_stdout =
      (out_file_name != ((void*)0)) && !WSTRCMP(out_file_name, "-");
  int ok = 1;

  if (buffer == ((void*)0) || out_file_name == ((void*)0)) return 0;





  if (needs_open_file) {
    fout = use_stdout ? ImgIoUtilSetBinaryMode(stdout)
                      : WFOPEN(out_file_name, "wb");
    if (fout == ((void*)0)) {
      WFPRINTF(stderr, "Error opening output file %s\n",
               (const W_CHAR*)out_file_name);
      return 0;
    }
  }

  if (format == PNG ||
      format == RGBA || format == BGRA || format == ARGB ||
      format == rgbA || format == bgrA || format == Argb) {



    ok &= WebPWritePNG(fout, buffer);

  } else if (format == PAM) {
    ok &= WebPWritePAM(fout, buffer);
  } else if (format == PPM || format == RGB || format == BGR) {
    ok &= WebPWritePPM(fout, buffer);
  } else if (format == RGBA_4444 || format == RGB_565 || format == rgbA_4444) {
    ok &= WebPWrite16bAsPGM(fout, buffer);
  } else if (format == BMP) {
    ok &= WebPWriteBMP(fout, buffer);
  } else if (format == TIFF) {
    ok &= WebPWriteTIFF(fout, buffer);
  } else if (format == RAW_YUV) {
    ok &= WebPWriteYUV(fout, buffer);
  } else if (format == PGM || format == YUV || format == YUVA) {
    ok &= WebPWritePGM(fout, buffer);
  } else if (format == ALPHA_PLANE_ONLY) {
    ok &= WebPWriteAlphaPlane(fout, buffer);
  }
  if (fout != ((void*)0) && fout != stdout) {
    fclose(fout);
  }
  return ok;
}
