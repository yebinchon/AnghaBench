; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCopyAndAnalyze.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_histogram_enc.c_HistogramCopyAndAnalyze.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, %struct.TYPE_10__** }
%struct.TYPE_10__ = type { i32* }

@kInvalidHistogramSymbol = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_9__*, %struct.TYPE_9__*, i32*, i32*)* @HistogramCopyAndAnalyze to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HistogramCopyAndAnalyze(%struct.TYPE_9__* %0, %struct.TYPE_9__* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_10__**, align 8
  %13 = alloca %struct.TYPE_10__**, align 8
  %14 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %11, align 4
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %18, align 8
  store %struct.TYPE_10__** %19, %struct.TYPE_10__*** %12, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %21, align 8
  store %struct.TYPE_10__** %22, %struct.TYPE_10__*** %13, align 8
  %23 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = icmp eq i32 %25, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @assert(i32 %30)
  store i32 0, i32* %10, align 4
  store i32 0, i32* %9, align 4
  br label %32

32:                                               ; preds = %119, %4
  %33 = load i32, i32* %9, align 4
  %34 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = icmp slt i32 %33, %36
  br i1 %37, label %38, label %122

38:                                               ; preds = %32
  %39 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %12, align 8
  %40 = load i32, i32* %9, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %39, i64 %41
  %43 = load %struct.TYPE_10__*, %struct.TYPE_10__** %42, align 8
  store %struct.TYPE_10__* %43, %struct.TYPE_10__** %14, align 8
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %45 = call i32 @UpdateHistogramCost(%struct.TYPE_10__* %44)
  %46 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 0
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %97, label %52

52:                                               ; preds = %38
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %54 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = getelementptr inbounds i32, i32* %55, i64 1
  %57 = load i32, i32* %56, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %97, label %59

59:                                               ; preds = %52
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 2
  %64 = load i32, i32* %63, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %97, label %66

66:                                               ; preds = %59
  %67 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 3
  %71 = load i32, i32* %70, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %97, label %73

73:                                               ; preds = %66
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 4
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %97, label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = icmp sgt i32 %81, 0
  %83 = zext i1 %82 to i32
  %84 = call i32 @assert(i32 %83)
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = load i32, i32* %9, align 4
  %87 = load i32*, i32** %7, align 8
  %88 = call i32 @HistogramSetRemoveHistogram(%struct.TYPE_9__* %85, i32 %86, i32* %87)
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = load i32, i32* %9, align 4
  %91 = call i32 @HistogramSetRemoveHistogram(%struct.TYPE_9__* %89, i32 %90, i32* %11)
  %92 = load i32, i32* @kInvalidHistogramSymbol, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds i32, i32* %93, i64 %95
  store i32 %92, i32* %96, align 4
  br label %118

97:                                               ; preds = %73, %66, %59, %52, %38
  %98 = load %struct.TYPE_10__*, %struct.TYPE_10__** %14, align 8
  %99 = load %struct.TYPE_10__**, %struct.TYPE_10__*** %13, align 8
  %100 = load i32, i32* %9, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_10__*, %struct.TYPE_10__** %99, i64 %101
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = call i32 @HistogramCopy(%struct.TYPE_10__* %98, %struct.TYPE_10__* %103)
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  %107 = load i32*, i32** %8, align 8
  %108 = load i32, i32* %9, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  store i32 %105, i32* %110, align 4
  %111 = load i32, i32* %10, align 4
  %112 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = icmp sle i32 %111, %114
  %116 = zext i1 %115 to i32
  %117 = call i32 @assert(i32 %116)
  br label %118

118:                                              ; preds = %97, %80
  br label %119

119:                                              ; preds = %118
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  br label %32

122:                                              ; preds = %32
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @UpdateHistogramCost(%struct.TYPE_10__*) #1

declare dso_local i32 @HistogramSetRemoveHistogram(%struct.TYPE_9__*, i32, i32*) #1

declare dso_local i32 @HistogramCopy(%struct.TYPE_10__*, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
