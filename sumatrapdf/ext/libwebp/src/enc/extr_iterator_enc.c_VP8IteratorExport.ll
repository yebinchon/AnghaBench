; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_iterator_enc.c_VP8IteratorExport.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_iterator_enc.c_VP8IteratorExport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { i32, i32, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i32, i32, i32, i32, i32*, i32*, i32* }
%struct.TYPE_6__ = type { i64 }

@Y_OFF_ENC = common dso_local global i32 0, align 4
@U_OFF_ENC = common dso_local global i32 0, align 4
@V_OFF_ENC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VP8IteratorExport(%struct.TYPE_9__* %0) #0 {
  %2 = alloca %struct.TYPE_9__*, align 8
  %3 = alloca %struct.TYPE_8__*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %2, align 8
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 3
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  store %struct.TYPE_8__* %19, %struct.TYPE_8__** %3, align 8
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %143

26:                                               ; preds = %1
  %27 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %28 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %4, align 4
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %5, align 4
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 2
  %35 = load i32*, i32** %34, align 8
  %36 = load i32, i32* @Y_OFF_ENC, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32* %38, i32** %6, align 8
  %39 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %40 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %39, i32 0, i32 2
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* @U_OFF_ENC, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  store i32* %44, i32** %7, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %2, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i32, i32* @V_OFF_ENC, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  store i32* %50, i32** %8, align 8
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %3, align 8
  %52 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %52, align 8
  store %struct.TYPE_7__* %53, %struct.TYPE_7__** %9, align 8
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 6
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %5, align 4
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = mul nsw i32 %57, %60
  %62 = load i32, i32* %4, align 4
  %63 = add nsw i32 %61, %62
  %64 = mul nsw i32 %63, 16
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i32, i32* %56, i64 %65
  store i32* %66, i32** %10, align 8
  %67 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %68 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %67, i32 0, i32 5
  %69 = load i32*, i32** %68, align 8
  %70 = load i32, i32* %5, align 4
  %71 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %72 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = mul nsw i32 %70, %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %74, %75
  %77 = mul nsw i32 %76, 8
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %69, i64 %78
  store i32* %79, i32** %11, align 8
  %80 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %81 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %80, i32 0, i32 4
  %82 = load i32*, i32** %81, align 8
  %83 = load i32, i32* %5, align 4
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %85 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = mul nsw i32 %83, %86
  %88 = load i32, i32* %4, align 4
  %89 = add nsw i32 %87, %88
  %90 = mul nsw i32 %89, 8
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %82, i64 %91
  store i32* %92, i32** %12, align 8
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* %4, align 4
  %97 = mul nsw i32 %96, 16
  %98 = sub nsw i32 %95, %97
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %5, align 4
  %103 = mul nsw i32 %102, 16
  %104 = sub nsw i32 %101, %103
  store i32 %104, i32* %14, align 4
  %105 = load i32, i32* %13, align 4
  %106 = icmp sgt i32 %105, 16
  br i1 %106, label %107, label %108

107:                                              ; preds = %26
  store i32 16, i32* %13, align 4
  br label %108

108:                                              ; preds = %107, %26
  %109 = load i32, i32* %14, align 4
  %110 = icmp sgt i32 %109, 16
  br i1 %110, label %111, label %112

111:                                              ; preds = %108
  store i32 16, i32* %14, align 4
  br label %112

112:                                              ; preds = %111, %108
  %113 = load i32*, i32** %6, align 8
  %114 = load i32*, i32** %10, align 8
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = load i32, i32* %13, align 4
  %119 = load i32, i32* %14, align 4
  %120 = call i32 @ExportBlock(i32* %113, i32* %114, i32 %117, i32 %118, i32 %119)
  %121 = load i32, i32* %13, align 4
  %122 = add nsw i32 %121, 1
  %123 = ashr i32 %122, 1
  store i32 %123, i32* %15, align 4
  %124 = load i32, i32* %14, align 4
  %125 = add nsw i32 %124, 1
  %126 = ashr i32 %125, 1
  store i32 %126, i32* %16, align 4
  %127 = load i32*, i32** %7, align 8
  %128 = load i32*, i32** %11, align 8
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 1
  %131 = load i32, i32* %130, align 4
  %132 = load i32, i32* %15, align 4
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @ExportBlock(i32* %127, i32* %128, i32 %131, i32 %132, i32 %133)
  %135 = load i32*, i32** %8, align 8
  %136 = load i32*, i32** %12, align 8
  %137 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %138 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %15, align 4
  %141 = load i32, i32* %16, align 4
  %142 = call i32 @ExportBlock(i32* %135, i32* %136, i32 %139, i32 %140, i32 %141)
  br label %143

143:                                              ; preds = %112, %1
  ret void
}

declare dso_local i32 @ExportBlock(i32*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
