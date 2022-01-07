; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_OneStatPass.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/enc/extr_frame_enc.c_OneStatPass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_13__, %struct.TYPE_14__ }
%struct.TYPE_13__ = type { i32 }
%struct.TYPE_14__ = type { i64 }
%struct.TYPE_17__ = type { double, i64, i32 }
%struct.TYPE_15__ = type { i64, i64, i64 }

@HEADER_SIZE_ESTIMATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_16__*, i32, i32, i32, %struct.TYPE_17__*)* @OneStatPass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OneStatPass(%struct.TYPE_16__* %0, i32 %1, i32 %2, i32 %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_16__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.TYPE_15__, align 8
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %18 = load i32, i32* %9, align 4
  %19 = mul nsw i32 %18, 384
  store i32 %19, i32* %16, align 4
  %20 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %21 = call i32 @VP8IteratorInit(%struct.TYPE_16__* %20, i32* %12)
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %23 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 8
  %26 = call i32 @SetLoopParams(%struct.TYPE_16__* %22, i32 %25)
  br label %27

27:                                               ; preds = %77, %5
  %28 = call i32 @VP8IteratorImport(i32* %12, i32* null)
  %29 = load i32, i32* %8, align 4
  %30 = call i64 @VP8Decimate(i32* %12, %struct.TYPE_15__* %17, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %27
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %35, align 8
  br label %38

38:                                               ; preds = %32, %27
  %39 = call i32 @RecordResiduals(i32* %12, %struct.TYPE_15__* %17)
  %40 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 2
  %41 = load i64, i64* %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %41, %43
  %45 = load i32, i32* %13, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %46, %44
  %48 = trunc i64 %47 to i32
  store i32 %48, i32* %13, align 4
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = add nsw i64 %52, %50
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %14, align 4
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %17, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i32, i32* %15, align 4
  %58 = sext i32 %57 to i64
  %59 = add nsw i64 %58, %56
  %60 = trunc i64 %59 to i32
  store i32 %60, i32* %15, align 4
  %61 = load i32, i32* %10, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %38
  %64 = load i32, i32* %10, align 4
  %65 = call i32 @VP8IteratorProgress(i32* %12, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %63
  store i32 0, i32* %6, align 4
  br label %125

68:                                               ; preds = %63, %38
  %69 = call i32 @VP8IteratorSaveBoundary(i32* %12)
  br label %70

70:                                               ; preds = %68
  %71 = call i64 @VP8IteratorNext(i32* %12)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %77

73:                                               ; preds = %70
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %9, align 4
  %76 = icmp sgt i32 %75, 0
  br label %77

77:                                               ; preds = %73, %70
  %78 = phi i1 [ false, %70 ], [ %76, %73 ]
  br i1 %78, label %27, label %79

79:                                               ; preds = %77
  %80 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %80, i32 0, i32 1
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = add nsw i64 %85, %83
  %87 = trunc i64 %86 to i32
  store i32 %87, i32* %14, align 4
  %88 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %89 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %88, i32 0, i32 1
  %90 = load i64, i64* %89, align 8
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %117

92:                                               ; preds = %79
  %93 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %94 = call i64 @FinalizeSkipProba(%struct.TYPE_16__* %93)
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = add nsw i64 %96, %94
  %98 = trunc i64 %97 to i32
  store i32 %98, i32* %13, align 4
  %99 = load %struct.TYPE_16__*, %struct.TYPE_16__** %7, align 8
  %100 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %99, i32 0, i32 0
  %101 = call i64 @FinalizeTokenProbas(%struct.TYPE_13__* %100)
  %102 = load i32, i32* %13, align 4
  %103 = sext i32 %102 to i64
  %104 = add nsw i64 %103, %101
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %13, align 4
  %106 = load i32, i32* %13, align 4
  %107 = load i32, i32* %14, align 4
  %108 = add nsw i32 %106, %107
  %109 = add nsw i32 %108, 1024
  %110 = ashr i32 %109, 11
  %111 = load i32, i32* @HEADER_SIZE_ESTIMATE, align 4
  %112 = add nsw i32 %110, %111
  store i32 %112, i32* %13, align 4
  %113 = load i32, i32* %13, align 4
  %114 = sitofp i32 %113 to double
  %115 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 0
  store double %114, double* %116, align 8
  br label %123

117:                                              ; preds = %79
  %118 = load i32, i32* %15, align 4
  %119 = load i32, i32* %16, align 4
  %120 = call double @GetPSNR(i32 %118, i32 %119)
  %121 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 0
  store double %120, double* %122, align 8
  br label %123

123:                                              ; preds = %117, %92
  %124 = load i32, i32* %14, align 4
  store i32 %124, i32* %6, align 4
  br label %125

125:                                              ; preds = %123, %67
  %126 = load i32, i32* %6, align 4
  ret i32 %126
}

declare dso_local i32 @VP8IteratorInit(%struct.TYPE_16__*, i32*) #1

declare dso_local i32 @SetLoopParams(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @VP8IteratorImport(i32*, i32*) #1

declare dso_local i64 @VP8Decimate(i32*, %struct.TYPE_15__*, i32) #1

declare dso_local i32 @RecordResiduals(i32*, %struct.TYPE_15__*) #1

declare dso_local i32 @VP8IteratorProgress(i32*, i32) #1

declare dso_local i32 @VP8IteratorSaveBoundary(i32*) #1

declare dso_local i64 @VP8IteratorNext(i32*) #1

declare dso_local i64 @FinalizeSkipProba(%struct.TYPE_16__*) #1

declare dso_local i64 @FinalizeTokenProbas(%struct.TYPE_13__*) #1

declare dso_local double @GetPSNR(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
