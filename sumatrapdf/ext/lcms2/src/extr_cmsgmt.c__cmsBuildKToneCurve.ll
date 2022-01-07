; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c__cmsBuildKToneCurve.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgmt.c__cmsBuildKToneCurve.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsSigCmykData = common dso_local global i64 0, align 8
@cmsSigOutputClass = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @_cmsBuildKToneCurve(i32 %0, i32 %1, i32 %2, i32* %3, i32* %4, i32* %5, i32* %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  store i32 %0, i32* %10, align 4
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32* %3, i32** %13, align 8
  store i32* %4, i32** %14, align 8
  store i32* %5, i32** %15, align 8
  store i32* %6, i32** %16, align 8
  store i32 %7, i32* %17, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32*, i32** %14, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @cmsGetColorSpace(i32 %21, i32 %24)
  %26 = load i64, i64* @cmsSigCmykData, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %39, label %28

28:                                               ; preds = %8
  %29 = load i32, i32* %10, align 4
  %30 = load i32*, i32** %14, align 8
  %31 = load i32, i32* %12, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %30, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = call i64 @cmsGetColorSpace(i32 %29, i32 %35)
  %37 = load i64, i64* @cmsSigCmykData, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28, %8
  store i32* null, i32** %9, align 8
  br label %123

40:                                               ; preds = %28
  %41 = load i32, i32* %10, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sub nsw i32 %43, 1
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %42, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i64 @cmsGetDeviceClass(i32 %41, i32 %47)
  %49 = load i64, i64* @cmsSigOutputClass, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %40
  store i32* null, i32** %9, align 8
  br label %123

52:                                               ; preds = %40
  %53 = load i32, i32* %10, align 4
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = sub nsw i32 %55, 1
  %57 = load i32*, i32** %13, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32*, i32** %15, align 8
  %60 = load i32*, i32** %16, align 8
  %61 = load i32, i32* %17, align 4
  %62 = call i32* @ComputeKToLstar(i32 %53, i32 %54, i32 %56, i32* %57, i32* %58, i32* %59, i32* %60, i32 %61)
  store i32* %62, i32** %18, align 8
  %63 = load i32*, i32** %18, align 8
  %64 = icmp eq i32* %63, null
  br i1 %64, label %65, label %66

65:                                               ; preds = %52
  store i32* null, i32** %9, align 8
  br label %123

66:                                               ; preds = %52
  %67 = load i32, i32* %10, align 4
  %68 = load i32, i32* %11, align 4
  %69 = load i32*, i32** %13, align 8
  %70 = load i32, i32* %12, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds i32, i32* %69, i64 %72
  %74 = load i32*, i32** %14, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sub nsw i32 %75, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i32*, i32** %15, align 8
  %80 = load i32, i32* %12, align 4
  %81 = sub nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %79, i64 %82
  %84 = load i32*, i32** %16, align 8
  %85 = load i32, i32* %12, align 4
  %86 = sub nsw i32 %85, 1
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %84, i64 %87
  %89 = load i32, i32* %17, align 4
  %90 = call i32* @ComputeKToLstar(i32 %67, i32 %68, i32 1, i32* %73, i32* %78, i32* %83, i32* %88, i32 %89)
  store i32* %90, i32** %19, align 8
  %91 = load i32*, i32** %19, align 8
  %92 = icmp eq i32* %91, null
  br i1 %92, label %93, label %97

93:                                               ; preds = %66
  %94 = load i32, i32* %10, align 4
  %95 = load i32*, i32** %18, align 8
  %96 = call i32 @cmsFreeToneCurve(i32 %94, i32* %95)
  store i32* null, i32** %9, align 8
  br label %123

97:                                               ; preds = %66
  %98 = load i32, i32* %10, align 4
  %99 = load i32*, i32** %18, align 8
  %100 = load i32*, i32** %19, align 8
  %101 = load i32, i32* %11, align 4
  %102 = call i32* @cmsJoinToneCurve(i32 %98, i32* %99, i32* %100, i32 %101)
  store i32* %102, i32** %20, align 8
  %103 = load i32, i32* %10, align 4
  %104 = load i32*, i32** %18, align 8
  %105 = call i32 @cmsFreeToneCurve(i32 %103, i32* %104)
  %106 = load i32, i32* %10, align 4
  %107 = load i32*, i32** %19, align 8
  %108 = call i32 @cmsFreeToneCurve(i32 %106, i32* %107)
  %109 = load i32*, i32** %20, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %97
  store i32* null, i32** %9, align 8
  br label %123

112:                                              ; preds = %97
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %20, align 8
  %115 = call i32 @cmsIsToneCurveMonotonic(i32 %113, i32* %114)
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %121, label %117

117:                                              ; preds = %112
  %118 = load i32, i32* %10, align 4
  %119 = load i32*, i32** %20, align 8
  %120 = call i32 @cmsFreeToneCurve(i32 %118, i32* %119)
  store i32* null, i32** %9, align 8
  br label %123

121:                                              ; preds = %112
  %122 = load i32*, i32** %20, align 8
  store i32* %122, i32** %9, align 8
  br label %123

123:                                              ; preds = %121, %117, %111, %93, %65, %51, %39
  %124 = load i32*, i32** %9, align 8
  ret i32* %124
}

declare dso_local i64 @cmsGetColorSpace(i32, i32) #1

declare dso_local i64 @cmsGetDeviceClass(i32, i32) #1

declare dso_local i32* @ComputeKToLstar(i32, i32, i32, i32*, i32*, i32*, i32*, i32) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #1

declare dso_local i32* @cmsJoinToneCurve(i32, i32*, i32*, i32) #1

declare dso_local i32 @cmsIsToneCurveMonotonic(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
