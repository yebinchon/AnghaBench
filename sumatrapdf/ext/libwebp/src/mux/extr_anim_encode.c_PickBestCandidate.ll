; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_PickBestCandidate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_PickBestCandidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32 }
%struct.TYPE_14__ = type { i64, %struct.TYPE_15__, i32, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { %struct.TYPE_11__, %struct.TYPE_11__ }

@CANDIDATE_COUNT = common dso_local global i32 0, align 4
@LL_DISP_NONE = common dso_local global i32 0, align 4
@LOSSY_DISP_NONE = common dso_local global i32 0, align 4
@WEBP_MUX_DISPOSE_NONE = common dso_local global i32 0, align 4
@WEBP_MUX_DISPOSE_BACKGROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_12__*, %struct.TYPE_14__*, i32, %struct.TYPE_13__*)* @PickBestCandidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @PickBestCandidate(%struct.TYPE_12__* %0, %struct.TYPE_14__* %1, i32 %2, %struct.TYPE_13__* %3) #0 {
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_14__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_13__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_11__*, align 8
  %14 = alloca i32, align 4
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_14__* %1, %struct.TYPE_14__** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_13__* %3, %struct.TYPE_13__** %8, align 8
  store i32 -1, i32* %10, align 4
  store i64 -1, i64* %11, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %43, %4
  %16 = load i32, i32* %9, align 4
  %17 = load i32, i32* @CANDIDATE_COUNT, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %21 = load i32, i32* %9, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %20, i64 %22
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %42

27:                                               ; preds = %19
  %28 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %29 = load i32, i32* %9, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %28, i64 %30
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  store i64 %34, i64* %12, align 8
  %35 = load i64, i64* %12, align 8
  %36 = load i64, i64* %11, align 8
  %37 = icmp ult i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %27
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %10, align 4
  %40 = load i64, i64* %12, align 8
  store i64 %40, i64* %11, align 8
  br label %41

41:                                               ; preds = %38, %27
  br label %42

42:                                               ; preds = %41, %19
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %9, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %9, align 4
  br label %15

46:                                               ; preds = %15
  %47 = load i32, i32* %10, align 4
  %48 = icmp ne i32 %47, -1
  %49 = zext i1 %48 to i32
  %50 = call i32 @assert(i32 %49)
  store i32 0, i32* %9, align 4
  br label %51

51:                                               ; preds = %136, %46
  %52 = load i32, i32* %9, align 4
  %53 = load i32, i32* @CANDIDATE_COUNT, align 4
  %54 = icmp slt i32 %52, %53
  br i1 %54, label %55, label %139

55:                                               ; preds = %51
  %56 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %57 = load i32, i32* %9, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %55
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %122

67:                                               ; preds = %63
  %68 = load i32, i32* %7, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  br label %76

73:                                               ; preds = %67
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  br label %76

76:                                               ; preds = %73, %70
  %77 = phi %struct.TYPE_11__* [ %72, %70 ], [ %75, %73 ]
  store %struct.TYPE_11__* %77, %struct.TYPE_11__** %13, align 8
  %78 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %79 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 3
  %84 = bitcast %struct.TYPE_11__* %78 to i8*
  %85 = bitcast %struct.TYPE_11__* %83 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %84, i8* align 4 %85, i64 4, i1 false)
  %86 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %87 = load i32, i32* %9, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 1
  %91 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %91, i32 0, i32 0
  %93 = call i32 @GetEncodedData(%struct.TYPE_15__* %90, i32* %92)
  %94 = load i32, i32* %7, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %113, label %96

96:                                               ; preds = %76
  %97 = load i32, i32* %10, align 4
  %98 = load i32, i32* @LL_DISP_NONE, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %104, label %100

100:                                              ; preds = %96
  %101 = load i32, i32* %10, align 4
  %102 = load i32, i32* @LOSSY_DISP_NONE, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %106

104:                                              ; preds = %100, %96
  %105 = load i32, i32* @WEBP_MUX_DISPOSE_NONE, align 4
  br label %108

106:                                              ; preds = %100
  %107 = load i32, i32* @WEBP_MUX_DISPOSE_BACKGROUND, align 4
  br label %108

108:                                              ; preds = %106, %104
  %109 = phi i32 [ %105, %104 ], [ %107, %106 ]
  store i32 %109, i32* %14, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = load i32, i32* %14, align 4
  %112 = call i32 @SetPreviousDisposeMethod(%struct.TYPE_12__* %110, i32 %111)
  br label %113

113:                                              ; preds = %108, %76
  %114 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i64 %116
  %118 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 0
  store i32 %119, i32* %121, align 4
  br label %134

122:                                              ; preds = %63
  %123 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %124 = load i32, i32* %9, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = call i32 @WebPMemoryWriterClear(%struct.TYPE_15__* %127)
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %6, align 8
  %130 = load i32, i32* %9, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 0
  store i64 0, i64* %133, align 8
  br label %134

134:                                              ; preds = %122, %113
  br label %135

135:                                              ; preds = %134, %55
  br label %136

136:                                              ; preds = %135
  %137 = load i32, i32* %9, align 4
  %138 = add nsw i32 %137, 1
  store i32 %138, i32* %9, align 4
  br label %51

139:                                              ; preds = %51
  ret void
}

declare dso_local i32 @assert(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @GetEncodedData(%struct.TYPE_15__*, i32*) #1

declare dso_local i32 @SetPreviousDisposeMethod(%struct.TYPE_12__*, i32) #1

declare dso_local i32 @WebPMemoryWriterClear(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
