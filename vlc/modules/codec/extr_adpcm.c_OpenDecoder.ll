; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_OpenDecoder.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_adpcm.c_OpenDecoder.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_17__ = type { i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_18__* }
%struct.TYPE_16__ = type { %struct.TYPE_15__, i32 }
%struct.TYPE_15__ = type { i64, i32, i32 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i64, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32, i32, i32, %struct.TYPE_18__* }

@VLC_EGENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"bad samplerate\00", align 1
@VLC_ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"Invalid number of channels %i\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"block size undefined, using %zu\00", align 1
@.str.3 = private unnamed_addr constant [87 x i8] c"format: samplerate:%d Hz channels:%d bits/sample:%d blockalign:%zu samplesperblock:%zu\00", align 1
@.str.4 = private unnamed_addr constant [44 x i8] c"Error computing number of samples per block\00", align 1
@VLC_CODEC_S16N = common dso_local global i32 0, align 4
@vlc_chan_maps = common dso_local global i32* null, align 8
@DecodeAudio = common dso_local global i32 0, align 4
@Flush = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*)* @OpenDecoder to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @OpenDecoder(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_17__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  %8 = load i32*, i32** %3, align 8
  %9 = bitcast i32* %8 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %9, %struct.TYPE_17__** %4, align 8
  %10 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %11 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %10, i32 0, i32 3
  %12 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  switch i32 %13, label %15 [
    i32 131, label %14
    i32 130, label %14
    i32 129, label %14
    i32 132, label %14
    i32 133, label %14
    i32 128, label %14
  ]

14:                                               ; preds = %1, %1, %1, %1, %1, %1
  br label %17

15:                                               ; preds = %1
  %16 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %16, i32* %2, align 4
  br label %332

17:                                               ; preds = %14
  %18 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %18, i32 0, i32 3
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp sle i64 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %17
  %25 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %26 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Err(%struct.TYPE_17__* %25, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %27, i32* %2, align 4
  br label %332

28:                                               ; preds = %17
  %29 = call %struct.TYPE_18__* @malloc(i32 24)
  store %struct.TYPE_18__* %29, %struct.TYPE_18__** %5, align 8
  %30 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %31 = icmp eq %struct.TYPE_18__* %30, null
  %32 = zext i1 %31 to i32
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %28
  %36 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %36, i32* %2, align 4
  br label %332

37:                                               ; preds = %28
  %38 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %38, i32 0, i32 4
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %39, align 8
  %40 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %40, i32 0, i32 0
  store i32 0, i32* %41, align 8
  %42 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %43 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %42, i32 0, i32 3
  %44 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 8
  store i32 %46, i32* %6, align 4
  store i32 5, i32* %7, align 4
  %47 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %48 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %47, i32 0, i32 3
  %49 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  switch i32 %50, label %90 [
    i32 131, label %51
    i32 130, label %54
    i32 129, label %57
    i32 132, label %60
    i32 133, label %63
    i32 128, label %66
  ]

51:                                               ; preds = %37
  %52 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %53 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %52, i32 0, i32 1
  store i32 136, i32* %53, align 4
  store i32 2, i32* %7, align 4
  br label %90

54:                                               ; preds = %37
  %55 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %55, i32 0, i32 1
  store i32 135, i32* %56, align 4
  store i32 2, i32* %7, align 4
  br label %90

57:                                               ; preds = %37
  %58 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %58, i32 0, i32 1
  store i32 134, i32* %59, align 4
  store i32 2, i32* %7, align 4
  br label %90

60:                                               ; preds = %37
  %61 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %61, i32 0, i32 1
  store i32 138, i32* %62, align 4
  store i32 2, i32* %7, align 4
  br label %90

63:                                               ; preds = %37
  %64 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %65 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %64, i32 0, i32 1
  store i32 139, i32* %65, align 4
  store i32 2, i32* %7, align 4
  br label %90

66:                                               ; preds = %37
  %67 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %67, i32 0, i32 1
  store i32 137, i32* %68, align 4
  %69 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %70 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %69, i32 0, i32 3
  %71 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %70, i32 0, i32 1
  %72 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = mul i32 2, %73
  %75 = call %struct.TYPE_18__* @calloc(i32 %74, i32 4)
  %76 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %77 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %76, i32 0, i32 4
  store %struct.TYPE_18__* %75, %struct.TYPE_18__** %77, align 8
  %78 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %79 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %78, i32 0, i32 4
  %80 = load %struct.TYPE_18__*, %struct.TYPE_18__** %79, align 8
  %81 = icmp eq %struct.TYPE_18__* %80, null
  %82 = zext i1 %81 to i32
  %83 = call i64 @unlikely(i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %66
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = call i32 @free(%struct.TYPE_18__* %86)
  %88 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %88, i32* %2, align 4
  br label %332

89:                                               ; preds = %66
  br label %90

90:                                               ; preds = %37, %89, %63, %60, %57, %54, %51
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp ugt i32 %91, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %90
  %95 = load i32, i32* %6, align 4
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %112

97:                                               ; preds = %94, %90
  %98 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %98, i32 0, i32 4
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %99, align 8
  %101 = call i32 @free(%struct.TYPE_18__* %100)
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = call i32 @free(%struct.TYPE_18__* %102)
  %104 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %105 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %106 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %105, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 1
  %108 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 8
  %110 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Err(%struct.TYPE_17__* %104, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %109)
  %111 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %111, i32* %2, align 4
  br label %332

112:                                              ; preds = %94
  %113 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %113, i32 0, i32 3
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 4
  %118 = icmp sle i32 %117, 0
  br i1 %118, label %119, label %141

119:                                              ; preds = %112
  %120 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp eq i32 %122, 136
  br i1 %123, label %124, label %131

124:                                              ; preds = %119
  %125 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %126 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %125, i32 0, i32 3
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 1
  %128 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = mul i32 34, %129
  br label %132

131:                                              ; preds = %119
  br label %132

132:                                              ; preds = %131, %124
  %133 = phi i32 [ %130, %124 ], [ 1024, %131 ]
  %134 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %135 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %134, i32 0, i32 2
  store i32 %133, i32* %135, align 8
  %136 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %137 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @msg_Warn(%struct.TYPE_17__* %136, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i32 %139)
  br label %149

141:                                              ; preds = %112
  %142 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %142, i32 0, i32 3
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 1
  %145 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %144, i32 0, i32 2
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %148 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %147, i32 0, i32 2
  store i32 %146, i32* %148, align 8
  br label %149

149:                                              ; preds = %141, %132
  %150 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %151 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 4
  switch i32 %152, label %252 [
    i32 136, label %153
    i32 135, label %156
    i32 134, label %176
    i32 138, label %197
    i32 139, label %218
    i32 137, label %234
  ]

153:                                              ; preds = %149
  %154 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %155 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %154, i32 0, i32 0
  store i32 64, i32* %155, align 8
  br label %252

156:                                              ; preds = %149
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 2
  %159 = load i32, i32* %158, align 8
  %160 = load i32, i32* %6, align 4
  %161 = mul i32 4, %160
  %162 = icmp uge i32 %159, %161
  br i1 %162, label %163, label %175

163:                                              ; preds = %156
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 2
  %166 = load i32, i32* %165, align 8
  %167 = load i32, i32* %6, align 4
  %168 = mul i32 4, %167
  %169 = sub i32 %166, %168
  %170 = mul i32 2, %169
  %171 = load i32, i32* %6, align 4
  %172 = udiv i32 %170, %171
  %173 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %174 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %173, i32 0, i32 0
  store i32 %172, i32* %174, align 8
  br label %175

175:                                              ; preds = %163, %156
  br label %252

176:                                              ; preds = %149
  %177 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load i32, i32* %6, align 4
  %181 = mul i32 7, %180
  %182 = icmp uge i32 %179, %181
  br i1 %182, label %183, label %196

183:                                              ; preds = %176
  %184 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %185 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %184, i32 0, i32 2
  %186 = load i32, i32* %185, align 8
  %187 = load i32, i32* %6, align 4
  %188 = mul i32 7, %187
  %189 = sub i32 %186, %188
  %190 = mul i32 2, %189
  %191 = load i32, i32* %6, align 4
  %192 = udiv i32 %190, %191
  %193 = add i32 %192, 2
  %194 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %195 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %194, i32 0, i32 0
  store i32 %193, i32* %195, align 8
  br label %196

196:                                              ; preds = %183, %176
  br label %252

197:                                              ; preds = %149
  %198 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %199 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* %6, align 4
  %202 = mul i32 4, %201
  %203 = icmp uge i32 %200, %202
  br i1 %203, label %204, label %217

204:                                              ; preds = %197
  %205 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 2
  %207 = load i32, i32* %206, align 8
  %208 = load i32, i32* %6, align 4
  %209 = mul i32 4, %208
  %210 = sub i32 %207, %209
  %211 = mul i32 2, %210
  %212 = load i32, i32* %6, align 4
  %213 = udiv i32 %211, %212
  %214 = add i32 %213, 1
  %215 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %216 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %215, i32 0, i32 0
  store i32 %214, i32* %216, align 8
  br label %217

217:                                              ; preds = %204, %197
  br label %252

218:                                              ; preds = %149
  store i32 2, i32* %6, align 4
  %219 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %220 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %219, i32 0, i32 2
  %221 = load i32, i32* %220, align 8
  %222 = icmp sge i32 %221, 16
  br i1 %222, label %223, label %233

223:                                              ; preds = %218
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 2
  %226 = load i32, i32* %225, align 8
  %227 = sub nsw i32 %226, 16
  %228 = mul nsw i32 4, %227
  %229 = add nsw i32 %228, 2
  %230 = sdiv i32 %229, 3
  %231 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %232 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %231, i32 0, i32 0
  store i32 %230, i32* %232, align 8
  br label %233

233:                                              ; preds = %223, %218
  br label %252

234:                                              ; preds = %149
  %235 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %236 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %235, i32 0, i32 2
  %237 = load i32, i32* %236, align 8
  %238 = load i32, i32* %6, align 4
  %239 = icmp uge i32 %237, %238
  br i1 %239, label %240, label %251

240:                                              ; preds = %234
  %241 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %242 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i32, i32* %6, align 4
  %245 = sub i32 %243, %244
  %246 = mul i32 2, %245
  %247 = load i32, i32* %6, align 4
  %248 = udiv i32 %246, %247
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %249, i32 0, i32 0
  store i32 %248, i32* %250, align 8
  br label %251

251:                                              ; preds = %240, %234
  br label %252

252:                                              ; preds = %251, %149, %233, %217, %196, %175, %153
  %253 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %254 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %255 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %254, i32 0, i32 3
  %256 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %255, i32 0, i32 1
  %257 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %256, i32 0, i32 0
  %258 = load i64, i64* %257, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %261 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %260, i32 0, i32 3
  %262 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %261, i32 0, i32 1
  %263 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %262, i32 0, i32 3
  %264 = load i32, i32* %263, align 8
  %265 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %265, i32 0, i32 2
  %267 = load i32, i32* %266, align 8
  %268 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %269 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %268, i32 0, i32 0
  %270 = load i32, i32* %269, align 8
  %271 = call i32 @msg_Dbg(%struct.TYPE_17__* %253, i8* getelementptr inbounds ([87 x i8], [87 x i8]* @.str.3, i64 0, i64 0), i64 %258, i32 %259, i32 %264, i32 %267, i32 %270)
  %272 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %273 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %272, i32 0, i32 0
  %274 = load i32, i32* %273, align 8
  %275 = icmp eq i32 %274, 0
  br i1 %275, label %276, label %286

276:                                              ; preds = %252
  %277 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %278 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %277, i32 0, i32 4
  %279 = load %struct.TYPE_18__*, %struct.TYPE_18__** %278, align 8
  %280 = call i32 @free(%struct.TYPE_18__* %279)
  %281 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %282 = call i32 @free(%struct.TYPE_18__* %281)
  %283 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %284 = call i32 (%struct.TYPE_17__*, i8*, ...) @msg_Err(%struct.TYPE_17__* %283, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.4, i64 0, i64 0))
  %285 = load i32, i32* @VLC_EGENERIC, align 4
  store i32 %285, i32* %2, align 4
  br label %332

286:                                              ; preds = %252
  %287 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %288 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %289 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %288, i32 0, i32 4
  store %struct.TYPE_18__* %287, %struct.TYPE_18__** %289, align 8
  %290 = load i32, i32* @VLC_CODEC_S16N, align 4
  %291 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %292 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %291, i32 0, i32 2
  %293 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %292, i32 0, i32 1
  store i32 %290, i32* %293, align 8
  %294 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %295 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %294, i32 0, i32 3
  %296 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %295, i32 0, i32 1
  %297 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %300 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %299, i32 0, i32 2
  %301 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %300, i32 0, i32 0
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  store i64 %298, i64* %302, align 8
  %303 = load i32, i32* %6, align 4
  %304 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %305 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %304, i32 0, i32 2
  %306 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %305, i32 0, i32 0
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 1
  store i32 %303, i32* %307, align 8
  %308 = load i32*, i32** @vlc_chan_maps, align 8
  %309 = load i32, i32* %6, align 4
  %310 = zext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %314 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %313, i32 0, i32 2
  %315 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %314, i32 0, i32 0
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 2
  store i32 %312, i32* %316, align 4
  %317 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %318 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %317, i32 0, i32 3
  %319 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %320 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %319, i32 0, i32 2
  %321 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %320, i32 0, i32 0
  %322 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %321, i32 0, i32 0
  %323 = load i64, i64* %322, align 8
  %324 = call i32 @date_Init(i32* %318, i64 %323, i32 1)
  %325 = load i32, i32* @DecodeAudio, align 4
  %326 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %327 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %326, i32 0, i32 1
  store i32 %325, i32* %327, align 4
  %328 = load i32, i32* @Flush, align 4
  %329 = load %struct.TYPE_17__*, %struct.TYPE_17__** %4, align 8
  %330 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %329, i32 0, i32 0
  store i32 %328, i32* %330, align 8
  %331 = load i32, i32* @VLC_SUCCESS, align 4
  store i32 %331, i32* %2, align 4
  br label %332

332:                                              ; preds = %286, %276, %97, %85, %35, %24, %15
  %333 = load i32, i32* %2, align 4
  ret i32 %333
}

declare dso_local i32 @msg_Err(%struct.TYPE_17__*, i8*, ...) #1

declare dso_local %struct.TYPE_18__* @malloc(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.TYPE_18__* @calloc(i32, i32) #1

declare dso_local i32 @free(%struct.TYPE_18__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_17__*, i8*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_17__*, i8*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @date_Init(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
