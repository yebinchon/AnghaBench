; ModuleID = '/home/carl/AnghaBench/vlc/modules/demux/extr_tta.c_Open.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/demux/extr_tta.c_Open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_14__ = type { i32, i32, %struct.TYPE_15__*, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_15__ = type { i32, i32, i32, i32, i32, i8**, i64 }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32*, %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32, i8*, i8* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"TTA1\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"this doesn't look like a true-audio stream, continuing anyway\00", align 1
@Demux = common dso_local global i32 0, align 4
@Control = common dso_local global i32 0, align 4
@VLC_ENOMEM = common dso_local global i32 0, align 4
@AUDIO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_TTA = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c"Wrong sample rate\00", align 1
@TTA_FRAMETIME = common dso_local global i32 0, align 4
@INT_MAX = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @Open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Open(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_14__*, align 8
  %5 = alloca %struct.TYPE_15__*, align 8
  %6 = alloca %struct.TYPE_13__, align 8
  %7 = alloca i32*, align 8
  %8 = alloca [22 x i32], align 16
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32* %0, i32** %3, align 8
  %12 = load i32*, i32** %3, align 8
  %13 = bitcast i32* %12 to %struct.TYPE_14__*
  store %struct.TYPE_14__* %13, %struct.TYPE_14__** %4, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %15 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @vlc_stream_Peek(i32 %16, i32** %7, i32 4)
  %18 = icmp slt i32 %17, 4
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %20, i32* %2, align 4
  br label %238

21:                                               ; preds = %1
  %22 = load i32*, i32** %7, align 8
  %23 = call i64 @memcmp(i32* %22, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %21
  %26 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %26, i32 0, i32 5
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %25
  %32 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %32, i32* %2, align 4
  br label %238

33:                                               ; preds = %25
  %34 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %35 = call i32 @msg_Err(%struct.TYPE_14__* %34, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %33, %21
  %37 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 0
  %41 = call i32 @vlc_stream_Read(i32 %39, i32* %40, i32 22)
  %42 = icmp slt i32 %41, 22
  br i1 %42, label %43, label %45

43:                                               ; preds = %36
  %44 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %44, i32* %2, align 4
  br label %238

45:                                               ; preds = %36
  %46 = load i32, i32* @Demux, align 4
  %47 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %47, i32 0, i32 4
  store i32 %46, i32* %48, align 4
  %49 = load i32, i32* @Control, align 4
  %50 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %51 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %50, i32 0, i32 3
  store i32 %49, i32* %51, align 8
  %52 = call i8* @malloc(i32 40)
  %53 = bitcast i8* %52 to %struct.TYPE_15__*
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %5, align 8
  %54 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %54, i32 0, i32 2
  store %struct.TYPE_15__* %53, %struct.TYPE_15__** %55, align 8
  %56 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %57 = icmp ne %struct.TYPE_15__* %56, null
  br i1 %57, label %60, label %58

58:                                               ; preds = %45
  %59 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %59, i32* %2, align 4
  br label %238

60:                                               ; preds = %45
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 5
  store i8** null, i8*** %62, align 8
  %63 = load i32, i32* @AUDIO_ES, align 4
  %64 = load i32, i32* @VLC_CODEC_TTA, align 4
  %65 = call i32 @es_format_Init(%struct.TYPE_13__* %6, i32 %63, i32 %64)
  %66 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 6
  %67 = call i8* @GetWLE(i32* %66)
  %68 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %69 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %68, i32 0, i32 2
  store i8* %67, i8** %69, align 8
  %70 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 8
  %71 = call i8* @GetWLE(i32* %70)
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %73 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %72, i32 0, i32 1
  store i8* %71, i8** %73, align 8
  %74 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 10
  %75 = call i8* @GetDWLE(i32* %74)
  %76 = ptrtoint i8* %75 to i32
  %77 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 8
  %79 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %88, label %83

83:                                               ; preds = %60
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp sgt i32 %86, 1048576
  br i1 %87, label %88, label %91

88:                                               ; preds = %83, %60
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %90 = call i32 @msg_Warn(%struct.TYPE_14__* %89, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %233

91:                                               ; preds = %83
  %92 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 14
  %93 = call i8* @GetDWLE(i32* %92)
  %94 = ptrtoint i8* %93 to i32
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 0
  store i32 %94, i32* %96, align 8
  %97 = load i32, i32* @TTA_FRAMETIME, align 4
  %98 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 2
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = mul nsw i32 %97, %100
  %102 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %103 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %102, i32 0, i32 1
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sdiv i32 %106, %109
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %115 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = srem i32 %113, %116
  %118 = icmp ne i32 %117, 0
  %119 = zext i1 %118 to i32
  %120 = add nsw i32 %110, %119
  %121 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %122 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %121, i32 0, i32 2
  store i32 %120, i32* %122, align 8
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 6
  store i64 0, i64* %124, align 8
  %125 = load i32, i32* @INT_MAX, align 4
  %126 = sub nsw i32 %125, 22
  %127 = sub nsw i32 %126, 4
  %128 = sext i32 %127 to i64
  %129 = udiv i64 %128, 8
  %130 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %130, i32 0, i32 2
  %132 = load i32, i32* %131, align 8
  %133 = sext i32 %132 to i64
  %134 = icmp ult i64 %129, %133
  br i1 %134, label %135, label %136

135:                                              ; preds = %91
  br label %233

136:                                              ; preds = %91
  %137 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = sext i32 %139 to i64
  %141 = mul i64 8, %140
  %142 = trunc i64 %141 to i32
  store i32 %142, i32* %10, align 4
  %143 = load i32, i32* %10, align 4
  %144 = add nsw i32 22, %143
  %145 = add nsw i32 %144, 4
  %146 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 %145, i32* %146, align 8
  %147 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  %148 = load i32, i32* %147, align 8
  %149 = call i8* @malloc(i32 %148)
  %150 = bitcast i8* %149 to i32*
  store i32* %150, i32** %9, align 8
  %151 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  store i32* %150, i32** %151, align 8
  %152 = load i32*, i32** %9, align 8
  %153 = icmp ne i32* %152, null
  br i1 %153, label %156, label %154

154:                                              ; preds = %136
  %155 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 0
  store i32 0, i32* %155, align 8
  br label %233

156:                                              ; preds = %136
  %157 = load i32*, i32** %9, align 8
  %158 = getelementptr inbounds [22 x i32], [22 x i32]* %8, i64 0, i64 0
  %159 = call i32 @memcpy(i32* %157, i32* %158, i32 22)
  %160 = load i32*, i32** %9, align 8
  %161 = getelementptr inbounds i32, i32* %160, i64 22
  store i32* %161, i32** %9, align 8
  %162 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 1
  %164 = load i32, i32* %163, align 4
  %165 = load i32*, i32** %9, align 8
  %166 = load i32, i32* %10, align 4
  %167 = call i32 @vlc_stream_Read(i32 %164, i32* %165, i32 %166)
  %168 = load i32, i32* %10, align 4
  %169 = icmp ne i32 %167, %168
  br i1 %169, label %170, label %171

170:                                              ; preds = %156
  br label %233

171:                                              ; preds = %156
  %172 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %173 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %172, i32 0, i32 2
  %174 = load i32, i32* %173, align 8
  %175 = call i8** @calloc(i32 %174, i32 8)
  %176 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %177 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %176, i32 0, i32 5
  store i8** %175, i8*** %177, align 8
  %178 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 5
  %180 = load i8**, i8*** %179, align 8
  %181 = icmp ne i8** %180, null
  br i1 %181, label %183, label %182

182:                                              ; preds = %171
  br label %233

183:                                              ; preds = %171
  store i64 0, i64* %11, align 8
  br label %184

184:                                              ; preds = %201, %183
  %185 = load i64, i64* %11, align 8
  %186 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %187 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %186, i32 0, i32 2
  %188 = load i32, i32* %187, align 8
  %189 = sext i32 %188 to i64
  %190 = icmp ult i64 %185, %189
  br i1 %190, label %191, label %204

191:                                              ; preds = %184
  %192 = load i32*, i32** %9, align 8
  %193 = call i8* @GetDWLE(i32* %192)
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %194, i32 0, i32 5
  %196 = load i8**, i8*** %195, align 8
  %197 = load i64, i64* %11, align 8
  %198 = getelementptr inbounds i8*, i8** %196, i64 %197
  store i8* %193, i8** %198, align 8
  %199 = load i32*, i32** %9, align 8
  %200 = getelementptr inbounds i32, i32* %199, i64 4
  store i32* %200, i32** %9, align 8
  br label %201

201:                                              ; preds = %191
  %202 = load i64, i64* %11, align 8
  %203 = add i64 %202, 1
  store i64 %203, i64* %11, align 8
  br label %184

204:                                              ; preds = %184
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %206 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load i32*, i32** %9, align 8
  %209 = call i32 @vlc_stream_Read(i32 %207, i32* %208, i32 4)
  %210 = icmp ne i32 4, %209
  br i1 %210, label %211, label %212

211:                                              ; preds = %204
  br label %233

212:                                              ; preds = %204
  %213 = load i32*, i32** %9, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 4
  store i32* %214, i32** %9, align 8
  %215 = load %struct.TYPE_14__*, %struct.TYPE_14__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %215, i32 0, i32 0
  %217 = load i32, i32* %216, align 8
  %218 = call i32 @es_out_Add(i32 %217, %struct.TYPE_13__* %6)
  %219 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %219, i32 0, i32 4
  store i32 %218, i32* %220, align 8
  %221 = load i32*, i32** %9, align 8
  %222 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %6, i32 0, i32 1
  %223 = load i32*, i32** %222, align 8
  %224 = ptrtoint i32* %221 to i64
  %225 = ptrtoint i32* %223 to i64
  %226 = sub i64 %224, %225
  %227 = sdiv exact i64 %226, 4
  %228 = trunc i64 %227 to i32
  %229 = load %struct.TYPE_15__*, %struct.TYPE_15__** %5, align 8
  %230 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %229, i32 0, i32 3
  store i32 %228, i32* %230, align 4
  %231 = call i32 @es_format_Clean(%struct.TYPE_13__* %6)
  %232 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %232, i32* %2, align 4
  br label %238

233:                                              ; preds = %211, %182, %170, %154, %135, %88
  %234 = call i32 @es_format_Clean(%struct.TYPE_13__* %6)
  %235 = load i32*, i32** %3, align 8
  %236 = call i32 @Close(i32* %235)
  %237 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %237, i32* %2, align 4
  br label %238

238:                                              ; preds = %233, %212, %58, %43, %31, %19
  %239 = load i32, i32* %2, align 4
  ret i32 %239
}

declare dso_local i32 @vlc_stream_Peek(i32, i32**, i32) #1

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

declare dso_local i32 @msg_Err(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @vlc_stream_Read(i32, i32*, i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_13__*, i32, i32) #1

declare dso_local i8* @GetWLE(i32*) #1

declare dso_local i8* @GetDWLE(i32*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i8** @calloc(i32, i32) #1

declare dso_local i32 @es_out_Add(i32, %struct.TYPE_13__*) #1

declare dso_local i32 @es_format_Clean(%struct.TYPE_13__*) #1

declare dso_local i32 @Close(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
