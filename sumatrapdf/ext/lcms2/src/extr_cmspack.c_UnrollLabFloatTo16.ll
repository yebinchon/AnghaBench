; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollLabFloatTo16.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmspack.c_UnrollLabFloatTo16.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32, %struct.TYPE_6__*, i32*, i32*, i32)* @UnrollLabFloatTo16 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @UnrollLabFloatTo16(i32 %0, %struct.TYPE_6__* %1, i32* %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_5__, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %8, align 8
  store i32* %2, i32** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @T_PLANAR(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %49

21:                                               ; preds = %5
  %22 = load i32*, i32** %10, align 8
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %10, align 8
  %24 = load i32, i32* %11, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  store i32* %26, i32** %14, align 8
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %11, align 4
  %29 = mul nsw i32 %28, 2
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i32, i32* %27, i64 %30
  store i32* %31, i32** %15, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = bitcast i32* %32 to i8**
  %34 = load i8*, i8** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8* %34, i8** %35, align 8
  %36 = load i32*, i32** %14, align 8
  %37 = bitcast i32* %36 to i8**
  %38 = load i8*, i8** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %38, i8** %39, align 8
  %40 = load i32*, i32** %15, align 8
  %41 = bitcast i32* %40 to i8**
  %42 = load i8*, i8** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* %42, i8** %43, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load i32*, i32** %9, align 8
  %46 = call i32 @cmsFloat2LabEncoded(i32 %44, i32* %45, %struct.TYPE_5__* %12)
  %47 = load i32*, i32** %10, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 8
  store i32* %48, i32** %6, align 8
  br label %78

49:                                               ; preds = %5
  %50 = load i32*, i32** %10, align 8
  %51 = bitcast i32* %50 to i8**
  %52 = getelementptr inbounds i8*, i8** %51, i64 0
  %53 = load i8*, i8** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 2
  store i8* %53, i8** %54, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = bitcast i32* %55 to i8**
  %57 = getelementptr inbounds i8*, i8** %56, i64 1
  %58 = load i8*, i8** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 1
  store i8* %58, i8** %59, align 8
  %60 = load i32*, i32** %10, align 8
  %61 = bitcast i32* %60 to i8**
  %62 = getelementptr inbounds i8*, i8** %61, i64 2
  %63 = load i8*, i8** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store i8* %63, i8** %64, align 8
  %65 = load i32, i32* %7, align 4
  %66 = load i32*, i32** %9, align 8
  %67 = call i32 @cmsFloat2LabEncoded(i32 %65, i32* %66, %struct.TYPE_5__* %12)
  %68 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @T_EXTRA(i32 %70)
  %72 = add nsw i32 3, %71
  %73 = sext i32 %72 to i64
  %74 = mul i64 %73, 8
  %75 = load i32*, i32** %10, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 %74
  store i32* %76, i32** %10, align 8
  %77 = load i32*, i32** %10, align 8
  store i32* %77, i32** %6, align 8
  br label %78

78:                                               ; preds = %49, %21
  %79 = load i32*, i32** %6, align 8
  ret i32* %79
}

declare dso_local i64 @T_PLANAR(i32) #1

declare dso_local i32 @cmsFloat2LabEncoded(i32, i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @T_EXTRA(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
