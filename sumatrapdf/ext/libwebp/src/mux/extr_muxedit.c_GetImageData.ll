; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_GetImageData.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/mux/extr_muxedit.c_GetImageData.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i64, i32 }
%struct.TYPE_15__ = type { %struct.TYPE_14__*, %struct.TYPE_13__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__ }
%struct.TYPE_13__ = type { %struct.TYPE_17__ }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }

@TAG_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@WEBP_MUX_BAD_DATA = common dso_local global i32 0, align 4
@WEBP_MUX_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_17__*, %struct.TYPE_17__*, %struct.TYPE_17__*, i32*)* @GetImageData to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetImageData(%struct.TYPE_17__* %0, %struct.TYPE_17__* %1, %struct.TYPE_17__* %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_17__*, align 8
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_17__*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.TYPE_15__*, align 8
  %11 = alloca %struct.TYPE_16__*, align 8
  store %struct.TYPE_17__* %0, %struct.TYPE_17__** %6, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %7, align 8
  store %struct.TYPE_17__* %2, %struct.TYPE_17__** %8, align 8
  store i32* %3, i32** %9, align 8
  %12 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %13 = call i32 @WebPDataInit(%struct.TYPE_17__* %12)
  %14 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %15 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TAG_SIZE, align 8
  %18 = icmp slt i64 %16, %17
  br i1 %18, label %26, label %19

19:                                               ; preds = %4
  %20 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %21 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @TAG_SIZE, align 8
  %24 = call i64 @memcmp(i32 %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %19, %4
  %27 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %28 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %29 = bitcast %struct.TYPE_17__* %27 to i8*
  %30 = bitcast %struct.TYPE_17__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 16, i1 false)
  br label %75

31:                                               ; preds = %19
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %6, align 8
  %33 = call %struct.TYPE_16__* @WebPMuxCreate(%struct.TYPE_17__* %32, i32 0)
  store %struct.TYPE_16__* %33, %struct.TYPE_16__** %11, align 8
  %34 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %35 = icmp eq %struct.TYPE_16__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31
  %37 = load i32, i32* @WEBP_MUX_BAD_DATA, align 4
  store i32 %37, i32* %5, align 4
  br label %85

38:                                               ; preds = %31
  %39 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %39, i32 0, i32 0
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %40, align 8
  store %struct.TYPE_15__* %41, %struct.TYPE_15__** %10, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %43 = icmp ne %struct.TYPE_15__* %42, null
  br i1 %43, label %44, label %49

44:                                               ; preds = %38
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %46, align 8
  %48 = icmp ne %struct.TYPE_13__* %47, null
  br label %49

49:                                               ; preds = %44, %38
  %50 = phi i1 [ false, %38 ], [ %48, %44 ]
  %51 = zext i1 %50 to i32
  %52 = call i32 @assert(i32 %51)
  %53 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %55 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %54, i32 0, i32 1
  %56 = load %struct.TYPE_13__*, %struct.TYPE_13__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %56, i32 0, i32 0
  %58 = bitcast %struct.TYPE_17__* %53 to i8*
  %59 = bitcast %struct.TYPE_17__* %57 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %58, i8* align 8 %59, i64 16, i1 false)
  %60 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_14__*, %struct.TYPE_14__** %61, align 8
  %63 = icmp ne %struct.TYPE_14__* %62, null
  br i1 %63, label %64, label %72

64:                                               ; preds = %49
  %65 = load %struct.TYPE_17__*, %struct.TYPE_17__** %8, align 8
  %66 = load %struct.TYPE_15__*, %struct.TYPE_15__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %66, i32 0, i32 0
  %68 = load %struct.TYPE_14__*, %struct.TYPE_14__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %68, i32 0, i32 0
  %70 = bitcast %struct.TYPE_17__* %65 to i8*
  %71 = bitcast %struct.TYPE_17__* %69 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %70, i8* align 8 %71, i64 16, i1 false)
  br label %72

72:                                               ; preds = %64, %49
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %11, align 8
  %74 = call i32 @WebPMuxDelete(%struct.TYPE_16__* %73)
  br label %75

75:                                               ; preds = %72, %26
  %76 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %77 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @VP8LCheckSignature(i32 %78, i64 %81)
  %83 = load i32*, i32** %9, align 8
  store i32 %82, i32* %83, align 4
  %84 = load i32, i32* @WEBP_MUX_OK, align 4
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %75, %36
  %86 = load i32, i32* %5, align 4
  ret i32 %86
}

declare dso_local i32 @WebPDataInit(%struct.TYPE_17__*) #1

declare dso_local i64 @memcmp(i32, i8*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.TYPE_16__* @WebPMuxCreate(%struct.TYPE_17__*, i32) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @WebPMuxDelete(%struct.TYPE_16__*) #1

declare dso_local i32 @VP8LCheckSignature(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
