; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_img2webp.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_img2webp.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [9 x i8] c"Usage:\0A\0A\00", align 1
@.str.1 = private unnamed_addr constant [73 x i8] c"  img2webp [file-level options] [image files...] [per-frame options...]\0A\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.3 = private unnamed_addr constant [61 x i8] c"File-level options (only used at the start of compression):\0A\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c" -min_size ............ minimize size\0A\00", align 1
@.str.5 = private unnamed_addr constant [66 x i8] c" -loop <int> .......... loop count (default: 0, = infinite loop)\0A\00", align 1
@.str.6 = private unnamed_addr constant [111 x i8] c" -kmax <int> .......... maximum number of frame between key-frames\0A                        (0=only keyframes)\0A\00", align 1
@.str.7 = private unnamed_addr constant [126 x i8] c" -kmin <int> .......... minimum number of frame between key-frames\0A                        (0=disable key-frames altogether)\0A\00", align 1
@.str.8 = private unnamed_addr constant [65 x i8] c" -mixed ............... use mixed lossy/lossless automatic mode\0A\00", align 1
@.str.9 = private unnamed_addr constant [38 x i8] c" -v ................... verbose mode\0A\00", align 1
@.str.10 = private unnamed_addr constant [35 x i8] c" -h ................... this help\0A\00", align 1
@.str.11 = private unnamed_addr constant [55 x i8] c" -version ............. print version number and exit\0A\00", align 1
@.str.12 = private unnamed_addr constant [60 x i8] c"Per-frame options (only used for subsequent images input):\0A\00", align 1
@.str.13 = private unnamed_addr constant [61 x i8] c" -d <int> ............. frame duration in ms (default: 100)\0A\00", align 1
@.str.14 = private unnamed_addr constant [53 x i8] c" -lossless  ........... use lossless mode (default)\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c" -lossy ... ........... use lossy mode\0A\00", align 1
@.str.16 = private unnamed_addr constant [33 x i8] c" -q <float> ........... quality\0A\00", align 1
@.str.17 = private unnamed_addr constant [39 x i8] c" -m <int> ............. method to use\0A\00", align 1
@.str.18 = private unnamed_addr constant [95 x i8] c"example: img2webp -loop 2 in0.png -lossy in1.jpg\0A                  -d 80 in2.tiff -o out.webp\0A\00", align 1
@.str.19 = private unnamed_addr constant [79 x i8] c"\0ANote: if a single file name is passed as the argument, the arguments will be\0A\00", align 1
@.str.20 = private unnamed_addr constant [80 x i8] c"tokenized from this file. The file name must not start with the character '-'.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([66 x i8], [66 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([111 x i8], [111 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([126 x i8], [126 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.8, i64 0, i64 0))
  %10 = call i32 @printf(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.9, i64 0, i64 0))
  %11 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.10, i64 0, i64 0))
  %12 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.11, i64 0, i64 0))
  %13 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %14 = call i32 @printf(i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.12, i64 0, i64 0))
  %15 = call i32 @printf(i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.13, i64 0, i64 0))
  %16 = call i32 @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str.14, i64 0, i64 0))
  %17 = call i32 @printf(i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.15, i64 0, i64 0))
  %18 = call i32 @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.16, i64 0, i64 0))
  %19 = call i32 @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.17, i64 0, i64 0))
  %20 = call i32 @printf(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  %21 = call i32 @printf(i8* getelementptr inbounds ([95 x i8], [95 x i8]* @.str.18, i64 0, i64 0))
  %22 = call i32 @printf(i8* getelementptr inbounds ([79 x i8], [79 x i8]* @.str.19, i64 0, i64 0))
  %23 = call i32 @printf(i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str.20, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
