; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessANMFChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessANMFChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32*, i64 }
%struct.TYPE_5__ = type { i32, i32, i32, i64, i64, i64, i64, i64, i32, i32* }

@.str = private unnamed_addr constant [47 x i8] c"ANMF chunk detected within another ANMF chunk.\00", align 1
@WEBP_INFO_PARSE_ERROR = common dso_local global i32 0, align 4
@CHUNK_ANIM = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [39 x i8] c"ANMF chunk detected before ANIM chunk.\00", align 1
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@ANMF_CHUNK_SIZE = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [49 x i8] c"Truncated data detected when parsing ANMF chunk.\00", align 1
@WEBP_INFO_TRUNCATED_DATA = common dso_local global i32 0, align 4
@CHUNK_ANMF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [97 x i8] c"  Offset_X: %d\0A  Offset_Y: %d\0A  Width: %d\0A  Height: %d\0A  Duration: %d\0A  Dispose: %d\0A  Blend: %d\0A\00", align 1
@MAX_DURATION = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [42 x i8] c"Invalid duration parameter in ANMF chunk.\00", align 1
@WEBP_INFO_INVALID_PARAM = common dso_local global i32 0, align 4
@MAX_POSITION_OFFSET = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [41 x i8] c"Invalid offset parameters in ANMF chunk.\00", align 1
@.str.6 = private unnamed_addr constant [36 x i8] c"Frame exceeds canvas in ANMF chunk.\00", align 1
@WEBP_INFO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, %struct.TYPE_5__*)* @ProcessANMFChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessANMFChunk(%struct.TYPE_6__* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  store i32* %17, i32** %6, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %19 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %2
  %23 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %24, i32* %3, align 4
  br label %148

25:                                               ; preds = %2
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 9
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @CHUNK_ANIM, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %25
  %34 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0))
  %35 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %35, i32* %3, align 4
  br label %148

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %41 = load i64, i64* @ANMF_CHUNK_SIZE, align 8
  %42 = add nsw i64 %40, %41
  %43 = icmp sle i64 %39, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %36
  %45 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0))
  %46 = load i32, i32* @WEBP_INFO_TRUNCATED_DATA, align 4
  store i32 %46, i32* %3, align 4
  br label %148

47:                                               ; preds = %36
  %48 = call i32 @ReadLE24(i32** %6)
  %49 = mul nsw i32 2, %48
  store i32 %49, i32* %7, align 4
  %50 = call i32 @ReadLE24(i32** %6)
  %51 = mul nsw i32 2, %50
  store i32 %51, i32* %8, align 4
  %52 = call i32 @ReadLE24(i32** %6)
  %53 = add nsw i32 1, %52
  store i32 %53, i32* %9, align 4
  %54 = call i32 @ReadLE24(i32** %6)
  %55 = add nsw i32 1, %54
  store i32 %55, i32* %10, align 4
  %56 = call i32 @ReadLE24(i32** %6)
  store i32 %56, i32* %11, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* %57, align 4
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = and i32 %59, 1
  store i32 %60, i32* %13, align 4
  %61 = load i32, i32* %14, align 4
  %62 = ashr i32 %61, 1
  %63 = and i32 %62, 1
  store i32 %63, i32* %12, align 4
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i32 0, i32 9
  %66 = load i32*, i32** %65, align 8
  %67 = load i64, i64* @CHUNK_ANMF, align 8
  %68 = getelementptr inbounds i32, i32* %66, i64 %67
  %69 = load i32, i32* %68, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 4
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i32 0, i32 8
  %73 = load i32, i32* %72, align 8
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %84, label %75

75:                                               ; preds = %47
  %76 = load i32, i32* %7, align 4
  %77 = load i32, i32* %8, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load i32, i32* %10, align 4
  %80 = load i32, i32* %11, align 4
  %81 = load i32, i32* %13, align 4
  %82 = load i32, i32* %12, align 4
  %83 = call i32 @printf(i8* getelementptr inbounds ([97 x i8], [97 x i8]* @.str.3, i64 0, i64 0), i32 %76, i32 %77, i32 %78, i32 %79, i32 %80, i32 %81, i32 %82)
  br label %84

84:                                               ; preds = %75, %47
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @MAX_DURATION, align 4
  %87 = icmp sgt i32 %85, %86
  br i1 %87, label %88, label %91

88:                                               ; preds = %84
  %89 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.4, i64 0, i64 0))
  %90 = load i32, i32* @WEBP_INFO_INVALID_PARAM, align 4
  store i32 %90, i32* %3, align 4
  br label %148

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = load i32, i32* @MAX_POSITION_OFFSET, align 4
  %94 = icmp sgt i32 %92, %93
  br i1 %94, label %99, label %95

95:                                               ; preds = %91
  %96 = load i32, i32* %8, align 4
  %97 = load i32, i32* @MAX_POSITION_OFFSET, align 4
  %98 = icmp sgt i32 %96, %97
  br i1 %98, label %99, label %102

99:                                               ; preds = %95, %91
  %100 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.5, i64 0, i64 0))
  %101 = load i32, i32* @WEBP_INFO_INVALID_PARAM, align 4
  store i32 %101, i32* %3, align 4
  br label %148

102:                                              ; preds = %95
  %103 = load i32, i32* %7, align 4
  %104 = sext i32 %103 to i64
  %105 = load i32, i32* %9, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %108, i32 0, i32 7
  %110 = load i64, i64* %109, align 8
  %111 = icmp sgt i64 %107, %110
  br i1 %111, label %122, label %112

112:                                              ; preds = %102
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = load i32, i32* %10, align 4
  %116 = sext i32 %115 to i64
  %117 = add nsw i64 %114, %116
  %118 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp sgt i64 %117, %120
  br i1 %121, label %122, label %125

122:                                              ; preds = %112, %102
  %123 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0))
  %124 = load i32, i32* @WEBP_INFO_INVALID_PARAM, align 4
  store i32 %124, i32* %3, align 4
  br label %148

125:                                              ; preds = %112
  %126 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %127 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %126, i32 0, i32 0
  store i32 1, i32* %127, align 8
  %128 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %128, i32 0, i32 5
  store i64 0, i64* %129, align 8
  %130 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %130, i32 0, i32 4
  store i64 0, i64* %131, align 8
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %134 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %133, i32 0, i32 1
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %10, align 4
  %136 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %137 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %136, i32 0, i32 2
  store i32 %135, i32* %137, align 8
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %142 = sub nsw i64 %140, %141
  %143 = load i64, i64* @ANMF_CHUNK_SIZE, align 8
  %144 = sub nsw i64 %142, %143
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %146 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %145, i32 0, i32 3
  store i64 %144, i64* %146, align 8
  %147 = load i32, i32* @WEBP_INFO_OK, align 4
  store i32 %147, i32* %3, align 4
  br label %148

148:                                              ; preds = %125, %122, %99, %88, %44, %33, %22
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @ReadLE24(i32**) #1

declare dso_local i32 @printf(i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
