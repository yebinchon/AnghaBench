; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_EncodeCandidate.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_anim_encode.c_EncodeCandidate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_15__ = type { i64, i64, i32 }
%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_13__, %struct.TYPE_16__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32, i32, i32 }

@VP8_ENC_OK = common dso_local global i32 0, align 4
@WEBP_CHUNK_ANMF = common dso_local global i32 0, align 4
@WEBP_MUX_DISPOSE_NONE = common dso_local global i32 0, align 4
@WEBP_MUX_BLEND = common dso_local global i32 0, align 4
@WEBP_MUX_NO_BLEND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %struct.TYPE_16__*, %struct.TYPE_15__*, i32, %struct.TYPE_17__*)* @EncodeCandidate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @EncodeCandidate(%struct.TYPE_14__* %0, %struct.TYPE_16__* %1, %struct.TYPE_15__* %2, i32 %3, %struct.TYPE_17__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_14__*, align 8
  %8 = alloca %struct.TYPE_16__*, align 8
  %9 = alloca %struct.TYPE_15__*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca %struct.TYPE_15__, align 8
  %13 = alloca i32, align 4
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %7, align 8
  store %struct.TYPE_16__* %1, %struct.TYPE_16__** %8, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %9, align 8
  store i32 %3, i32* %10, align 4
  store %struct.TYPE_17__* %4, %struct.TYPE_17__** %11, align 8
  %14 = load %struct.TYPE_15__*, %struct.TYPE_15__** %9, align 8
  %15 = bitcast %struct.TYPE_15__* %12 to i8*
  %16 = bitcast %struct.TYPE_15__* %14 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %15, i8* align 8 %16, i64 24, i1 false)
  %17 = load i32, i32* @VP8_ENC_OK, align 4
  store i32 %17, i32* %13, align 4
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %19 = icmp ne %struct.TYPE_17__* %18, null
  %20 = zext i1 %19 to i32
  %21 = call i32 @assert(i32 %20)
  %22 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %23 = call i32 @memset(%struct.TYPE_17__* %22, i32 0, i32 48)
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 3
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %27 = bitcast %struct.TYPE_16__* %25 to i8*
  %28 = bitcast %struct.TYPE_16__* %26 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %27, i8* align 4 %28, i64 8, i1 false)
  %29 = load i32, i32* @WEBP_CHUNK_ANMF, align 4
  %30 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 5
  store i32 %29, i32* %32, align 8
  %33 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %34 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %37 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 4
  store i32 %35, i32* %38, align 4
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %8, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %43, i32 0, i32 3
  store i32 %41, i32* %44, align 8
  %45 = load i32, i32* @WEBP_MUX_DISPOSE_NONE, align 4
  %46 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %47 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %46, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 4
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %5
  %52 = load i32, i32* @WEBP_MUX_BLEND, align 4
  br label %55

53:                                               ; preds = %5
  %54 = load i32, i32* @WEBP_MUX_NO_BLEND, align 4
  br label %55

55:                                               ; preds = %53, %51
  %56 = phi i32 [ %52, %51 ], [ %54, %53 ]
  %57 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %58 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %57, i32 0, i32 2
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 8
  %60 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %60, i32 0, i32 2
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  store i64 0, i64* %62, align 8
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = call i32 @WebPMemoryWriterInit(i32* %64)
  %66 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %75, label %69

69:                                               ; preds = %55
  %70 = load i32, i32* %10, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %69
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 1
  store i64 0, i64* %73, align 8
  %74 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %12, i32 0, i32 0
  store i64 0, i64* %74, align 8
  br label %75

75:                                               ; preds = %72, %69, %55
  %76 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %77 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %77, i32 0, i32 1
  %79 = call i32 @EncodeFrame(%struct.TYPE_15__* %12, %struct.TYPE_14__* %76, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = load %struct.TYPE_14__*, %struct.TYPE_14__** %7, align 8
  %83 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  store i32 %84, i32* %13, align 4
  br label %89

85:                                               ; preds = %75
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %87 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %86, i32 0, i32 0
  store i32 1, i32* %87, align 8
  %88 = load i32, i32* %13, align 4
  store i32 %88, i32* %6, align 4
  br label %94

89:                                               ; preds = %81
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = call i32 @WebPMemoryWriterClear(i32* %91)
  %93 = load i32, i32* %13, align 4
  store i32 %93, i32* %6, align 4
  br label %94

94:                                               ; preds = %89, %85
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @assert(i32) #2

declare dso_local i32 @memset(%struct.TYPE_17__*, i32, i32) #2

declare dso_local i32 @WebPMemoryWriterInit(i32*) #2

declare dso_local i32 @EncodeFrame(%struct.TYPE_15__*, %struct.TYPE_14__*, i32*) #2

declare dso_local i32 @WebPMemoryWriterClear(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
