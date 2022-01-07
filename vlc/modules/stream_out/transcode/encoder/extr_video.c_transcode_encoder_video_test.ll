; ModuleID = '/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_encoder_video_test.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/stream_out/transcode/encoder/extr_video.c_transcode_encoder_video_test.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_23__ = type { i8*, i64, %struct.TYPE_21__, i32 }
%struct.TYPE_21__ = type { i32, i32, i32, %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_24__ = type { %struct.TYPE_22__ }
%struct.TYPE_22__ = type { i32, i32, i32, i32, i64, i32, i32 }
%struct.TYPE_25__ = type { %struct.TYPE_19__, %struct.TYPE_19__, i32, i32 }
%struct.TYPE_19__ = type { i64, %struct.TYPE_22__, i32 }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@ENC_FRAMERATE = common dso_local global i32 0, align 4
@ENC_FRAMERATE_BASE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"encoder\00", align 1
@.str.1 = private unnamed_addr constant [106 x i8] c"cannot find video encoder (module:%s fourcc:%4.4s). Take a look few lines earlier to see possible reason.\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"any\00", align 1
@VLC_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @transcode_encoder_video_test(i32* %0, %struct.TYPE_23__* %1, %struct.TYPE_24__* %2, i64 %3, %struct.TYPE_24__* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_23__*, align 8
  %9 = alloca %struct.TYPE_24__*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_24__*, align 8
  %12 = alloca %struct.TYPE_25__*, align 8
  %13 = alloca %struct.TYPE_22__*, align 8
  %14 = alloca %struct.TYPE_22__*, align 8
  %15 = alloca %struct.TYPE_22__*, align 8
  %16 = alloca i32*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.TYPE_23__* %1, %struct.TYPE_23__** %8, align 8
  store %struct.TYPE_24__* %2, %struct.TYPE_24__** %9, align 8
  store i64 %3, i64* %10, align 8
  store %struct.TYPE_24__* %4, %struct.TYPE_24__** %11, align 8
  %17 = load i32*, i32** %7, align 8
  %18 = call %struct.TYPE_25__* @sout_EncoderCreate(i32* %17)
  store %struct.TYPE_25__* %18, %struct.TYPE_25__** %12, align 8
  %19 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %20 = icmp ne %struct.TYPE_25__* %19, null
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %22, i32* %6, align 4
  br label %204

23:                                               ; preds = %5
  %24 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %25, i32 0, i32 3
  %27 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %29, i32 0, i32 3
  store i32 %28, i32* %30, align 4
  %31 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %35 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %34, i32 0, i32 2
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %37 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %36, i32 0, i32 1
  %38 = load i32, i32* @VIDEO_ES, align 4
  %39 = load i64, i64* %10, align 8
  %40 = call i32 @es_format_Init(%struct.TYPE_19__* %37, i32 %38, i64 %39)
  %41 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %41, i32 0, i32 0
  %43 = load i32, i32* @VIDEO_ES, align 4
  %44 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %45 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @es_format_Init(%struct.TYPE_19__* %42, i32 %43, i64 %46)
  %48 = load %struct.TYPE_24__*, %struct.TYPE_24__** %9, align 8
  %49 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %48, i32 0, i32 0
  store %struct.TYPE_22__* %49, %struct.TYPE_22__** %13, align 8
  %50 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %51 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %51, i32 0, i32 1
  store %struct.TYPE_22__* %52, %struct.TYPE_22__** %14, align 8
  %53 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %54, i32 0, i32 1
  store %struct.TYPE_22__* %55, %struct.TYPE_22__** %15, align 8
  %56 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %57 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %56, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = and i32 %59, -2
  %61 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %62 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 8
  %63 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, -2
  %68 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %69 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %68, i32 0, i32 1
  store i32 %67, i32* %69, align 4
  %70 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %71 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %75 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %75, i32 0, i32 2
  store i32 %73, i32* %76, align 8
  %77 = load i64, i64* %10, align 8
  %78 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %78, i32 0, i32 4
  store i64 %77, i64* %79, align 8
  %80 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %81 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = call i32 @FIRSTVALID(i32 %82, i32 %85, i32 16)
  %87 = and i32 %86, -2
  %88 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %89 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %88, i32 0, i32 0
  store i32 %87, i32* %89, align 8
  %90 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %91 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %94 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @FIRSTVALID(i32 %92, i32 %95, i32 16)
  %97 = and i32 %96, -2
  %98 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %99 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %98, i32 0, i32 1
  store i32 %97, i32* %99, align 4
  %100 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %101 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %100, i32 0, i32 2
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %104 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 8
  %106 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %107 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @FIRSTVALID(i32 %102, i32 %105, i32 %108)
  %110 = and i32 %109, -2
  %111 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %112 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %111, i32 0, i32 2
  store i32 %110, i32* %112, align 8
  %113 = load %struct.TYPE_22__*, %struct.TYPE_22__** %15, align 8
  %114 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %113, i32 0, i32 3
  %115 = load i32, i32* %114, align 4
  %116 = load %struct.TYPE_22__*, %struct.TYPE_22__** %13, align 8
  %117 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %120 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = call i32 @FIRSTVALID(i32 %115, i32 %118, i32 %121)
  %123 = and i32 %122, -2
  %124 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %124, i32 0, i32 3
  store i32 %123, i32* %125, align 4
  %126 = load i32, i32* @ENC_FRAMERATE, align 4
  %127 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %127, i32 0, i32 6
  store i32 %126, i32* %128, align 4
  %129 = load i32, i32* @ENC_FRAMERATE_BASE, align 4
  %130 = load %struct.TYPE_22__*, %struct.TYPE_22__** %14, align 8
  %131 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  %132 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %133 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %134 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %133, i32 0, i32 0
  %135 = load i8*, i8** %134, align 8
  %136 = call i32* @module_need(%struct.TYPE_25__* %132, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8* %135, i32 1)
  store i32* %136, i32** %16, align 8
  %137 = load i32*, i32** %16, align 8
  %138 = icmp ne i32* %137, null
  br i1 %138, label %156, label %139

139:                                              ; preds = %23
  %140 = load i32*, i32** %7, align 8
  %141 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %142 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = icmp ne i8* %143, null
  br i1 %144, label %145, label %149

145:                                              ; preds = %139
  %146 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %147 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  br label %150

149:                                              ; preds = %139
  br label %150

150:                                              ; preds = %149, %145
  %151 = phi i8* [ %148, %145 ], [ getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), %149 ]
  %152 = load %struct.TYPE_23__*, %struct.TYPE_23__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %152, i32 0, i32 1
  %154 = bitcast i64* %153 to i8*
  %155 = call i32 @msg_Err(i32* %140, i8* getelementptr inbounds ([106 x i8], [106 x i8]* @.str.1, i64 0, i64 0), i8* %151, i8* %154)
  br label %160

156:                                              ; preds = %23
  %157 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %158 = load i32*, i32** %16, align 8
  %159 = call i32 @module_unneed(%struct.TYPE_25__* %157, i32* %158)
  br label %160

160:                                              ; preds = %156, %150
  %161 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %162 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %161, i32 0, i32 1
  %163 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %162, i32 0, i32 1
  %164 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %163, i32 0, i32 4
  %165 = load i64, i64* %164, align 8
  %166 = icmp ne i64 %165, 0
  %167 = xor i1 %166, true
  %168 = zext i1 %167 to i32
  %169 = call i64 @likely(i32 %168)
  %170 = icmp ne i64 %169, 0
  br i1 %170, label %171, label %180

171:                                              ; preds = %160
  %172 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %173 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %172, i32 0, i32 1
  %174 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %173, i32 0, i32 0
  %175 = load i64, i64* %174, align 8
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 1
  %178 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %177, i32 0, i32 1
  %179 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %178, i32 0, i32 4
  store i64 %175, i64* %179, align 8
  br label %180

180:                                              ; preds = %171, %160
  %181 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %182 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %183 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %182, i32 0, i32 1
  %184 = call i32 @es_format_Copy(%struct.TYPE_24__* %181, %struct.TYPE_19__* %183)
  %185 = load %struct.TYPE_24__*, %struct.TYPE_24__** %11, align 8
  %186 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %185, i32 0, i32 0
  %187 = call i32 @video_format_FixRgb(%struct.TYPE_22__* %186)
  %188 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %189 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %188, i32 0, i32 1
  %190 = call i32 @es_format_Clean(%struct.TYPE_19__* %189)
  %191 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %192 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %191, i32 0, i32 0
  %193 = call i32 @es_format_Clean(%struct.TYPE_19__* %192)
  %194 = load %struct.TYPE_25__*, %struct.TYPE_25__** %12, align 8
  %195 = call i32 @vlc_object_delete(%struct.TYPE_25__* %194)
  %196 = load i32*, i32** %16, align 8
  %197 = icmp ne i32* %196, null
  br i1 %197, label %198, label %200

198:                                              ; preds = %180
  %199 = load i32, i32* @VLC_SUCCESS, align 4
  br label %202

200:                                              ; preds = %180
  %201 = load i32, i32* @VLC_EGENERIC, align 4
  br label %202

202:                                              ; preds = %200, %198
  %203 = phi i32 [ %199, %198 ], [ %201, %200 ]
  store i32 %203, i32* %6, align 4
  br label %204

204:                                              ; preds = %202, %21
  %205 = load i32, i32* %6, align 4
  ret i32 %205
}

declare dso_local %struct.TYPE_25__* @sout_EncoderCreate(i32*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_19__*, i32, i64) #1

declare dso_local i32 @FIRSTVALID(i32, i32, i32) #1

declare dso_local i32* @module_need(%struct.TYPE_25__*, i8*, i8*, i32) #1

declare dso_local i32 @msg_Err(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @module_unneed(%struct.TYPE_25__*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @es_format_Copy(%struct.TYPE_24__*, %struct.TYPE_19__*) #1

declare dso_local i32 @video_format_FixRgb(%struct.TYPE_22__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_19__*) #1

declare dso_local i32 @vlc_object_delete(%struct.TYPE_25__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
