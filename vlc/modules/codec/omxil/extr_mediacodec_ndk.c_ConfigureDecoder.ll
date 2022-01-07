; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_ConfigureDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/omxil/extr_mediacodec_ndk.c_ConfigureDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_12__, %struct.TYPE_10__ }
%struct.TYPE_12__ = type { i64 (i32, i32, i32*, i32*, i32)*, i32 (i64)* }
%struct.TYPE_10__ = type { i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)*, i32 (...)* }
%struct.TYPE_14__ = type { i64, i32, i32, i32, i64, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }
%union.mc_api_args = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, i32, i32, i64, i64, i32* }
%struct.TYPE_11__ = type { i32, i32 }

@syms = common dso_local global %struct.TYPE_15__ zeroinitializer, align 8
@.str = private unnamed_addr constant [44 x i8] c"AMediaCodec.createCodecByName for %s failed\00", align 1
@MC_API_ERROR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"AMediaFormat.new failed\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"mime\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"max-input-size\00", align 1
@VIDEO_ES = common dso_local global i64 0, align 8
@.str.5 = private unnamed_addr constant [6 x i8] c"width\00", align 1
@.str.6 = private unnamed_addr constant [7 x i8] c"height\00", align 1
@.str.7 = private unnamed_addr constant [17 x i8] c"rotation-degrees\00", align 1
@.str.8 = private unnamed_addr constant [26 x i8] c"feature-tunneled-playback\00", align 1
@.str.9 = private unnamed_addr constant [26 x i8] c"feature-adaptive-playback\00", align 1
@.str.10 = private unnamed_addr constant [12 x i8] c"sample-rate\00", align 1
@.str.11 = private unnamed_addr constant [14 x i8] c"channel-count\00", align 1
@AMEDIA_OK = common dso_local global i64 0, align 8
@.str.12 = private unnamed_addr constant [29 x i8] c"AMediaCodec.configure failed\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_14__*, %union.mc_api_args*)* @ConfigureDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ConfigureDecoder(%struct.TYPE_14__* %0, %union.mc_api_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %union.mc_api_args*, align 8
  %6 = alloca %struct.TYPE_13__*, align 8
  %7 = alloca i32*, align 8
  store %struct.TYPE_14__* %0, %struct.TYPE_14__** %4, align 8
  store %union.mc_api_args* %1, %union.mc_api_args** %5, align 8
  %8 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %9 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %8, i32 0, i32 5
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  store %struct.TYPE_13__* %10, %struct.TYPE_13__** %6, align 8
  store i32* null, i32** %7, align 8
  %11 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br label %20

20:                                               ; preds = %15, %2
  %21 = phi i1 [ false, %2 ], [ %19, %15 ]
  %22 = zext i1 %21 to i32
  %23 = call i32 @assert(i32 %22)
  %24 = load i32 (i64)*, i32 (i64)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 0, i32 1), align 8
  %25 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %26 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = call i32 %24(i64 %27)
  %29 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %32 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %20
  %36 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %37 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 4
  %41 = load i64, i64* %40, align 8
  %42 = call i32 (i32, i8*, ...) @msg_Err(i32 %38, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %41)
  %43 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %43, i32* %3, align 4
  br label %191

44:                                               ; preds = %20
  %45 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 2), align 8
  %46 = call i32 (...) %45()
  %47 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %47, i32 0, i32 0
  store i32 %46, i32* %48, align 4
  %49 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (i32, i8*, ...) @msg_Err(i32 %56, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0))
  %58 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %58, i32* %3, align 4
  br label %191

59:                                               ; preds = %44
  %60 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %61 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %62 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 %60(i32 %63, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 0)
  %65 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 1), align 8
  %66 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i32 %65(i32 %68, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.3, i64 0, i64 0), i32 %71)
  %73 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %74 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = call i32 %73(i32 %76, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0), i32 0)
  %78 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %79 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @VIDEO_ES, align 8
  %82 = icmp eq i64 %80, %81
  br i1 %82, label %83, label %146

83:                                               ; preds = %59
  %84 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %85 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %89 = bitcast %union.mc_api_args* %88 to %struct.TYPE_9__*
  %90 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = call i32 %84(i32 %87, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0), i32 %91)
  %93 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %94 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %95 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 4
  %97 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %98 = bitcast %union.mc_api_args* %97 to %struct.TYPE_9__*
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 %93(i32 %96, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.6, i64 0, i64 0), i32 %100)
  %102 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %103 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 4
  %106 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %107 = bitcast %union.mc_api_args* %106 to %struct.TYPE_9__*
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = call i32 %102(i32 %105, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.7, i64 0, i64 0), i32 %109)
  %111 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %112 = bitcast %union.mc_api_args* %111 to %struct.TYPE_9__*
  %113 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %112, i32 0, i32 5
  %114 = load i32*, i32** %113, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %145

116:                                              ; preds = %83
  %117 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %118 = bitcast %union.mc_api_args* %117 to %struct.TYPE_9__*
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 5
  %120 = load i32*, i32** %119, align 8
  store i32* %120, i32** %7, align 8
  %121 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %122 = bitcast %union.mc_api_args* %121 to %struct.TYPE_9__*
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 4
  %124 = load i64, i64* %123, align 8
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %132

126:                                              ; preds = %116
  %127 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %128 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = call i32 %127(i32 %130, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.8, i64 0, i64 0), i32 1)
  br label %132

132:                                              ; preds = %126, %116
  %133 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %134 = bitcast %union.mc_api_args* %133 to %struct.TYPE_9__*
  %135 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %134, i32 0, i32 3
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %132
  %139 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %140 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %141 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 4
  %143 = call i32 %139(i32 %142, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.9, i64 0, i64 0), i32 1)
  br label %144

144:                                              ; preds = %138, %132
  br label %145

145:                                              ; preds = %144, %83
  br label %165

146:                                              ; preds = %59
  %147 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %148 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %149 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %152 = bitcast %union.mc_api_args* %151 to %struct.TYPE_11__*
  %153 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 %147(i32 %150, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.10, i64 0, i64 0), i32 %154)
  %156 = load i32 (i32, i8*, i32)*, i32 (i32, i8*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 1, i32 0), align 8
  %157 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %158 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 4
  %160 = load %union.mc_api_args*, %union.mc_api_args** %5, align 8
  %161 = bitcast %union.mc_api_args* %160 to %struct.TYPE_11__*
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = call i32 %156(i32 %159, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.11, i64 0, i64 0), i32 %163)
  br label %165

165:                                              ; preds = %146, %145
  %166 = load i64 (i32, i32, i32*, i32*, i32)*, i64 (i32, i32, i32*, i32*, i32)** getelementptr inbounds (%struct.TYPE_15__, %struct.TYPE_15__* @syms, i32 0, i32 0, i32 0), align 8
  %167 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = load %struct.TYPE_13__*, %struct.TYPE_13__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 4
  %173 = load i32*, i32** %7, align 8
  %174 = call i64 %166(i32 %169, i32 %172, i32* %173, i32* null, i32 0)
  %175 = load i64, i64* @AMEDIA_OK, align 8
  %176 = icmp ne i64 %174, %175
  br i1 %176, label %177, label %183

177:                                              ; preds = %165
  %178 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %178, i32 0, i32 2
  %180 = load i32, i32* %179, align 4
  %181 = call i32 (i32, i8*, ...) @msg_Err(i32 %180, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.12, i64 0, i64 0))
  %182 = load i32, i32* @MC_API_ERROR, align 4
  store i32 %182, i32* %3, align 4
  br label %191

183:                                              ; preds = %165
  %184 = load i32*, i32** %7, align 8
  %185 = icmp ne i32* %184, null
  %186 = xor i1 %185, true
  %187 = xor i1 %186, true
  %188 = zext i1 %187 to i32
  %189 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %190 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %189, i32 0, i32 1
  store i32 %188, i32* %190, align 8
  store i32 0, i32* %3, align 4
  br label %191

191:                                              ; preds = %183, %177, %53, %35
  %192 = load i32, i32* %3, align 4
  ret i32 %192
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @msg_Err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
