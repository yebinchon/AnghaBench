; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_diff.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_anim_diff.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [46 x i8] c"Usage: anim_diff <image1> <image2> [options]\0A\00", align 1
@.str.1 = private unnamed_addr constant [11 x i8] c"\0AOptions:\0A\00", align 1
@.str.2 = private unnamed_addr constant [59 x i8] c"  -dump_frames <folder> dump decoded frames in PAM format\0A\00", align 1
@.str.3 = private unnamed_addr constant [48 x i8] c"  -min_psnr <float> ... minimum per-frame PSNR\0A\00", align 1
@.str.4 = private unnamed_addr constant [58 x i8] c"  -raw_comparison ..... if this flag is not used, RGB is\0A\00", align 1
@.str.5 = private unnamed_addr constant [57 x i8] c"                        premultiplied before comparison\0A\00", align 1
@.str.6 = private unnamed_addr constant [162 x i8] c"  -max_diff <int> ..... maximum allowed difference per channel\0A                        between corresponding pixels in subsequent\0A                        frames\0A\00", align 1
@.str.7 = private unnamed_addr constant [35 x i8] c"  -h .................. this help\0A\00", align 1
@.str.8 = private unnamed_addr constant [55 x i8] c"  -version ............ print version number and exit\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help() #0 {
  %1 = call i32 @printf(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0))
  %2 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0))
  %3 = call i32 @printf(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.2, i64 0, i64 0))
  %4 = call i32 @printf(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.3, i64 0, i64 0))
  %5 = call i32 @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.4, i64 0, i64 0))
  %6 = call i32 @printf(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.5, i64 0, i64 0))
  %7 = call i32 @printf(i8* getelementptr inbounds ([162 x i8], [162 x i8]* @.str.6, i64 0, i64 0))
  %8 = call i32 @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.7, i64 0, i64 0))
  %9 = call i32 @printf(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.8, i64 0, i64 0))
  ret void
}

declare dso_local i32 @printf(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
