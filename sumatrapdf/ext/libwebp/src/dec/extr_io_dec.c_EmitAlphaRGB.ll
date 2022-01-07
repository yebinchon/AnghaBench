; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_EmitAlphaRGB.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_io_dec.c_EmitAlphaRGB.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { i32, i32, i32* }
%struct.TYPE_12__ = type { %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i64, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32* }

@MODE_ARGB = common dso_local global i64 0, align 8
@MODE_Argb = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_13__*, %struct.TYPE_12__*, i32)* @EmitAlphaRGB to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EmitAlphaRGB(%struct.TYPE_13__* %0, %struct.TYPE_12__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_13__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  store %struct.TYPE_13__* %0, %struct.TYPE_13__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  store i32 %2, i32* %6, align 4
  %17 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  store i32* %19, i32** %7, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = icmp ne i32* %20, null
  br i1 %21, label %22, label %98

22:                                               ; preds = %3
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  store i32 %25, i32* %8, align 4
  %26 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_10__*, %struct.TYPE_10__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %9, align 8
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @MODE_ARGB, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %38, label %34

34:                                               ; preds = %22
  %35 = load i64, i64* %9, align 8
  %36 = load i64, i64* @MODE_Argb, align 8
  %37 = icmp eq i64 %35, %36
  br label %38

38:                                               ; preds = %34, %22
  %39 = phi i1 [ true, %22 ], [ %37, %34 ]
  %40 = zext i1 %39 to i32
  store i32 %40, i32* %10, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %44, i32 0, i32 0
  store %struct.TYPE_11__* %45, %struct.TYPE_11__** %11, align 8
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %47 = call i32 @GetAlphaSourceRow(%struct.TYPE_13__* %46, i32** %7, i32* %12)
  store i32 %47, i32* %13, align 4
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 1
  %50 = load i32*, i32** %49, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %51, %54
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %50, i64 %56
  store i32* %57, i32** %14, align 8
  %58 = load i32*, i32** %14, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i64
  %62 = select i1 %60, i32 0, i32 3
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i32, i32* %58, i64 %63
  store i32* %64, i32** %15, align 8
  %65 = load i32*, i32** %7, align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* %12, align 4
  %71 = load i32*, i32** %15, align 8
  %72 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = call i32 @WebPDispatchAlpha(i32* %65, i32 %68, i32 %69, i32 %70, i32* %71, i32 %74)
  store i32 %75, i32* %16, align 4
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* %12, align 4
  %79 = icmp eq i32 %77, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %16, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %97

84:                                               ; preds = %38
  %85 = load i64, i64* %9, align 8
  %86 = call i64 @WebPIsPremultipliedMode(i64 %85)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %97

88:                                               ; preds = %84
  %89 = load i32*, i32** %14, align 8
  %90 = load i32, i32* %10, align 4
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* %12, align 4
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @WebPApplyAlphaMultiply(i32* %89, i32 %90, i32 %91, i32 %92, i32 %95)
  br label %97

97:                                               ; preds = %88, %84, %38
  br label %98

98:                                               ; preds = %97, %3
  ret i32 0
}

declare dso_local i32 @GetAlphaSourceRow(%struct.TYPE_13__*, i32**, i32*) #1

declare dso_local i32 @WebPDispatchAlpha(i32*, i32, i32, i32, i32*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @WebPIsPremultipliedMode(i64) #1

declare dso_local i32 @WebPApplyAlphaMultiply(i32*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
