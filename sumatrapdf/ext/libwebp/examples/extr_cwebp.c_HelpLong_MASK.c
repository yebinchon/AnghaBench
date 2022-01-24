#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 

__attribute__((used)) static void FUNC1(void) {
  FUNC0("Usage:\n");
  FUNC0(" cwebp [-preset <...>] [options] in_file [-o out_file]\n\n");
  FUNC0("If input size (-s) for an image is not specified, it is\n"
         "assumed to be a PNG, JPEG, TIFF or WebP file.\n");
#ifdef HAVE_WINCODEC_H
  printf("Windows builds can take as input any of the files handled by WIC.\n");
#endif
  FUNC0("\nOptions:\n");
  FUNC0("  -h / -help ............. short help\n");
  FUNC0("  -H / -longhelp ......... long help\n");
  FUNC0("  -q <float> ............. quality factor (0:small..100:big), "
         "default=75\n");
  FUNC0("  -alpha_q <int> ......... transparency-compression quality (0..100),"
         "\n                           default=100\n");
  FUNC0("  -preset <string> ....... preset setting, one of:\n");
  FUNC0("                            default, photo, picture,\n");
  FUNC0("                            drawing, icon, text\n");
  FUNC0("     -preset must come first, as it overwrites other parameters\n");
  FUNC0("  -z <int> ............... activates lossless preset with given\n"
         "                           level in [0:fast, ..., 9:slowest]\n");
  FUNC0("\n");
  FUNC0("  -m <int> ............... compression method (0=fast, 6=slowest), "
         "default=4\n");
  FUNC0("  -segments <int> ........ number of segments to use (1..4), "
         "default=4\n");
  FUNC0("  -size <int> ............ target size (in bytes)\n");
  FUNC0("  -psnr <float> .......... target PSNR (in dB. typically: 42)\n");
  FUNC0("\n");
  FUNC0("  -s <int> <int> ......... input size (width x height) for YUV\n");
  FUNC0("  -sns <int> ............. spatial noise shaping (0:off, 100:max), "
         "default=50\n");
  FUNC0("  -f <int> ............... filter strength (0=off..100), "
         "default=60\n");
  FUNC0("  -sharpness <int> ....... "
         "filter sharpness (0:most .. 7:least sharp), default=0\n");
  FUNC0("  -strong ................ use strong filter instead "
                                     "of simple (default)\n");
  FUNC0("  -nostrong .............. use simple filter instead of strong\n");
  FUNC0("  -sharp_yuv ............. use sharper (and slower) RGB->YUV "
                                     "conversion\n");
  FUNC0("  -partition_limit <int> . limit quality to fit the 512k limit on\n");
  FUNC0("                           "
         "the first partition (0=no degradation ... 100=full)\n");
  FUNC0("  -pass <int> ............ analysis pass number (1..10)\n");
  FUNC0("  -crop <x> <y> <w> <h> .. crop picture with the given rectangle\n");
  FUNC0("  -resize <w> <h> ........ resize picture (after any cropping)\n");
  FUNC0("  -mt .................... use multi-threading if available\n");
  FUNC0("  -low_memory ............ reduce memory usage (slower encoding)\n");
  FUNC0("  -map <int> ............. print map of extra info\n");
  FUNC0("  -print_psnr ............ prints averaged PSNR distortion\n");
  FUNC0("  -print_ssim ............ prints averaged SSIM distortion\n");
  FUNC0("  -print_lsim ............ prints local-similarity distortion\n");
  FUNC0("  -d <file.pgm> .......... dump the compressed output (PGM file)\n");
  FUNC0("  -alpha_method <int> .... transparency-compression method (0..1), "
         "default=1\n");
  FUNC0("  -alpha_filter <string> . predictive filtering for alpha plane,\n");
  FUNC0("                           one of: none, fast (default) or best\n");
  FUNC0("  -exact ................. preserve RGB values in transparent area, "
         "default=off\n");
  FUNC0("  -blend_alpha <hex> ..... blend colors against background color\n"
         "                           expressed as RGB values written in\n"
         "                           hexadecimal, e.g. 0xc0e0d0 for red=0xc0\n"
         "                           green=0xe0 and blue=0xd0\n");
  FUNC0("  -noalpha ............... discard any transparency information\n");
  FUNC0("  -lossless .............. encode image losslessly, default=off\n");
  FUNC0("  -near_lossless <int> ... use near-lossless image\n"
         "                           preprocessing (0..100=off), "
         "default=100\n");
  FUNC0("  -hint <string> ......... specify image characteristics hint,\n");
  FUNC0("                           one of: photo, picture or graph\n");

  FUNC0("\n");
  FUNC0("  -metadata <string> ..... comma separated list of metadata to\n");
  FUNC0("                           ");
  FUNC0("copy from the input to the output if present.\n");
  FUNC0("                           "
         "Valid values: all, none (default), exif, icc, xmp\n");

  FUNC0("\n");
  FUNC0("  -short ................. condense printed message\n");
  FUNC0("  -quiet ................. don't print anything\n");
  FUNC0("  -version ............... print version number and exit\n");
#ifndef WEBP_DLL
  FUNC0("  -noasm ................. disable all assembly optimizations\n");
#endif
  FUNC0("  -v ..................... verbose, e.g. print encoding/decoding "
         "times\n");
  FUNC0("  -progress .............. report encoding progress\n");
  FUNC0("\n");
  FUNC0("Experimental Options:\n");
  FUNC0("  -jpeg_like ............. roughly match expected JPEG size\n");
  FUNC0("  -af .................... auto-adjust filter strength\n");
  FUNC0("  -pre <int> ............. pre-processing filter\n");
  FUNC0("\n");
}