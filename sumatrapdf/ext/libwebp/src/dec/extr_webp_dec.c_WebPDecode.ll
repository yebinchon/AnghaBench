; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_WebPDecode.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/src/dec/extr_webp_dec.c_WebPDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_17__, %struct.TYPE_14__, i32 }
%struct.TYPE_17__ = type { i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_16__ = type { %struct.TYPE_17__*, i32* }

@VP8_STATUS_INVALID_PARAM = common dso_local global i64 0, align 8
@VP8_STATUS_OK = common dso_local global i64 0, align 8
@VP8_STATUS_NOT_ENOUGH_DATA = common dso_local global i64 0, align 8
@VP8_STATUS_BITSTREAM_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @WebPDecode(i32* %0, i64 %1, %struct.TYPE_15__* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  %8 = alloca %struct.TYPE_16__, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.TYPE_17__, align 4
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.TYPE_15__* %2, %struct.TYPE_15__** %7, align 8
  %11 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %12 = icmp eq %struct.TYPE_15__* %11, null
  br i1 %12, label %13, label %15

13:                                               ; preds = %3
  %14 = load i64, i64* @VP8_STATUS_INVALID_PARAM, align 8
  store i64 %14, i64* %4, align 8
  br label %82

15:                                               ; preds = %3
  %16 = load i32*, i32** %5, align 8
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = call i64 @GetFeatures(i32* %16, i64 %17, %struct.TYPE_14__* %19)
  store i64 %20, i64* %9, align 8
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @VP8_STATUS_OK, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %32

24:                                               ; preds = %15
  %25 = load i64, i64* %9, align 8
  %26 = load i64, i64* @VP8_STATUS_NOT_ENOUGH_DATA, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %24
  %29 = load i64, i64* @VP8_STATUS_BITSTREAM_ERROR, align 8
  store i64 %29, i64* %4, align 8
  br label %82

30:                                               ; preds = %24
  %31 = load i64, i64* %9, align 8
  store i64 %31, i64* %4, align 8
  br label %82

32:                                               ; preds = %15
  %33 = call i32 @WebPResetDecParams(%struct.TYPE_16__* %8)
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 1
  store i32* %35, i32** %36, align 8
  %37 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store %struct.TYPE_17__* %38, %struct.TYPE_17__** %39, align 8
  %40 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %40, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %43 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %42, i32 0, i32 1
  %44 = call i64 @WebPAvoidSlowMemory(%struct.TYPE_17__* %41, %struct.TYPE_14__* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %76

46:                                               ; preds = %32
  %47 = call i32 @WebPInitDecBuffer(%struct.TYPE_17__* %10)
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 2
  store i32 %51, i32* %52, align 4
  %53 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %54 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 1
  store i32 %56, i32* %57, align 4
  %58 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %58, i32 0, i32 1
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 0
  store i32 %61, i32* %62, align 4
  %63 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %8, i32 0, i32 0
  store %struct.TYPE_17__* %10, %struct.TYPE_17__** %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load i64, i64* %6, align 8
  %66 = call i64 @DecodeInto(i32* %64, i64 %65, %struct.TYPE_16__* %8)
  store i64 %66, i64* %9, align 8
  %67 = load i64, i64* %9, align 8
  %68 = load i64, i64* @VP8_STATUS_OK, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %46
  %71 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  %72 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %71, i32 0, i32 0
  %73 = call i64 @WebPCopyDecBufferPixels(%struct.TYPE_17__* %10, %struct.TYPE_17__* %72)
  store i64 %73, i64* %9, align 8
  br label %74

74:                                               ; preds = %70, %46
  %75 = call i32 @WebPFreeDecBuffer(%struct.TYPE_17__* %10)
  br label %80

76:                                               ; preds = %32
  %77 = load i32*, i32** %5, align 8
  %78 = load i64, i64* %6, align 8
  %79 = call i64 @DecodeInto(i32* %77, i64 %78, %struct.TYPE_16__* %8)
  store i64 %79, i64* %9, align 8
  br label %80

80:                                               ; preds = %76, %74
  %81 = load i64, i64* %9, align 8
  store i64 %81, i64* %4, align 8
  br label %82

82:                                               ; preds = %80, %30, %28, %13
  %83 = load i64, i64* %4, align 8
  ret i64 %83
}

declare dso_local i64 @GetFeatures(i32*, i64, %struct.TYPE_14__*) #1

declare dso_local i32 @WebPResetDecParams(%struct.TYPE_16__*) #1

declare dso_local i64 @WebPAvoidSlowMemory(%struct.TYPE_17__*, %struct.TYPE_14__*) #1

declare dso_local i32 @WebPInitDecBuffer(%struct.TYPE_17__*) #1

declare dso_local i64 @DecodeInto(i32*, i64, %struct.TYPE_16__*) #1

declare dso_local i64 @WebPCopyDecBufferPixels(%struct.TYPE_17__*, %struct.TYPE_17__*) #1

declare dso_local i32 @WebPFreeDecBuffer(%struct.TYPE_17__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
