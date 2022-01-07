; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_MakeFormatDescriptor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/matlab/extr_icctrans.c_MakeFormatDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @MakeFormatDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @MakeFormatDescriptor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %7 = load i32, i32* %4, align 4
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %12, label %9

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, 4
  br label %12

12:                                               ; preds = %9, %2
  %13 = phi i1 [ true, %2 ], [ %11, %9 ]
  %14 = zext i1 %13 to i64
  %15 = select i1 %13, i32 1, i32 0
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %3, align 4
  %17 = call i32 @cmsChannelsOf(i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @FLOAT_SH(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = call i32 @_cmsLCMScolorSpace(i32 %20)
  %22 = call i32 @COLORSPACE_SH(i32 %21)
  %23 = or i32 %19, %22
  %24 = load i32, i32* %4, align 4
  %25 = call i32 @BYTES_SH(i32 %24)
  %26 = or i32 %23, %25
  %27 = load i32, i32* %6, align 4
  %28 = call i32 @CHANNELS_SH(i32 %27)
  %29 = or i32 %26, %28
  %30 = call i32 @PLANAR_SH(i32 1)
  %31 = or i32 %29, %30
  ret i32 %31
}

declare dso_local i32 @cmsChannelsOf(i32) #1

declare dso_local i32 @FLOAT_SH(i32) #1

declare dso_local i32 @COLORSPACE_SH(i32) #1

declare dso_local i32 @_cmsLCMScolorSpace(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i32 @PLANAR_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
