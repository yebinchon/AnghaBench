; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c__cmsReadCHAD.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsio1.c__cmsReadCHAD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigChromaticAdaptationTag = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cmsSigDisplayClass = common dso_local global i64 0, align 8
@cmsSigMediaWhitePointTag = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @_cmsReadCHAD(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  store i32 %0, i32* %5, align 4
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load i32*, i32** %6, align 8
  %11 = icmp ne i32* %10, null
  %12 = zext i1 %11 to i32
  %13 = call i32 @_cmsAssert(i32 %12)
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i32, i32* @cmsSigChromaticAdaptationTag, align 4
  %17 = call i64 @cmsReadTag(i32 %14, i32 %15, i32 %16)
  %18 = inttoptr i64 %17 to i32*
  store i32* %18, i32** %8, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %3
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %22, align 4
  %24 = load i32*, i32** %6, align 8
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @TRUE, align 4
  store i32 %25, i32* %4, align 4
  br label %63

26:                                               ; preds = %3
  %27 = load i32, i32* %5, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @_cmsMAT3identity(i32 %27, i32* %28)
  %30 = load i32, i32* %5, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cmsGetEncodedICCversion(i32 %30, i32 %31)
  %33 = icmp slt i32 %32, 67108864
  br i1 %33, label %34, label %61

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = load i32, i32* %7, align 4
  %37 = call i64 @cmsGetDeviceClass(i32 %35, i32 %36)
  %38 = load i64, i64* @cmsSigDisplayClass, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %60

40:                                               ; preds = %34
  %41 = load i32, i32* %5, align 4
  %42 = load i32, i32* %7, align 4
  %43 = load i32, i32* @cmsSigMediaWhitePointTag, align 4
  %44 = call i64 @cmsReadTag(i32 %41, i32 %42, i32 %43)
  %45 = inttoptr i64 %44 to i32*
  store i32* %45, i32** %9, align 8
  %46 = load i32*, i32** %9, align 8
  %47 = icmp eq i32* %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %40
  %49 = load i32, i32* %5, align 4
  %50 = load i32*, i32** %6, align 8
  %51 = call i32 @_cmsMAT3identity(i32 %49, i32* %50)
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %63

53:                                               ; preds = %40
  %54 = load i32, i32* %5, align 4
  %55 = load i32*, i32** %6, align 8
  %56 = load i32*, i32** %9, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @cmsD50_XYZ(i32 %57)
  %59 = call i32 @_cmsAdaptationMatrix(i32 %54, i32* %55, i32* null, i32* %56, i32 %58)
  store i32 %59, i32* %4, align 4
  br label %63

60:                                               ; preds = %34
  br label %61

61:                                               ; preds = %60, %26
  %62 = load i32, i32* @TRUE, align 4
  store i32 %62, i32* %4, align 4
  br label %63

63:                                               ; preds = %61, %53, %48, %21
  %64 = load i32, i32* %4, align 4
  ret i32 %64
}

declare dso_local i32 @_cmsAssert(i32) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @_cmsMAT3identity(i32, i32*) #1

declare dso_local i32 @cmsGetEncodedICCversion(i32, i32) #1

declare dso_local i64 @cmsGetDeviceClass(i32, i32) #1

declare dso_local i32 @_cmsAdaptationMatrix(i32, i32*, i32*, i32*, i32) #1

declare dso_local i32 @cmsD50_XYZ(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
