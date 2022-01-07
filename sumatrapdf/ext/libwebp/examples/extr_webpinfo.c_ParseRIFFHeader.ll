; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseRIFFHeader.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ParseRIFFHeader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32 }
%struct.TYPE_9__ = type { i64 }

@RIFF_HEADER_SIZE = common dso_local global i64 0, align 8
@CHUNK_HEADER_SIZE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [50 x i8] c"Truncated data detected when parsing RIFF header.\00", align 1
@WEBP_INFO_TRUNCATED_DATA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c"RIFF\00", align 1
@CHUNK_SIZE_BYTES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"WEBP\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"Corrupted RIFF header.\00", align 1
@WEBP_INFO_PARSE_ERROR = common dso_local global i32 0, align 4
@TAG_SIZE = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [24 x i8] c"RIFF size is too small.\00", align 1
@MAX_CHUNK_PAYLOAD = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [25 x i8] c"RIFF size is over limit.\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"RIFF HEADER:\0A\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"  File size: %6d\0A\00", align 1
@.str.8 = private unnamed_addr constant [41 x i8] c"RIFF size is smaller than the file size.\00", align 1
@.str.9 = private unnamed_addr constant [51 x i8] c"Truncated data detected when parsing RIFF payload.\00", align 1
@WEBP_INFO_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, %struct.TYPE_9__*)* @ParseRIFFHeader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ParseRIFFHeader(%struct.TYPE_8__* %0, %struct.TYPE_9__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %4, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %5, align 8
  %8 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %9 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %10 = add i64 %8, %9
  store i64 %10, i64* %6, align 8
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = call i64 @MemDataSize(%struct.TYPE_9__* %11)
  %13 = load i64, i64* %6, align 8
  %14 = icmp ult i64 %12, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  %17 = load i32, i32* @WEBP_INFO_TRUNCATED_DATA, align 4
  store i32 %17, i32* %3, align 4
  br label %93

18:                                               ; preds = %2
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = call i64 @GetBuffer(%struct.TYPE_9__* %19)
  %21 = load i32, i32* @CHUNK_SIZE_BYTES, align 4
  %22 = call i64 @memcmp(i64 %20, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %32, label %24

24:                                               ; preds = %18
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %26 = call i64 @GetBuffer(%struct.TYPE_9__* %25)
  %27 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %28 = add i64 %26, %27
  %29 = load i32, i32* @CHUNK_SIZE_BYTES, align 4
  %30 = call i64 @memcmp(i64 %28, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24, %18
  %33 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %34 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %34, i32* %3, align 4
  br label %93

35:                                               ; preds = %24
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %37 = call i64 @GetBuffer(%struct.TYPE_9__* %36)
  %38 = load i64, i64* @TAG_SIZE, align 8
  %39 = add nsw i64 %37, %38
  %40 = call i64 @GetLE32(i64 %39)
  store i64 %40, i64* %7, align 8
  %41 = load i64, i64* %7, align 8
  %42 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %43 = icmp ult i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %35
  %45 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.4, i64 0, i64 0))
  %46 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %46, i32* %3, align 4
  br label %93

47:                                               ; preds = %35
  %48 = load i64, i64* %7, align 8
  %49 = load i64, i64* @MAX_CHUNK_PAYLOAD, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0))
  %53 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %53, i32* %3, align 4
  br label %93

54:                                               ; preds = %47
  %55 = load i64, i64* @CHUNK_HEADER_SIZE, align 8
  %56 = load i64, i64* %7, align 8
  %57 = add i64 %56, %55
  store i64 %57, i64* %7, align 8
  %58 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %59 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %67, label %62

62:                                               ; preds = %54
  %63 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %64 = load i64, i64* %7, align 8
  %65 = trunc i64 %64 to i32
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %62, %54
  %68 = load i64, i64* %7, align 8
  %69 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %70 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ult i64 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = call i32 @LOG_WARN(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.8, i64 0, i64 0))
  %75 = load i64, i64* %7, align 8
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %76, i32 0, i32 0
  store i64 %75, i64* %77, align 8
  br label %88

78:                                               ; preds = %67
  %79 = load i64, i64* %7, align 8
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp ugt i64 %79, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.9, i64 0, i64 0))
  %86 = load i32, i32* @WEBP_INFO_TRUNCATED_DATA, align 4
  store i32 %86, i32* %3, align 4
  br label %93

87:                                               ; preds = %78
  br label %88

88:                                               ; preds = %87, %73
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %90 = load i64, i64* @RIFF_HEADER_SIZE, align 8
  %91 = call i32 @Skip(%struct.TYPE_9__* %89, i64 %90)
  %92 = load i32, i32* @WEBP_INFO_OK, align 4
  store i32 %92, i32* %3, align 4
  br label %93

93:                                               ; preds = %88, %84, %51, %44, %32, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i64 @MemDataSize(%struct.TYPE_9__*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

declare dso_local i64 @memcmp(i64, i8*, i32) #1

declare dso_local i64 @GetBuffer(%struct.TYPE_9__*) #1

declare dso_local i64 @GetLE32(i64) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @LOG_WARN(i8*) #1

declare dso_local i32 @Skip(%struct.TYPE_9__*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
