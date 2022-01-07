; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackXYZFloatFromFloat.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackXYZFloatFromFloat.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }

@MAX_ENCODEABLE_XYZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_3__*, i32*, i32*, i64)* @PackXYZFloatFromFloat to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PackXYZFloatFromFloat(i32 %0, %struct.TYPE_3__* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i32*, i32** %10, align 8
  store i32* %13, i32** %12, align 8
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @T_PLANAR(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %52

19:                                               ; preds = %5
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i64 @PixelSize(i32 %22)
  %24 = load i64, i64* %11, align 8
  %25 = udiv i64 %24, %23
  store i64 %25, i64* %11, align 8
  %26 = load i32*, i32** %9, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 0
  %28 = load i32, i32* %27, align 4
  %29 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %30 = mul nsw i32 %28, %29
  %31 = load i32*, i32** %12, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 0
  store i32 %30, i32* %32, align 4
  %33 = load i32*, i32** %9, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 1
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %37 = mul nsw i32 %35, %36
  %38 = load i32*, i32** %12, align 8
  %39 = load i64, i64* %11, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32 %37, i32* %40, align 4
  %41 = load i32*, i32** %9, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %45 = mul nsw i32 %43, %44
  %46 = load i32*, i32** %12, align 8
  %47 = load i64, i64* %11, align 8
  %48 = mul i64 %47, 2
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32*, i32** %10, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 4
  store i32* %51, i32** %6, align 8
  br label %83

52:                                               ; preds = %5
  %53 = load i32*, i32** %9, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %57 = mul nsw i32 %55, %56
  %58 = load i32*, i32** %12, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %9, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 1
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %64 = mul nsw i32 %62, %63
  %65 = load i32*, i32** %12, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 1
  store i32 %64, i32* %66, align 4
  %67 = load i32*, i32** %9, align 8
  %68 = getelementptr inbounds i32, i32* %67, i64 2
  %69 = load i32, i32* %68, align 4
  %70 = load i32, i32* @MAX_ENCODEABLE_XYZ, align 4
  %71 = mul nsw i32 %69, %70
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 2
  store i32 %71, i32* %73, align 4
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @T_EXTRA(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 4
  %81 = add i64 12, %80
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %52, %19
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i64 @T_PLANAR(i32) #1

declare dso_local i64 @PixelSize(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
