; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Create_CMYK_DeviceLink.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_Create_CMYK_DeviceLink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigCmykData = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* ()* @Create_CMYK_DeviceLink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @Create_CMYK_DeviceLink() #0 {
  %1 = alloca i32*, align 8
  %2 = alloca i32*, align 8
  %3 = alloca [4 x i32*], align 16
  %4 = alloca i32*, align 8
  %5 = call i32 (...) @DbgThread()
  %6 = call i32* @cmsBuildGamma(i32 %5, double 3.000000e+00)
  store i32* %6, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = icmp eq i32* %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  store i32* null, i32** %1, align 8
  br label %31

10:                                               ; preds = %0
  %11 = load i32*, i32** %4, align 8
  %12 = getelementptr inbounds [4 x i32*], [4 x i32*]* %3, i64 0, i64 0
  store i32* %11, i32** %12, align 16
  %13 = load i32*, i32** %4, align 8
  %14 = getelementptr inbounds [4 x i32*], [4 x i32*]* %3, i64 0, i64 1
  store i32* %13, i32** %14, align 8
  %15 = load i32*, i32** %4, align 8
  %16 = getelementptr inbounds [4 x i32*], [4 x i32*]* %3, i64 0, i64 2
  store i32* %15, i32** %16, align 16
  %17 = load i32*, i32** %4, align 8
  %18 = getelementptr inbounds [4 x i32*], [4 x i32*]* %3, i64 0, i64 3
  store i32* %17, i32** %18, align 8
  %19 = call i32 (...) @DbgThread()
  %20 = load i32, i32* @cmsSigCmykData, align 4
  %21 = getelementptr inbounds [4 x i32*], [4 x i32*]* %3, i64 0, i64 0
  %22 = call i32* @cmsCreateLinearizationDeviceLink(i32 %19, i32 %20, i32** %21)
  store i32* %22, i32** %2, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %10
  store i32* null, i32** %1, align 8
  br label %31

26:                                               ; preds = %10
  %27 = call i32 (...) @DbgThread()
  %28 = load i32*, i32** %4, align 8
  %29 = call i32 @cmsFreeToneCurve(i32 %27, i32* %28)
  %30 = load i32*, i32** %2, align 8
  store i32* %30, i32** %1, align 8
  br label %31

31:                                               ; preds = %26, %25, %9
  %32 = load i32*, i32** %1, align 8
  ret i32* %32
}

declare dso_local i32* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32* @cmsCreateLinearizationDeviceLink(i32, i32, i32**) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
