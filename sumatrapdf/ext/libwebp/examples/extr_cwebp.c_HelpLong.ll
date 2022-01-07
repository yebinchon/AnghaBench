; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_cwebp.c_HelpLong.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_cwebp.c_HelpLong.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [8 x i8] c"Usage:\0A\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c" cwebp [-preset <...>] [options] in_file [-o out_file]\0A\0A\00", align 1
@.str.2 = private unnamed_addr constant [103 x i8] c"If input size (-s) for an image is not specified, it is\0Aassumed to be a PNG, JPEG, TIFF or WebP file.\0A\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"  -h / -help ............. short help\0A\00", align 1
@.str.5 = private unnamed_addr constant [38 x i8] c"  -H / -longhelp ......... long help\0A\00", align 1
@.str.6 = private unnamed_addr constant [74 x i8] c"  -q <float> ............. quality factor (0:small..100:big), default=75\0A\00", align 1
@.str.7 = private unnamed_addr constant [110 x i8] c"  -alpha_q <int> ......... transparency-compression quality (0..100),\0A                           default=100\0A\00", align 1
@.str.8 = private unnamed_addr constant [52 x i8] c"  -preset <string> ....... preset setting, one of:\0A\00", align 1
@.str.9 = private unnamed_addr constant [54 x i8] c"                            default, photo, picture,\0A\00", align 1
@.str.10 = private unnamed_addr constant [49 x i8] c"                            drawing, icon, text\0A\00", align 1
@.str.11 = private unnamed_addr constant [65 x i8] c"     -preset must come first, as it overwrites other parameters\0A\00", align 1
@.str.12 = private unnamed_addr constant [126 x i8] c"  -z <int> ............... activates lossless preset with given\0A                           level in [0:fast, ..., 9:slowest]\0A\00", align 1
@.str.13 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.14 = private unnamed_addr constant [78 x i8] c"  -m <int> ............... compression method (0=fast, 6=slowest), default=4\0A\00", align 1
@.str.15 = private unnamed_addr constant [72 x i8] c"  -segments <int> ........ number of segments to use (1..4), default=4\0A\00", align 1
@.str.16 = private unnamed_addr constant [51 x i8] c"  -size <int> ............ target size (in bytes)\0A\00", align 1
@.str.17 = private unnamed_addr constant [63 x i8] c"  -psnr <float> .......... target PSNR (in dB. typically: 42)\0A\00", align 1
@.str.18 = private unnamed_addr constant [64 x i8] c"  -s <int> <int> ......... input size (width x height) for YUV\0A\00", align 1
@.str.19 = private unnamed_addr constant [79 x i8] c"  -sns <int> ............. spatial noise shaping (0:off, 100:max), default=50\0A\00", align 1
@.str.20 = private unnamed_addr constant [69 x i8] c"  -f <int> ............... filter strength (0=off..100), default=60\0A\00", align 1
@.str.21 = private unnamed_addr constant [82 x i8] c"  -sharpness <int> ....... filter sharpness (0:most .. 7:least sharp), default=0\0A\00", align 1
@.str.22 = private unnamed_addr constant [74 x i8] c"  -strong ................ use strong filter instead of simple (default)\0A\00", align 1
@.str.23 = private unnamed_addr constant [64 x i8] c"  -nostrong .............. use simple filter instead of strong\0A\00", align 1
@.str.24 = private unnamed_addr constant [73 x i8] c"  -sharp_yuv ............. use sharper (and slower) RGB->YUV conversion\0A\00", align 1
@.str.25 = private unnamed_addr constant [67 x i8] c"  -partition_limit <int> . limit quality to fit the 512k limit on\0A\00", align 1
@.str.26 = private unnamed_addr constant [80 x i8] c"                           the first partition (0=no degradation ... 100=full)\0A\00", align 1
@.str.27 = private unnamed_addr constant [57 x i8] c"  -pass <int> ............ analysis pass number (1..10)\0A\00", align 1
@.str.28 = private unnamed_addr constant [66 x i8] c"  -crop <x> <y> <w> <h> .. crop picture with the given rectangle\0A\00", align 1
@.str.29 = private unnamed_addr constant [64 x i8] c"  -resize <w> <h> ........ resize picture (after any cropping)\0A\00", align 1
@.str.30 = private unnamed_addr constant [61 x i8] c"  -mt .................... use multi-threading if available\0A\00", align 1
@.str.31 = private unnamed_addr constant [66 x i8] c"  -low_memory ............ reduce memory usage (slower encoding)\0A\00", align 1
@.str.32 = private unnamed_addr constant [52 x i8] c"  -map <int> ............. print map of extra info\0A\00", align 1
@.str.33 = private unnamed_addr constant [60 x i8] c"  -print_psnr ............ prints averaged PSNR distortion\0A\00", align 1
@.str.34 = private unnamed_addr constant [60 x i8] c"  -print_ssim ............ prints averaged SSIM distortion\0A\00", align 1
@.str.35 = private unnamed_addr constant [63 x i8] c"  -print_lsim ............ prints local-similarity distortion\0A\00", align 1
@.str.36 = private unnamed_addr constant [66 x i8] c"  -d <file.pgm> .......... dump the compressed output (PGM file)\0A\00", align 1
@.str.37 = private unnamed_addr constant [78 x i8] c"  -alpha_method <int> .... transparency-compression method (0..1), default=1\0A\00", align 1
@.str.38 = private unnamed_addr constant [66 x i8] c"  -alpha_filter <string> . predictive filtering for alpha plane,\0A\00", align 1
@.str.39 = private unnamed_addr constant [65 x i8] c"                           one of: none, fast (default) or best\0A\00", align 1
@.str.40 = private unnamed_addr constant [81 x i8] c"  -exact ................. preserve RGB values in transparent area, default=off\0A\00", align 1
@.str.41 = private unnamed_addr constant [247 x i8] c"  -blend_alpha <hex> ..... blend colors against background color\0A                           expressed as RGB values written in\0A                           hexadecimal, e.g. 0xc0e0d0 for red=0xc0\0A                           green=0xe0 and blue=0xd0\0A\00", align 1
@.str.42 = private unnamed_addr constant [65 x i8] c"  -noalpha ............... discard any transparency information\0A\00", align 1
@.str.43 = private unnamed_addr constant [65 x i8] c"  -lossless .............. encode image losslessly, default=off\0A\00", align 1
@.str.44 = private unnamed_addr constant [119 x i8] c"  -near_lossless <int> ... use near-lossless image\0A                           preprocessing (0..100=off), default=100\0A\00", align 1
@.str.45 = private unnamed_addr constant [64 x i8] c"  -hint <string> ......... specify image characteristics hint,\0A\00", align 1
@.str.46 = private unnamed_addr constant [60 x i8] c"                           one of: photo, picture or graph\0A\00", align 1
@.str.47 = private unnamed_addr constant [64 x i8] c"  -metadata <string> ..... comma separated list of metadata to\0A\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"                           \00", align 1
@.str.49 = private unnamed_addr constant [47 x i8] c"copy from the input to the output if present.\0A\00", align 1
@.str.50 = private unnamed_addr constant [78 x i8] c"                           Valid values: all, none (default), exif, icc, xmp\0A\00", align 1
@.str.51 = private unnamed_addr constant [53 x i8] c"  -short ................. condense printed message\0A\00", align 1
@.str.52 = private unnamed_addr constant [49 x i8] c"  -quiet ................. don't print anything\0A\00", align 1
@.str.53 = private unnamed_addr constant [58 x i8] c"  -version ............... print version number and exit\0A\00", align 1
@.str.54 = private unnamed_addr constant [63 x i8] c"  -noasm ................. disable all assembly optimizations\0A\00", align 1
@.str.55 = private unnamed_addr constant [72 x i8] c"  -v ..................... verbose, e.g. print encoding/decoding times\0A\00", align 1
@.str.56 = private unnamed_addr constant [53 x i8] c"  -progress .............. report encoding progress\0A\00", align 1
@.str.57 = private unnamed_addr constant [23 x i8] c"Experimental Options:\0A\00", align 1
@.str.58 = private unnamed_addr constant [61 x i8] c"  -jpeg_like ............. roughly match expected JPEG size\0A\00", align 1
@.str.59 = private unnamed_addr constant [56 x i8] c"  -af .................... auto-adjust filter strength\0A\00", align 1
@.str.60 = private unnamed_addr constant [50 x i8] c"  -pre <int> ............. pre-processing filter\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @HelpLong to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HelpLong() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([103 x i8], [103 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.11, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.12, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.14, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.15, i64 0, i64 0))
  %17 = call i32 @printf(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.16, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.17, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %20 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.18, i64 0, i64 0))
  %21 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.19, i64 0, i64 0))
  %22 = call i32 @printf(i8* getelementptr inbounds ([69 x i8], [69 x i8]* @.str.20, i64 0, i64 0))
  %23 = call i32 @printf(i8* getelementptr inbounds ([82 x i8], [82 x i8]* @.str.21, i64 0, i64 0))
  %24 = call i32 @printf(i8* getelementptr inbounds ([74 x i8], [74 x i8]* @.str.22, i64 0, i64 0))
  %25 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.23, i64 0, i64 0))
  %26 = call i32 @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.24, i64 0, i64 0))
  %27 = call i32 @printf(i8* getelementptr inbounds ([67 x i8], [67 x i8]* @.str.25, i64 0, i64 0))
  %28 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.26, i64 0, i64 0))
  %29 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.27, i64 0, i64 0))
  %30 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.28, i64 0, i64 0))
  %31 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.29, i64 0, i64 0))
  %32 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.30, i64 0, i64 0))
  %33 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.31, i64 0, i64 0))
  %34 = call i32 @printf(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.32, i64 0, i64 0))
  %35 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.33, i64 0, i64 0))
  %36 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.34, i64 0, i64 0))
  %37 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.35, i64 0, i64 0))
  %38 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.36, i64 0, i64 0))
  %39 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.37, i64 0, i64 0))
  %40 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.38, i64 0, i64 0))
  %41 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.39, i64 0, i64 0))
  %42 = call i32 @printf(i8* getelementptr inbounds ([81 x i8], [81 x i8]* @.str.40, i64 0, i64 0))
  %43 = call i32 @printf(i8* getelementptr inbounds ([247 x i8], [247 x i8]* @.str.41, i64 0, i64 0))
  %44 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.42, i64 0, i64 0))
  %45 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.43, i64 0, i64 0))
  %46 = call i32 @printf(i8* getelementptr inbounds ([119 x i8], [119 x i8]* @.str.44, i64 0, i64 0))
  %47 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.45, i64 0, i64 0))
  %48 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.46, i64 0, i64 0))
  %49 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %50 = call i32 @printf(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.47, i64 0, i64 0))
  %51 = call i32 @printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.48, i64 0, i64 0))
  %52 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.49, i64 0, i64 0))
  %53 = call i32 @printf(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.50, i64 0, i64 0))
  %54 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %55 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.51, i64 0, i64 0))
  %56 = call i32 @printf(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.52, i64 0, i64 0))
  %57 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.53, i64 0, i64 0))
  %58 = call i32 @printf(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.54, i64 0, i64 0))
  %59 = call i32 @printf(i8* getelementptr inbounds ([72 x i8], [72 x i8]* @.str.55, i64 0, i64 0))
  %60 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.56, i64 0, i64 0))
  %61 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  %62 = call i32 @printf(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.57, i64 0, i64 0))
  %63 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.58, i64 0, i64 0))
  %64 = call i32 @printf(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.59, i64 0, i64 0))
  %65 = call i32 @printf(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.60, i64 0, i64 0))
  %66 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.13, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
