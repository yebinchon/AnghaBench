; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_cost_enc.c_VP8GetCostUV.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_cost_enc.c_VP8GetCostUV.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32*, i32*, i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @VP8GetCostUV(%struct.TYPE_12__* %0, %struct.TYPE_11__* %1) #0 {
  %3 = alloca %struct.TYPE_12__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_10__, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %3, align 8
  store %struct.TYPE_11__* %1, %struct.TYPE_11__** %4, align 8
  %12 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %12, i32 0, i32 2
  %14 = load i32*, i32** %13, align 8
  store i32* %14, i32** %6, align 8
  store i32 0, i32* %10, align 4
  %15 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %16 = call i32 @VP8IteratorNzToBytes(%struct.TYPE_12__* %15)
  %17 = load i32*, i32** %6, align 8
  %18 = call i32 @VP8InitResidual(i32 0, i32 2, i32* %17, %struct.TYPE_10__* %5)
  store i32 0, i32* %7, align 4
  br label %19

19:                                               ; preds = %102, %2
  %20 = load i32, i32* %7, align 4
  %21 = icmp sle i32 %20, 2
  br i1 %21, label %22, label %105

22:                                               ; preds = %19
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %98, %22
  %24 = load i32, i32* %9, align 4
  %25 = icmp slt i32 %24, 2
  br i1 %25, label %26, label %101

26:                                               ; preds = %23
  store i32 0, i32* %8, align 4
  br label %27

27:                                               ; preds = %94, %26
  %28 = load i32, i32* %8, align 4
  %29 = icmp slt i32 %28, 2
  br i1 %29, label %30, label %97

30:                                               ; preds = %27
  %31 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %7, align 4
  %35 = add nsw i32 4, %34
  %36 = load i32, i32* %8, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i32, i32* %33, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %41, i32 0, i32 1
  %43 = load i32*, i32** %42, align 8
  %44 = load i32, i32* %7, align 4
  %45 = add nsw i32 4, %44
  %46 = load i32, i32* %9, align 4
  %47 = add nsw i32 %45, %46
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %43, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = add nsw i32 %40, %50
  store i32 %51, i32* %11, align 4
  %52 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %7, align 4
  %56 = mul nsw i32 %55, 2
  %57 = load i32, i32* %8, align 4
  %58 = add nsw i32 %56, %57
  %59 = load i32, i32* %9, align 4
  %60 = mul nsw i32 %59, 2
  %61 = add nsw i32 %58, %60
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %54, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @VP8SetResidualCoeffs(i32 %64, %struct.TYPE_10__* %5)
  %66 = load i32, i32* %11, align 4
  %67 = call i64 @VP8GetResidualCost(i32 %66, %struct.TYPE_10__* %5)
  %68 = load i32, i32* %10, align 4
  %69 = sext i32 %68 to i64
  %70 = add nsw i64 %69, %67
  %71 = trunc i64 %70 to i32
  store i32 %71, i32* %10, align 4
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %5, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp sge i64 %73, 0
  %75 = zext i1 %74 to i32
  %76 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %77 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 4, %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %80, %81
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %78, i64 %83
  store i32 %75, i32* %84, align 4
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %3, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %7, align 4
  %89 = add nsw i32 4, %88
  %90 = load i32, i32* %8, align 4
  %91 = add nsw i32 %89, %90
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds i32, i32* %87, i64 %92
  store i32 %75, i32* %93, align 4
  br label %94

94:                                               ; preds = %30
  %95 = load i32, i32* %8, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %8, align 4
  br label %27

97:                                               ; preds = %27
  br label %98

98:                                               ; preds = %97
  %99 = load i32, i32* %9, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %9, align 4
  br label %23

101:                                              ; preds = %23
  br label %102

102:                                              ; preds = %101
  %103 = load i32, i32* %7, align 4
  %104 = add nsw i32 %103, 2
  store i32 %104, i32* %7, align 4
  br label %19

105:                                              ; preds = %19
  %106 = load i32, i32* %10, align 4
  ret i32 %106
}

declare dso_local i32 @VP8IteratorNzToBytes(%struct.TYPE_12__*) #1

declare dso_local i32 @VP8InitResidual(i32, i32, i32*, %struct.TYPE_10__*) #1

declare dso_local i32 @VP8SetResidualCoeffs(i32, %struct.TYPE_10__*) #1

declare dso_local i64 @VP8GetResidualCost(i32, %struct.TYPE_10__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
