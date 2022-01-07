; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackXYZFloatFrom16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_PackXYZFloatFrom16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_6__*, i32*, i32*, i64)* @PackXYZFloatFrom16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @PackXYZFloatFrom16(i32 %0, %struct.TYPE_6__* %1, i32* %2, i32* %3, i64 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_5__, align 4
  %13 = alloca i64*, align 8
  %14 = alloca %struct.TYPE_5__, align 4
  %15 = alloca i64*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i64 %4, i64* %11, align 8
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @T_PLANAR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  %23 = bitcast i32* %22 to i64*
  store i64* %23, i64** %13, align 8
  %24 = load i32, i32* %7, align 4
  %25 = load i32*, i32** %9, align 8
  %26 = call i32 @cmsXYZEncoded2Float(i32 %24, %struct.TYPE_5__* %12, i32* %25)
  %27 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @PixelSize(i32 %29)
  %31 = load i64, i64* %11, align 8
  %32 = udiv i64 %31, %30
  store i64 %32, i64* %11, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = sext i32 %34 to i64
  %36 = load i64*, i64** %13, align 8
  %37 = getelementptr inbounds i64, i64* %36, i64 0
  store i64 %35, i64* %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = sext i32 %39 to i64
  %41 = load i64*, i64** %13, align 8
  %42 = load i64, i64* %11, align 8
  %43 = getelementptr inbounds i64, i64* %41, i64 %42
  store i64 %40, i64* %43, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sext i32 %45 to i64
  %47 = load i64*, i64** %13, align 8
  %48 = load i64, i64* %11, align 8
  %49 = mul i64 %48, 2
  %50 = getelementptr inbounds i64, i64* %47, i64 %49
  store i64 %46, i64* %50, align 8
  %51 = load i32*, i32** %10, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 8
  store i32* %52, i32** %6, align 8
  br label %83

53:                                               ; preds = %5
  %54 = load i32*, i32** %10, align 8
  %55 = bitcast i32* %54 to i64*
  store i64* %55, i64** %15, align 8
  %56 = load i32, i32* %7, align 4
  %57 = load i32*, i32** %9, align 8
  %58 = call i32 @cmsXYZEncoded2Float(i32 %56, %struct.TYPE_5__* %14, i32* %57)
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %15, align 8
  %63 = getelementptr inbounds i64, i64* %62, i64 0
  store i64 %61, i64* %63, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = sext i32 %65 to i64
  %67 = load i64*, i64** %15, align 8
  %68 = getelementptr inbounds i64, i64* %67, i64 1
  store i64 %66, i64* %68, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %14, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = sext i32 %70 to i64
  %72 = load i64*, i64** %15, align 8
  %73 = getelementptr inbounds i64, i64* %72, i64 2
  store i64 %71, i64* %73, align 8
  %74 = load i32*, i32** %10, align 8
  %75 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %76 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @T_EXTRA(i32 %77)
  %79 = sext i32 %78 to i64
  %80 = mul i64 %79, 8
  %81 = add i64 24, %80
  %82 = getelementptr inbounds i32, i32* %74, i64 %81
  store i32* %82, i32** %6, align 8
  br label %83

83:                                               ; preds = %53, %21
  %84 = load i32*, i32** %6, align 8
  ret i32* %84
}

declare dso_local i64 @T_PLANAR(i32) #1

declare dso_local i32 @cmsXYZEncoded2Float(i32, %struct.TYPE_5__*, i32*) #1

declare dso_local i64 @PixelSize(i32) #1

declare dso_local i32 @T_EXTRA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
