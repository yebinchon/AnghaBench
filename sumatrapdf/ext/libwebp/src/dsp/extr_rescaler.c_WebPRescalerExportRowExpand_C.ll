; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_rescaler.c_WebPRescalerExportRowExpand_C.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dsp/extr_rescaler.c_WebPRescalerExportRowExpand_C.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32*, i32, i32, i32*, i32, i64, i32, i32 }

@WEBP_RESCALER_ONE = common dso_local global i32 0, align 4
@ROUNDER = common dso_local global i32 0, align 4
@WEBP_RESCALER_RFIX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @WebPRescalerExportRowExpand_C(%struct.TYPE_4__* %0) #0 {
  %2 = alloca %struct.TYPE_4__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %2, align 8
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %4, align 8
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  store i32* %20, i32** %5, align 8
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 3
  %26 = load i32, i32* %25, align 4
  %27 = mul nsw i32 %23, %26
  store i32 %27, i32* %6, align 4
  %28 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 4
  %30 = load i32*, i32** %29, align 8
  store i32* %30, i32** %7, align 8
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %32 = call i32 @WebPRescalerOutputDone(%struct.TYPE_4__* %31)
  %33 = icmp ne i32 %32, 0
  %34 = xor i1 %33, true
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 8
  %39 = load i32, i32* %38, align 4
  %40 = icmp sle i32 %39, 0
  %41 = zext i1 %40 to i32
  %42 = call i32 @assert(i32 %41)
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 5
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @assert(i32 %45)
  %47 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 6
  %49 = load i64, i64* %48, align 8
  %50 = icmp ne i64 %49, 0
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %53, i32 0, i32 8
  %55 = load i32, i32* %54, align 4
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %89

57:                                               ; preds = %1
  store i32 0, i32* %3, align 4
  br label %58

58:                                               ; preds = %85, %57
  %59 = load i32, i32* %3, align 4
  %60 = load i32, i32* %6, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load i32*, i32** %7, align 8
  %64 = load i32, i32* %3, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %63, i64 %65
  %67 = load i32, i32* %66, align 4
  store i32 %67, i32* %8, align 4
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @MULT_FIX(i32 %68, i32 %71)
  %73 = trunc i64 %72 to i32
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp sgt i32 %74, 255
  br i1 %75, label %76, label %77

76:                                               ; preds = %62
  br label %79

77:                                               ; preds = %62
  %78 = load i32, i32* %9, align 4
  br label %79

79:                                               ; preds = %77, %76
  %80 = phi i32 [ 255, %76 ], [ %78, %77 ]
  %81 = load i32*, i32** %4, align 8
  %82 = load i32, i32* %3, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i32, i32* %81, i64 %83
  store i32 %80, i32* %84, align 4
  br label %85

85:                                               ; preds = %79
  %86 = load i32, i32* %3, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %3, align 4
  br label %58

88:                                               ; preds = %58
  br label %147

89:                                               ; preds = %1
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 8
  %92 = load i32, i32* %91, align 4
  %93 = sub nsw i32 0, %92
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 6
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @WEBP_RESCALER_FRAC(i32 %93, i64 %96)
  store i32 %97, i32* %10, align 4
  %98 = load i32, i32* @WEBP_RESCALER_ONE, align 4
  %99 = load i32, i32* %10, align 4
  %100 = sub nsw i32 %98, %99
  store i32 %100, i32* %11, align 4
  store i32 0, i32* %3, align 4
  br label %101

101:                                              ; preds = %143, %89
  %102 = load i32, i32* %3, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %146

105:                                              ; preds = %101
  %106 = load i32, i32* %11, align 4
  %107 = load i32*, i32** %7, align 8
  %108 = load i32, i32* %3, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds i32, i32* %107, i64 %109
  %111 = load i32, i32* %110, align 4
  %112 = mul nsw i32 %106, %111
  %113 = load i32, i32* %10, align 4
  %114 = load i32*, i32** %5, align 8
  %115 = load i32, i32* %3, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %114, i64 %116
  %118 = load i32, i32* %117, align 4
  %119 = mul nsw i32 %113, %118
  %120 = add nsw i32 %112, %119
  store i32 %120, i32* %12, align 4
  %121 = load i32, i32* %12, align 4
  %122 = load i32, i32* @ROUNDER, align 4
  %123 = add nsw i32 %121, %122
  %124 = load i32, i32* @WEBP_RESCALER_RFIX, align 4
  %125 = ashr i32 %123, %124
  store i32 %125, i32* %13, align 4
  %126 = load i32, i32* %13, align 4
  %127 = load %struct.TYPE_4__*, %struct.TYPE_4__** %2, align 8
  %128 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %127, i32 0, i32 7
  %129 = load i32, i32* %128, align 8
  %130 = call i64 @MULT_FIX(i32 %126, i32 %129)
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %14, align 4
  %132 = load i32, i32* %14, align 4
  %133 = icmp sgt i32 %132, 255
  br i1 %133, label %134, label %135

134:                                              ; preds = %105
  br label %137

135:                                              ; preds = %105
  %136 = load i32, i32* %14, align 4
  br label %137

137:                                              ; preds = %135, %134
  %138 = phi i32 [ 255, %134 ], [ %136, %135 ]
  %139 = load i32*, i32** %4, align 8
  %140 = load i32, i32* %3, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds i32, i32* %139, i64 %141
  store i32 %138, i32* %142, align 4
  br label %143

143:                                              ; preds = %137
  %144 = load i32, i32* %3, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %3, align 4
  br label %101

146:                                              ; preds = %101
  br label %147

147:                                              ; preds = %146, %88
  ret void
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPRescalerOutputDone(%struct.TYPE_4__*) #1

declare dso_local i64 @MULT_FIX(i32, i32) #1

declare dso_local i32 @WEBP_RESCALER_FRAC(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
