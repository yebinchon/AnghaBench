; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_Help.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/extras/extr_get_disto.c_Help.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [444 x i8] c"Usage: get_disto [-ssim][-psnr][-alpha] compressed.webp orig.webp\0A  -ssim ..... print SSIM distortion\0A  -psnr ..... print PSNR distortion (default)\0A  -alpha .... preserve alpha plane\0A  -h ........ this message\0A  -o <file> . save the diff map as a WebP lossless file\0A  -scale .... scale the difference map to fit [0..255] range\0A  -gray ..... use grayscale for difference map (-scale)\0A Also handles PNG, JPG and TIFF files, in addition to WebP.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @Help to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @Help() #0 {
  %1 = load i32, i32* @stderr, align 4
  %2 = call i32 @fprintf(i32 %1, i8* getelementptr inbounds ([444 x i8], [444 x i8]* @.str, i64 0, i64 0))
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
