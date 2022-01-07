; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_GetOutput.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_GetOutput.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_13__ = type { %struct.TYPE_16__ }
%struct.TYPE_16__ = type { i32* (i32)*, i32* (i32, i32, i64*)* }
%struct.TYPE_22__ = type { i64, i32, i64, %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32 }
%struct.TYPE_21__ = type { i32, %struct.TYPE_19__, i32, %struct.TYPE_14__ }
%struct.TYPE_19__ = type { %struct.TYPE_18__, %struct.TYPE_17__ }
%struct.TYPE_18__ = type { i8*, i8*, i8* }
%struct.TYPE_17__ = type { i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.TYPE_14__ = type { i32, i32, i32*, i32 }

@MC_OUT_TYPE_BUF = common dso_local global i32 0, align 4
@AMEDIACODEC_BUFFER_FLAG_END_OF_STREAM = common dso_local global i32 0, align 4
@syms = common dso_local global %struct.TYPE_13__ zeroinitializer, align 8
@.str = private unnamed_addr constant [35 x i8] c"AMediaCodec.getOutputBuffer failed\00", align 1
@MC_API_ERROR = common dso_local global i32 0, align 4
@MC_API_INFO_OUTPUT_FORMAT_CHANGED = common dso_local global i32 0, align 4
@MC_OUT_TYPE_CONF = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.3 = private unnamed_addr constant [7 x i8] c"stride\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"slice-height\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"color-format\00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"crop-left\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"crop-top\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"crop-right\00", align 1
@.str.9 = private unnamed_addr constant [12 x i8] c"crop-bottom\00", align 1
@.str.10 = private unnamed_addr constant [14 x i8] c"channel-count\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"channel-mask\00", align 1
@.str.12 = private unnamed_addr constant [12 x i8] c"sample-rate\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_22__*, i32, %struct.TYPE_21__*)* @GetOutput to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @GetOutput(%struct.TYPE_22__* %0, i32 %1, %struct.TYPE_21__* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_22__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca %struct.TYPE_20__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  store %struct.TYPE_22__* %0, %struct.TYPE_22__** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.TYPE_21__* %2, %struct.TYPE_21__** %7, align 8
  %12 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %12, i32 0, i32 3
  %14 = load %struct.TYPE_20__*, %struct.TYPE_20__** %13, align 8
  store %struct.TYPE_20__* %14, %struct.TYPE_20__** %8, align 8
  %15 = load i32, i32* %6, align 4
  %16 = icmp sge i32 %15, 0
  br i1 %16, label %17, label %90

17:                                               ; preds = %3
  %18 = load i32, i32* @MC_OUT_TYPE_BUF, align 4
  %19 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %20 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %19, i32 0, i32 2
  store i32 %18, i32* %20, align 8
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %22, i32 0, i32 3
  %24 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 8
  %25 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %26 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %25, i32 0, i32 1
  %27 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %30 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %29, i32 0, i32 3
  %31 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %30, i32 0, i32 3
  store i32 %28, i32* %31, align 8
  %32 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @AMEDIACODEC_BUFFER_FLAG_END_OF_STREAM, align 4
  %37 = and i32 %35, %36
  %38 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %39 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %17
  %45 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %45, i32 0, i32 3
  %47 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %46, i32 0, i32 2
  store i32* null, i32** %47, align 8
  %48 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %49, i32 0, i32 1
  store i32 0, i32* %50, align 4
  br label %89

51:                                               ; preds = %17
  %52 = load i32* (i32, i32, i64*)*, i32* (i32, i32, i64*)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @syms, i32 0, i32 0, i32 1), align 8
  %53 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %54 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load i32, i32* %6, align 4
  %57 = call i32* %52(i32 %55, i32 %56, i64* %9)
  store i32* %57, i32** %10, align 8
  %58 = load i32*, i32** %10, align 8
  %59 = icmp ne i32* %58, null
  br i1 %59, label %71, label %60

60:                                               ; preds = %51
  %61 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %62 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %71, label %65

65:                                               ; preds = %60
  %66 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %67 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @msg_Err(i32 %68, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %70 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %70, i32* %4, align 4
  br label %187

71:                                               ; preds = %60, %51
  %72 = load i32*, i32** %10, align 8
  %73 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %74 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, i32* %72, i64 %77
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %79, i32 0, i32 3
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 2
  store i32* %78, i32** %81, align 8
  %82 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %83 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %82, i32 0, i32 1
  %84 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %87 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  br label %89

89:                                               ; preds = %71, %44
  store i32 1, i32* %4, align 4
  br label %187

90:                                               ; preds = %3
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* @MC_API_INFO_OUTPUT_FORMAT_CHANGED, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %185

94:                                               ; preds = %90
  %95 = load i32* (i32)*, i32* (i32)** getelementptr inbounds (%struct.TYPE_13__, %struct.TYPE_13__* @syms, i32 0, i32 0, i32 0), align 8
  %96 = load %struct.TYPE_20__*, %struct.TYPE_20__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32* %95(i32 %98)
  store i32* %99, i32** %11, align 8
  %100 = load i32, i32* @MC_OUT_TYPE_CONF, align 4
  %101 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %102 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %101, i32 0, i32 2
  store i32 %100, i32* %102, align 8
  %103 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %104 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %103, i32 0, i32 0
  store i32 0, i32* %104, align 8
  %105 = load %struct.TYPE_22__*, %struct.TYPE_22__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @VIDEO_ES, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %165

110:                                              ; preds = %94
  %111 = load i32*, i32** %11, align 8
  %112 = call i8* @GetFormatInteger(i32* %111, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %113 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %114 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %115, i32 0, i32 8
  store i8* %112, i8** %116, align 8
  %117 = load i32*, i32** %11, align 8
  %118 = call i8* @GetFormatInteger(i32* %117, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0))
  %119 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %120 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %120, i32 0, i32 1
  %122 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %121, i32 0, i32 7
  store i8* %118, i8** %122, align 8
  %123 = load i32*, i32** %11, align 8
  %124 = call i8* @GetFormatInteger(i32* %123, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.3, i64 0, i64 0))
  %125 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %126 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %127, i32 0, i32 6
  store i8* %124, i8** %128, align 8
  %129 = load i32*, i32** %11, align 8
  %130 = call i8* @GetFormatInteger(i32* %129, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i64 0, i64 0))
  %131 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %132 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %131, i32 0, i32 1
  %133 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %132, i32 0, i32 1
  %134 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %133, i32 0, i32 5
  store i8* %130, i8** %134, align 8
  %135 = load i32*, i32** %11, align 8
  %136 = call i8* @GetFormatInteger(i32* %135, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i64 0, i64 0))
  %137 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %138 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %139, i32 0, i32 4
  store i8* %136, i8** %140, align 8
  %141 = load i32*, i32** %11, align 8
  %142 = call i8* @GetFormatInteger(i32* %141, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.6, i64 0, i64 0))
  %143 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %144, i32 0, i32 1
  %146 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %145, i32 0, i32 3
  store i8* %142, i8** %146, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = call i8* @GetFormatInteger(i32* %147, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0))
  %149 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %150 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %151, i32 0, i32 2
  store i8* %148, i8** %152, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = call i8* @GetFormatInteger(i32* %153, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0))
  %155 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %156 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %155, i32 0, i32 1
  %157 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %156, i32 0, i32 1
  %158 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %157, i32 0, i32 1
  store i8* %154, i8** %158, align 8
  %159 = load i32*, i32** %11, align 8
  %160 = call i8* @GetFormatInteger(i32* %159, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i64 0, i64 0))
  %161 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %162 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %163, i32 0, i32 0
  store i8* %160, i8** %164, align 8
  br label %184

165:                                              ; preds = %94
  %166 = load i32*, i32** %11, align 8
  %167 = call i8* @GetFormatInteger(i32* %166, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.10, i64 0, i64 0))
  %168 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %169 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %168, i32 0, i32 1
  %170 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %169, i32 0, i32 0
  %171 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %170, i32 0, i32 2
  store i8* %167, i8** %171, align 8
  %172 = load i32*, i32** %11, align 8
  %173 = call i8* @GetFormatInteger(i32* %172, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %175 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %174, i32 0, i32 1
  %176 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %175, i32 0, i32 0
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 1
  store i8* %173, i8** %177, align 8
  %178 = load i32*, i32** %11, align 8
  %179 = call i8* @GetFormatInteger(i32* %178, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.12, i64 0, i64 0))
  %180 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %181 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %180, i32 0, i32 1
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %182, i32 0, i32 0
  store i8* %179, i8** %183, align 8
  br label %184

184:                                              ; preds = %165, %110
  store i32 1, i32* %4, align 4
  br label %187

185:                                              ; preds = %90
  br label %186

186:                                              ; preds = %185
  store i32 0, i32* %4, align 4
  br label %187

187:                                              ; preds = %186, %184, %89, %65
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @msg_Err(i32, i8*) #1

declare dso_local i8* @GetFormatInteger(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
