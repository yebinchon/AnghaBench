; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramBuild.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramBuild.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32** }
%struct.TYPE_8__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32*, %struct.TYPE_9__*)* @HistogramBuild to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HistogramBuild(i32 %0, i32 %1, i32* %2, %struct.TYPE_9__* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32**, align 8
  %13 = alloca %struct.TYPE_8__, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_9__* %3, %struct.TYPE_9__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @VP8LSubSampleSize(i32 %16, i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 0
  %21 = load i32**, i32*** %20, align 8
  store i32** %21, i32*** %12, align 8
  %22 = load i32*, i32** %7, align 8
  %23 = call i32* @VP8LRefsCursorInit(i32* %22)
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  store i32* %23, i32** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 0
  %27 = zext i1 %26 to i32
  %28 = call i32 @assert(i32 %27)
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %30 = call i32 @VP8LHistogramSetClear(%struct.TYPE_9__* %29)
  br label %31

31:                                               ; preds = %69, %4
  %32 = call i64 @VP8LRefsCursorOk(%struct.TYPE_8__* %13)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %71

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  store i32* %36, i32** %14, align 8
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* %6, align 4
  %39 = ashr i32 %37, %38
  %40 = load i32, i32* %11, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %6, align 4
  %44 = ashr i32 %42, %43
  %45 = add nsw i32 %41, %44
  store i32 %45, i32* %15, align 4
  %46 = load i32**, i32*** %12, align 8
  %47 = load i32, i32* %15, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32*, i32** %46, i64 %48
  %50 = load i32*, i32** %49, align 8
  %51 = load i32*, i32** %14, align 8
  %52 = call i32 @VP8LHistogramAddSinglePixOrCopy(i32* %50, i32* %51, i32* null, i32 0)
  %53 = load i32*, i32** %14, align 8
  %54 = call i64 @PixOrCopyLength(i32* %53)
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %56, %54
  %58 = trunc i64 %57 to i32
  store i32 %58, i32* %9, align 4
  br label %59

59:                                               ; preds = %63, %34
  %60 = load i32, i32* %9, align 4
  %61 = load i32, i32* %5, align 4
  %62 = icmp sge i32 %60, %61
  br i1 %62, label %63, label %69

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* %9, align 4
  %66 = sub nsw i32 %65, %64
  store i32 %66, i32* %9, align 4
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %59

69:                                               ; preds = %59
  %70 = call i32 @VP8LRefsCursorNext(%struct.TYPE_8__* %13)
  br label %31

71:                                               ; preds = %31
  ret void
}

declare dso_local i32 @VP8LSubSampleSize(i32, i32) #1

declare dso_local i32* @VP8LRefsCursorInit(i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @VP8LHistogramSetClear(%struct.TYPE_9__*) #1

declare dso_local i64 @VP8LRefsCursorOk(%struct.TYPE_8__*) #1

declare dso_local i32 @VP8LHistogramAddSinglePixOrCopy(i32*, i32*, i32*, i32) #1

declare dso_local i64 @PixOrCopyLength(i32*) #1

declare dso_local i32 @VP8LRefsCursorNext(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
