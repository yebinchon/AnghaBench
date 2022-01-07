; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_CloseTransforms.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/transicc/extr_transicc.c_CloseTransforms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@InputColorant = common dso_local global i64 0, align 8
@OutputColorant = common dso_local global i64 0, align 8
@hTrans = common dso_local global i64 0, align 8
@hTransLab = common dso_local global i64 0, align 8
@hTransXYZ = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @CloseTransforms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CloseTransforms(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i64, i64* @InputColorant, align 8
  %4 = icmp ne i64 %3, 0
  br i1 %4, label %5, label %9

5:                                                ; preds = %1
  %6 = load i32, i32* %2, align 4
  %7 = load i64, i64* @InputColorant, align 8
  %8 = call i32 @cmsFreeNamedColorList(i32 %6, i64 %7)
  br label %9

9:                                                ; preds = %5, %1
  %10 = load i64, i64* @OutputColorant, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %16

12:                                               ; preds = %9
  %13 = load i32, i32* %2, align 4
  %14 = load i64, i64* @OutputColorant, align 8
  %15 = call i32 @cmsFreeNamedColorList(i32 %13, i64 %14)
  br label %16

16:                                               ; preds = %12, %9
  %17 = load i64, i64* @hTrans, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i32, i32* %2, align 4
  %21 = load i64, i64* @hTrans, align 8
  %22 = call i32 @cmsDeleteTransform(i32 %20, i64 %21)
  br label %23

23:                                               ; preds = %19, %16
  %24 = load i64, i64* @hTransLab, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i32, i32* %2, align 4
  %28 = load i64, i64* @hTransLab, align 8
  %29 = call i32 @cmsDeleteTransform(i32 %27, i64 %28)
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i64, i64* @hTransXYZ, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %37

33:                                               ; preds = %30
  %34 = load i32, i32* %2, align 4
  %35 = load i64, i64* @hTransXYZ, align 8
  %36 = call i32 @cmsDeleteTransform(i32 %34, i64 %35)
  br label %37

37:                                               ; preds = %33, %30
  ret void
}

declare dso_local i32 @cmsFreeNamedColorList(i32, i64) #1

declare dso_local i32 @cmsDeleteTransform(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
