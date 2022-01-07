; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_ComputeOutputFormatDescriptor.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/jpgicc/extr_jpgicc.c_ComputeOutputFormatDescriptor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@Compressor = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@.str = private unnamed_addr constant [31 x i8] c"Unsupported output color space\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @ComputeOutputFormatDescriptor to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ComputeOutputFormatDescriptor(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @T_PLANAR(i32 %8)
  store i32 %9, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  switch i32 %10, label %18 [
    i32 132, label %11
    i32 130, label %12
    i32 134, label %12
    i32 131, label %12
    i32 128, label %12
    i32 129, label %12
    i32 133, label %13
  ]

11:                                               ; preds = %2
  store i32 1, i32* %6, align 4
  br label %20

12:                                               ; preds = %2, %2, %2, %2, %2
  store i32 3, i32* %6, align 4
  br label %20

13:                                               ; preds = %2
  %14 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @Compressor, i32 0, i32 0), align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 1, i32* %7, align 4
  br label %17

17:                                               ; preds = %16, %13
  store i32 4, i32* %6, align 4
  br label %20

18:                                               ; preds = %2
  %19 = call i32 @FatalError(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %20

20:                                               ; preds = %18, %17, %12, %11
  %21 = load i32, i32* %4, align 4
  %22 = call i32 @COLORSPACE_SH(i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @PLANAR_SH(i32 %23)
  %25 = or i32 %22, %24
  %26 = load i32, i32* %6, align 4
  %27 = call i32 @CHANNELS_SH(i32 %26)
  %28 = or i32 %25, %27
  %29 = call i32 @BYTES_SH(i32 1)
  %30 = or i32 %28, %29
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @FLAVOR_SH(i32 %31)
  %33 = or i32 %30, %32
  ret i32 %33
}

declare dso_local i32 @T_PLANAR(i32) #1

declare dso_local i32 @FatalError(i8*) #1

declare dso_local i32 @COLORSPACE_SH(i32) #1

declare dso_local i32 @PLANAR_SH(i32) #1

declare dso_local i32 @CHANNELS_SH(i32) #1

declare dso_local i32 @BYTES_SH(i32) #1

declare dso_local i32 @FLAVOR_SH(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
