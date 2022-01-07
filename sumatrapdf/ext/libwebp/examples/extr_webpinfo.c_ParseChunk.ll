; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i64 }
%struct.TYPE_11__ = type { i64, i64, i64, i32 }

@CHUNK_HEADER_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"Truncated data detected when parsing chunk header.\00", align 1
@WEBP_INFO_TRUNCATED_DATA = common dso_local global i32 0, align 4
@MAX_CHUNK_PAYLOAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [37 x i8] c"Size of chunk payload is over limit.\00", align 1
@WEBP_INFO_INVALID_PARAM = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"Truncated data detected when parsing chunk payload.\00", align 1
@CHUNK_TYPES = common dso_local global i32 0, align 4
@kWebPChunkTags = common dso_local global i32* null, align 8
@TAG_SIZE = common dso_local global i32 0, align 4
@CHUNK_ANMF = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"ANMF chunk size should always be even.\00", align 1
@WEBP_INFO_PARSE_ERROR = common dso_local global i32 0, align 4
@ANMF_CHUNK_SIZE = common dso_local global i32 0, align 4
@WEBP_INFO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_10__*, %struct.TYPE_11__*)* @ParseChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseChunk(i32* %0, %struct.TYPE_10__* %1, %struct.TYPE_11__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_10__*, align 8
  %7 = alloca %struct.TYPE_11__*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_10__* %1, %struct.TYPE_10__** %6, align 8
  store %struct.TYPE_11__* %2, %struct.TYPE_11__** %7, align 8
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %15 = call i32 @memset(%struct.TYPE_11__* %14, i32 0, i32 32)
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %17 = call i32 @MemDataSize(%struct.TYPE_10__* %16)
  %18 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0))
  %22 = load i32, i32* @WEBP_INFO_TRUNCATED_DATA, align 4
  store i32 %22, i32* %4, align 4
  br label %109

23:                                               ; preds = %3
  %24 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %8, align 8
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %28 = call i32 @ReadMemBufLE32(%struct.TYPE_10__* %27)
  store i32 %28, i32* %9, align 4
  %29 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %30 = call i32 @ReadMemBufLE32(%struct.TYPE_10__* %29)
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* %10, align 4
  %33 = and i32 %32, 1
  %34 = add nsw i32 %31, %33
  store i32 %34, i32* %11, align 4
  %35 = load i32, i32* @CHUNK_HEADER_SIZE, align 4
  %36 = load i32, i32* %11, align 4
  %37 = add nsw i32 %35, %36
  %38 = sext i32 %37 to i64
  store i64 %38, i64* %12, align 8
  %39 = load i32, i32* %10, align 4
  %40 = load i32, i32* @MAX_CHUNK_PAYLOAD, align 4
  %41 = icmp sgt i32 %39, %40
  br i1 %41, label %42, label %45

42:                                               ; preds = %23
  %43 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %44 = load i32, i32* @WEBP_INFO_INVALID_PARAM, align 4
  store i32 %44, i32* %4, align 4
  br label %109

45:                                               ; preds = %23
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %48 = call i32 @MemDataSize(%struct.TYPE_10__* %47)
  %49 = icmp sgt i32 %46, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %45
  %51 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0))
  %52 = load i32, i32* @WEBP_INFO_TRUNCATED_DATA, align 4
  store i32 %52, i32* %4, align 4
  br label %109

53:                                               ; preds = %45
  store i32 0, i32* %13, align 4
  br label %54

54:                                               ; preds = %69, %53
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @CHUNK_TYPES, align 4
  %57 = icmp slt i32 %55, %56
  br i1 %57, label %58, label %72

58:                                               ; preds = %54
  %59 = load i32*, i32** @kWebPChunkTags, align 8
  %60 = load i32, i32* %13, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @TAG_SIZE, align 4
  %65 = call i32 @memcmp(i32 %63, i32* %9, i32 %64)
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %58
  br label %72

68:                                               ; preds = %58
  br label %69

69:                                               ; preds = %68
  %70 = load i32, i32* %13, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %13, align 4
  br label %54

72:                                               ; preds = %67, %54
  %73 = load i64, i64* %8, align 8
  %74 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  store i64 %73, i64* %75, align 8
  %76 = load i64, i64* %12, align 8
  %77 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %77, i32 0, i32 1
  store i64 %76, i64* %78, align 8
  %79 = load i32, i32* %13, align 4
  %80 = sext i32 %79 to i64
  %81 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %82 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %81, i32 0, i32 2
  store i64 %80, i64* %82, align 8
  %83 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %84 = call i32 @GetBuffer(%struct.TYPE_10__* %83)
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 3
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %7, align 8
  %88 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load i64, i64* @CHUNK_ANMF, align 8
  %91 = icmp eq i64 %89, %90
  br i1 %91, label %92, label %103

92:                                               ; preds = %72
  %93 = load i32, i32* %10, align 4
  %94 = load i32, i32* %11, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %99

96:                                               ; preds = %92
  %97 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %98 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %98, i32* %4, align 4
  br label %109

99:                                               ; preds = %92
  %100 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %101 = load i32, i32* @ANMF_CHUNK_SIZE, align 4
  %102 = call i32 @Skip(%struct.TYPE_10__* %100, i32 %101)
  br label %107

103:                                              ; preds = %72
  %104 = load %struct.TYPE_10__*, %struct.TYPE_10__** %6, align 8
  %105 = load i32, i32* %11, align 4
  %106 = call i32 @Skip(%struct.TYPE_10__* %104, i32 %105)
  br label %107

107:                                              ; preds = %103, %99
  %108 = load i32, i32* @WEBP_INFO_OK, align 4
  store i32 %108, i32* %4, align 4
  br label %109

109:                                              ; preds = %107, %96, %50, %42, %20
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local i32 @memset(%struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @MemDataSize(%struct.TYPE_10__*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i32 @ReadMemBufLE32(%struct.TYPE_10__*) #1

declare dso_local i32 @memcmp(i32, i32*, i32) #1

declare dso_local i32 @GetBuffer(%struct.TYPE_10__*) #1

declare dso_local i32 @Skip(%struct.TYPE_10__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
