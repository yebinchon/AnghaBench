; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessChunk.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/libwebp/examples/extr_webpinfo.c_ProcessChunk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, i64, i64 }
%struct.TYPE_17__ = type { i64, i64, i32, i32*, i32 }

@WEBP_INFO_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"Unknown chunk at offset %6d, length %6d\00", align 1
@kWebPChunkTags = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [42 x i8] c"Chunk %c%c%c%c at offset %6d, length %6d\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"No VP8/VP8L chunk detected in an ANMF chunk.\00", align 1
@WEBP_INFO_PARSE_ERROR = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [49 x i8] c"Truncated data detected when parsing ANMF chunk.\00", align 1
@WEBP_INFO_TRUNCATED_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_18__*, %struct.TYPE_17__*)* @ProcessChunk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProcessChunk(%struct.TYPE_18__* %0, %struct.TYPE_17__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_18__*, align 8
  %5 = alloca %struct.TYPE_17__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [50 x i8], align 16
  %9 = alloca i8*, align 8
  store %struct.TYPE_18__* %0, %struct.TYPE_18__** %4, align 8
  store %struct.TYPE_17__* %1, %struct.TYPE_17__** %5, align 8
  %10 = load i32, i32* @WEBP_INFO_OK, align 4
  store i32 %10, i32* %6, align 4
  %11 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  store i32 %13, i32* %7, align 4
  %14 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 132
  br i1 %17, label %18, label %31

18:                                               ; preds = %2
  %19 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %20 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = trunc i64 %22 to i32
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = trunc i64 %26 to i32
  %28 = call i32 @snprintf(i8* %19, i32 50, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %23, i32 %27)
  %29 = getelementptr inbounds [50 x i8], [50 x i8]* %8, i64 0, i64 0
  %30 = call i32 @LOG_WARN(i8* %29)
  br label %66

31:                                               ; preds = %2
  %32 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %33 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %65, label %36

36:                                               ; preds = %31
  %37 = load i8**, i8*** @kWebPChunkTags, align 8
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i8*, i8** %37, i64 %41
  %43 = load i8*, i8** %42, align 8
  store i8* %43, i8** %9, align 8
  %44 = load i8*, i8** %9, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 0
  %46 = load i8, i8* %45, align 1
  %47 = load i8*, i8** %9, align 8
  %48 = getelementptr inbounds i8, i8* %47, i64 1
  %49 = load i8, i8* %48, align 1
  %50 = load i8*, i8** %9, align 8
  %51 = getelementptr inbounds i8, i8* %50, i64 2
  %52 = load i8, i8* %51, align 1
  %53 = load i8*, i8** %9, align 8
  %54 = getelementptr inbounds i8, i8* %53, i64 3
  %55 = load i8, i8* %54, align 1
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = trunc i64 %58 to i32
  %60 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %61 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = trunc i64 %62 to i32
  %64 = call i32 @printf(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i8 signext %46, i8 signext %49, i8 signext %52, i8 signext %55, i32 %59, i32 %63)
  br label %65

65:                                               ; preds = %36, %31
  br label %66

66:                                               ; preds = %65, %18
  %67 = load i32, i32* %7, align 4
  switch i32 %67, label %102 [
    i32 131, label %68
    i32 130, label %68
    i32 129, label %72
    i32 137, label %76
    i32 136, label %80
    i32 135, label %84
    i32 133, label %88
    i32 134, label %92
    i32 128, label %92
    i32 132, label %101
  ]

68:                                               ; preds = %66, %66
  %69 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %70 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %71 = call i32 @ProcessImageChunk(%struct.TYPE_18__* %69, %struct.TYPE_17__* %70)
  store i32 %71, i32* %6, align 4
  br label %103

72:                                               ; preds = %66
  %73 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %74 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %75 = call i32 @ProcessVP8XChunk(%struct.TYPE_18__* %73, %struct.TYPE_17__* %74)
  store i32 %75, i32* %6, align 4
  br label %103

76:                                               ; preds = %66
  %77 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %78 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %79 = call i32 @ProcessALPHChunk(%struct.TYPE_18__* %77, %struct.TYPE_17__* %78)
  store i32 %79, i32* %6, align 4
  br label %103

80:                                               ; preds = %66
  %81 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %82 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %83 = call i32 @ProcessANIMChunk(%struct.TYPE_18__* %81, %struct.TYPE_17__* %82)
  store i32 %83, i32* %6, align 4
  br label %103

84:                                               ; preds = %66
  %85 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %86 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %87 = call i32 @ProcessANMFChunk(%struct.TYPE_18__* %85, %struct.TYPE_17__* %86)
  store i32 %87, i32* %6, align 4
  br label %103

88:                                               ; preds = %66
  %89 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %90 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %91 = call i32 @ProcessICCPChunk(%struct.TYPE_18__* %89, %struct.TYPE_17__* %90)
  store i32 %91, i32* %6, align 4
  br label %103

92:                                               ; preds = %66, %66
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 3
  %95 = load i32*, i32** %94, align 8
  %96 = load i32, i32* %7, align 4
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %95, i64 %97
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, 1
  store i32 %100, i32* %98, align 4
  br label %103

101:                                              ; preds = %66
  br label %102

102:                                              ; preds = %66, %101
  br label %103

103:                                              ; preds = %102, %92, %88, %84, %80, %76, %72, %68
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %104, i32 0, i32 1
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %151

108:                                              ; preds = %103
  %109 = load i32, i32* %7, align 4
  %110 = icmp ne i32 %109, 135
  br i1 %110, label %111, label %151

111:                                              ; preds = %108
  %112 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %112, i32 0, i32 0
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %116 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = icmp eq i64 %114, %117
  br i1 %118, label %119, label %130

119:                                              ; preds = %111
  %120 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 8
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %126 = load i32, i32* @WEBP_INFO_PARSE_ERROR, align 4
  store i32 %126, i32* %3, align 4
  br label %153

127:                                              ; preds = %119
  %128 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %129 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %128, i32 0, i32 1
  store i64 0, i64* %129, align 8
  br label %150

130:                                              ; preds = %111
  %131 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %132 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 1
  %136 = load i64, i64* %135, align 8
  %137 = icmp sgt i64 %133, %136
  br i1 %137, label %138, label %146

138:                                              ; preds = %130
  %139 = load %struct.TYPE_18__*, %struct.TYPE_18__** %4, align 8
  %140 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %139, i32 0, i32 1
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 0
  %144 = load i64, i64* %143, align 8
  %145 = sub nsw i64 %144, %141
  store i64 %145, i64* %143, align 8
  br label %149

146:                                              ; preds = %130
  %147 = call i32 @LOG_ERROR(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.3, i64 0, i64 0))
  %148 = load i32, i32* @WEBP_INFO_TRUNCATED_DATA, align 4
  store i32 %148, i32* %3, align 4
  br label %153

149:                                              ; preds = %138
  br label %150

150:                                              ; preds = %149, %127
  br label %151

151:                                              ; preds = %150, %108, %103
  %152 = load i32, i32* %6, align 4
  store i32 %152, i32* %3, align 4
  br label %153

153:                                              ; preds = %151, %146, %124
  %154 = load i32, i32* %3, align 4
  ret i32 %154
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @LOG_WARN(i8*) #1

declare dso_local i32 @printf(i8*, i8 signext, i8 signext, i8 signext, i8 signext, i32, i32) #1

declare dso_local i32 @ProcessImageChunk(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcessVP8XChunk(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcessALPHChunk(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcessANIMChunk(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcessANMFChunk(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @ProcessICCPChunk(%struct.TYPE_18__*, %struct.TYPE_17__*) #1

declare dso_local i32 @LOG_ERROR(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
