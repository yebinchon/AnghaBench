; ModuleID = '/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_StartDecode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/access/linsys/extr_linsys_sdi.c_StartDecode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { i32, %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8*, i8*, i64, i8*, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32, i32, i32*, %struct.TYPE_13__ }
%struct.TYPE_13__ = type { i32, i32, i32, i32, i32, i32 }

@START_DATE = common dso_local global i32 0, align 4
@VLC_SUCCESS = common dso_local global i64 0, align 8
@VLC_ENOMEM = common dso_local global i32 0, align 4
@VIDEO_ES = common dso_local global i32 0, align 4
@VLC_CODEC_I420 = common dso_local global i32 0, align 4
@VOUT_ASPECT_FACTOR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"VBI is unsupported on this input stream\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"capturing VBI lines %d-%d and %d-%d\00", align 1
@SPU_ES = common dso_local global i32 0, align 4
@VLC_CODEC_TELETEXT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_15__*)* @StartDecode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @StartDecode(%struct.TYPE_15__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_15__*, align 8
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_14__, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.TYPE_15__* %0, %struct.TYPE_15__** %3, align 8
  %13 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %14 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %13, i32 0, i32 1
  %15 = load %struct.TYPE_16__*, %struct.TYPE_16__** %14, align 8
  store %struct.TYPE_16__* %15, %struct.TYPE_16__** %4, align 8
  %16 = load i32, i32* @START_DATE, align 4
  %17 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %18 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %17, i32 0, i32 16
  store i32 %16, i32* %18, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 13
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %23 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %22, i32 0, i32 14
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @vlc_tick_from_samples(i32 %21, i32 %24)
  %26 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %27 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %26, i32 0, i32 15
  store i32 %25, i32* %27, align 8
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = mul nsw i32 %30, %33
  %35 = mul nsw i32 %34, 3
  %36 = sdiv i32 %35, 2
  %37 = sext i32 %36 to i64
  %38 = add i64 %37, 4
  %39 = trunc i64 %38 to i32
  %40 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %43 = call i64 @NewFrame(%struct.TYPE_15__* %42)
  %44 = load i64, i64* @VLC_SUCCESS, align 8
  %45 = icmp ne i64 %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %1
  %47 = load i32, i32* @VLC_ENOMEM, align 4
  store i32 %47, i32* %2, align 4
  br label %351

48:                                               ; preds = %1
  %49 = load i32, i32* @VIDEO_ES, align 4
  %50 = load i32, i32* @VLC_CODEC_I420, align 4
  %51 = call i32 @es_format_Init(%struct.TYPE_14__* %5, i32 %49, i32 %50)
  %52 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %53 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %52, i32 0, i32 3
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 %54, i32* %55, align 8
  %56 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %57 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %56, i32 0, i32 14
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %59, i32 0, i32 5
  store i32 %58, i32* %60, align 4
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 13
  %63 = load i32, i32* %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %64, i32 0, i32 4
  store i32 %63, i32* %65, align 8
  %66 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  %71 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %75 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %74, i32 0, i32 1
  store i32 %73, i32* %75, align 4
  %76 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %77 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %76, i32 0, i32 4
  %78 = load i32, i32* %77, align 8
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %48
  %81 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %81, i32 0, i32 4
  %83 = load i32, i32* %82, align 8
  br label %88

84:                                               ; preds = %48
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  br label %88

88:                                               ; preds = %84, %80
  %89 = phi i32 [ %83, %80 ], [ %87, %84 ]
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %92 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 4
  %94 = mul nsw i32 %90, %93
  %95 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %96 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %94, %97
  %99 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %99, i32 0, i32 2
  store i32 %98, i32* %100, align 8
  %101 = load i32, i32* @VOUT_ASPECT_FACTOR, align 4
  %102 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 3
  %103 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %102, i32 0, i32 3
  store i32 %101, i32* %103, align 4
  %104 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %105 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = call i8* @es_out_Add(i32 %106, %struct.TYPE_14__* %5)
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %109 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %108, i32 0, i32 12
  store i8* %107, i8** %109, align 8
  %110 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %111 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %110, i32 0, i32 11
  %112 = load i64, i64* %111, align 8
  %113 = icmp ne i64 %112, 0
  br i1 %113, label %114, label %122

114:                                              ; preds = %88
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %116 = call i64 @InitWSS(%struct.TYPE_15__* %115)
  %117 = load i64, i64* @VLC_SUCCESS, align 8
  %118 = icmp ne i64 %116, %117
  br i1 %118, label %119, label %122

119:                                              ; preds = %114
  %120 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %121 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %120, i32 0, i32 11
  store i64 0, i64* %121, align 8
  br label %122

122:                                              ; preds = %119, %114, %88
  %123 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %124 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %123, i32 0, i32 6
  %125 = load i8*, i8** %124, align 8
  store i8* %125, i8** %6, align 8
  %126 = load i8*, i8** %6, align 8
  %127 = icmp ne i8* %126, null
  br i1 %127, label %128, label %348

128:                                              ; preds = %122
  %129 = load i8*, i8** %6, align 8
  %130 = load i8, i8* %129, align 1
  %131 = sext i8 %130 to i32
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %133, label %348

133:                                              ; preds = %128
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 11
  %136 = load i64, i64* %135, align 8
  %137 = icmp ne i64 %136, 0
  br i1 %137, label %141, label %138

138:                                              ; preds = %133
  %139 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %140 = call i32 @msg_Warn(%struct.TYPE_15__* %139, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %347

141:                                              ; preds = %133
  %142 = load i8*, i8** %6, align 8
  %143 = call i8* @strchr(i8* %142, i8 signext 61)
  store i8* %143, i8** %9, align 8
  %144 = load i8*, i8** %9, align 8
  %145 = icmp ne i8* %144, null
  br i1 %145, label %146, label %152

146:                                              ; preds = %141
  %147 = load i8*, i8** %9, align 8
  store i8 0, i8* %147, align 1
  %148 = load i8*, i8** %6, align 8
  %149 = call i32 @strtol(i8* %148, i8** null, i32 0)
  store i32 %149, i32* %8, align 4
  %150 = load i8*, i8** %9, align 8
  %151 = getelementptr inbounds i8, i8* %150, i64 1
  store i8* %151, i8** %6, align 8
  br label %153

152:                                              ; preds = %141
  store i32 0, i32* %8, align 4
  br label %153

153:                                              ; preds = %152, %146
  %154 = load i8*, i8** %6, align 8
  %155 = call i8* @strchr(i8* %154, i8 signext 45)
  store i8* %155, i8** %9, align 8
  %156 = load i8*, i8** %9, align 8
  %157 = icmp ne i8* %156, null
  br i1 %157, label %158, label %161

158:                                              ; preds = %153
  %159 = load i8*, i8** %9, align 8
  %160 = getelementptr inbounds i8, i8* %159, i32 1
  store i8* %160, i8** %9, align 8
  store i8 0, i8* %159, align 1
  br label %161

161:                                              ; preds = %158, %153
  %162 = load i8*, i8** %6, align 8
  %163 = call i32 @strtol(i8* %162, i8** null, i32 0)
  %164 = sub nsw i32 %163, 1
  %165 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %166 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %165, i32 0, i32 7
  store i32 %164, i32* %166, align 8
  %167 = load i8*, i8** %9, align 8
  %168 = icmp ne i8* %167, null
  br i1 %168, label %169, label %180

169:                                              ; preds = %161
  %170 = load i8*, i8** %9, align 8
  %171 = call i32 @strtol(i8* %170, i8** null, i32 0)
  %172 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %173 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %172, i32 0, i32 7
  %174 = load i32, i32* %173, align 8
  %175 = sub nsw i32 %171, %174
  %176 = sub nsw i32 %175, 1
  %177 = add nsw i32 %176, 1
  %178 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %179 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %178, i32 0, i32 8
  store i32 %177, i32* %179, align 4
  br label %183

180:                                              ; preds = %161
  %181 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %182 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %181, i32 0, i32 8
  store i32 1, i32* %182, align 4
  br label %183

183:                                              ; preds = %180, %169
  %184 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %185 = call i64 @InitTelx(%struct.TYPE_15__* %184)
  %186 = load i64, i64* @VLC_SUCCESS, align 8
  %187 = icmp eq i64 %185, %186
  br i1 %187, label %188, label %343

188:                                              ; preds = %183
  store i32 0, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %189 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %190 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 7
  %192 = load i32, i32* %191, align 8
  %193 = add nsw i32 %192, 1
  %194 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %195 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %194, i32 0, i32 7
  %196 = load i32, i32* %195, align 8
  %197 = add nsw i32 %196, 1
  %198 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 8
  %200 = load i32, i32* %199, align 4
  %201 = add nsw i32 %197, %200
  %202 = sub nsw i32 %201, 1
  %203 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %204 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %203, i32 0, i32 7
  %205 = load i32, i32* %204, align 8
  %206 = add nsw i32 %205, 1
  %207 = add nsw i32 %206, 313
  %208 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %209 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %208, i32 0, i32 7
  %210 = load i32, i32* %209, align 8
  %211 = add nsw i32 %210, 1
  %212 = add nsw i32 %211, 313
  %213 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %214 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %213, i32 0, i32 8
  %215 = load i32, i32* %214, align 4
  %216 = add nsw i32 %212, %215
  %217 = sub nsw i32 %216, 1
  %218 = call i32 @msg_Dbg(%struct.TYPE_15__* %189, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %193, i32 %202, i32 %207, i32 %217)
  %219 = load i32, i32* @SPU_ES, align 4
  %220 = load i32, i32* @VLC_CODEC_TELETEXT, align 4
  %221 = call i32 @es_format_Init(%struct.TYPE_14__* %5, i32 %219, i32 %220)
  %222 = load i32, i32* %8, align 4
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 0
  store i32 %222, i32* %223, align 8
  %224 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %225 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %224, i32 0, i32 9
  %226 = load i8*, i8** %225, align 8
  store i8* %226, i8** %6, align 8
  br label %227

227:                                              ; preds = %330, %188
  %228 = load i8*, i8** %6, align 8
  %229 = call i8* @strchr(i8* %228, i8 signext 61)
  store i8* %229, i8** %9, align 8
  %230 = icmp ne i8* %229, null
  br i1 %230, label %231, label %332

231:                                              ; preds = %227
  %232 = load i8*, i8** %9, align 8
  %233 = getelementptr inbounds i8, i8* %232, i32 1
  store i8* %233, i8** %9, align 8
  store i8 0, i8* %232, align 1
  %234 = load i8*, i8** %9, align 8
  %235 = getelementptr inbounds i8, i8* %234, i64 0
  %236 = load i8, i8* %235, align 1
  %237 = icmp ne i8 %236, 0
  br i1 %237, label %238, label %248

238:                                              ; preds = %231
  %239 = load i8*, i8** %9, align 8
  %240 = getelementptr inbounds i8, i8* %239, i64 1
  %241 = load i8, i8* %240, align 1
  %242 = icmp ne i8 %241, 0
  br i1 %242, label %243, label %248

243:                                              ; preds = %238
  %244 = load i8*, i8** %9, align 8
  %245 = getelementptr inbounds i8, i8* %244, i64 2
  %246 = load i8, i8* %245, align 1
  %247 = icmp ne i8 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %243, %238, %231
  br label %332

249:                                              ; preds = %243
  %250 = load i8*, i8** %6, align 8
  %251 = call i32 @strtol(i8* %250, i8** null, i32 0)
  store i32 %251, i32* %12, align 4
  %252 = load i32, i32* %10, align 4
  %253 = add nsw i32 %252, 5
  store i32 %253, i32* %10, align 4
  %254 = load i32*, i32** %11, align 8
  %255 = load i32, i32* %10, align 4
  %256 = call i32* @realloc(i32* %254, i32 %255)
  store i32* %256, i32** %11, align 8
  %257 = load i8*, i8** %9, align 8
  %258 = getelementptr inbounds i8, i8* %257, i32 1
  store i8* %258, i8** %9, align 8
  %259 = load i8, i8* %257, align 1
  %260 = sext i8 %259 to i32
  %261 = load i32*, i32** %11, align 8
  %262 = load i32, i32* %10, align 4
  %263 = sub nsw i32 %262, 5
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds i32, i32* %261, i64 %264
  store i32 %260, i32* %265, align 4
  %266 = load i8*, i8** %9, align 8
  %267 = getelementptr inbounds i8, i8* %266, i32 1
  store i8* %267, i8** %9, align 8
  %268 = load i8, i8* %266, align 1
  %269 = sext i8 %268 to i32
  %270 = load i32*, i32** %11, align 8
  %271 = load i32, i32* %10, align 4
  %272 = sub nsw i32 %271, 4
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds i32, i32* %270, i64 %273
  store i32 %269, i32* %274, align 4
  %275 = load i8*, i8** %9, align 8
  %276 = getelementptr inbounds i8, i8* %275, i32 1
  store i8* %276, i8** %9, align 8
  %277 = load i8, i8* %275, align 1
  %278 = sext i8 %277 to i32
  %279 = load i32*, i32** %11, align 8
  %280 = load i32, i32* %10, align 4
  %281 = sub nsw i32 %280, 3
  %282 = sext i32 %281 to i64
  %283 = getelementptr inbounds i32, i32* %279, i64 %282
  store i32 %278, i32* %283, align 4
  %284 = load i8*, i8** %9, align 8
  %285 = load i8, i8* %284, align 1
  %286 = sext i8 %285 to i32
  %287 = icmp eq i32 %286, 47
  br i1 %287, label %288, label %299

288:                                              ; preds = %249
  %289 = load i8*, i8** %9, align 8
  %290 = getelementptr inbounds i8, i8* %289, i32 1
  store i8* %290, i8** %9, align 8
  %291 = load i8*, i8** %9, align 8
  %292 = call i32 @strtol(i8* %291, i8** %9, i32 0)
  %293 = shl i32 %292, 3
  %294 = load i32*, i32** %11, align 8
  %295 = load i32, i32* %10, align 4
  %296 = sub nsw i32 %295, 2
  %297 = sext i32 %296 to i64
  %298 = getelementptr inbounds i32, i32* %294, i64 %297
  store i32 %293, i32* %298, align 4
  br label %305

299:                                              ; preds = %249
  %300 = load i32*, i32** %11, align 8
  %301 = load i32, i32* %10, align 4
  %302 = sub nsw i32 %301, 2
  %303 = sext i32 %302 to i64
  %304 = getelementptr inbounds i32, i32* %300, i64 %303
  store i32 40, i32* %304, align 4
  br label %305

305:                                              ; preds = %299, %288
  %306 = load i32, i32* %12, align 4
  %307 = sdiv i32 %306, 100
  %308 = and i32 %307, 7
  %309 = load i32*, i32** %11, align 8
  %310 = load i32, i32* %10, align 4
  %311 = sub nsw i32 %310, 2
  %312 = sext i32 %311 to i64
  %313 = getelementptr inbounds i32, i32* %309, i64 %312
  %314 = load i32, i32* %313, align 4
  %315 = or i32 %314, %308
  store i32 %315, i32* %313, align 4
  %316 = load i32, i32* %12, align 4
  %317 = srem i32 %316, 100
  %318 = load i32*, i32** %11, align 8
  %319 = load i32, i32* %10, align 4
  %320 = sub nsw i32 %319, 1
  %321 = sext i32 %320 to i64
  %322 = getelementptr inbounds i32, i32* %318, i64 %321
  store i32 %317, i32* %322, align 4
  %323 = load i8*, i8** %9, align 8
  %324 = load i8, i8* %323, align 1
  %325 = sext i8 %324 to i32
  %326 = icmp eq i32 %325, 44
  br i1 %326, label %327, label %330

327:                                              ; preds = %305
  %328 = load i8*, i8** %9, align 8
  %329 = getelementptr inbounds i8, i8* %328, i32 1
  store i8* %329, i8** %9, align 8
  br label %330

330:                                              ; preds = %327, %305
  %331 = load i8*, i8** %9, align 8
  store i8* %331, i8** %6, align 8
  br label %227

332:                                              ; preds = %248, %227
  %333 = load i32, i32* %10, align 4
  %334 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 1
  store i32 %333, i32* %334, align 4
  %335 = load i32*, i32** %11, align 8
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %5, i32 0, i32 2
  store i32* %335, i32** %336, align 8
  %337 = load %struct.TYPE_15__*, %struct.TYPE_15__** %3, align 8
  %338 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %337, i32 0, i32 0
  %339 = load i32, i32* %338, align 8
  %340 = call i8* @es_out_Add(i32 %339, %struct.TYPE_14__* %5)
  %341 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %342 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %341, i32 0, i32 10
  store i8* %340, i8** %342, align 8
  br label %346

343:                                              ; preds = %183
  %344 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %345 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %344, i32 0, i32 8
  store i32 0, i32* %345, align 4
  br label %346

346:                                              ; preds = %343, %332
  br label %347

347:                                              ; preds = %346, %138
  br label %348

348:                                              ; preds = %347, %128, %122
  %349 = load i64, i64* @VLC_SUCCESS, align 8
  %350 = trunc i64 %349 to i32
  store i32 %350, i32* %2, align 4
  br label %351

351:                                              ; preds = %348, %46
  %352 = load i32, i32* %2, align 4
  ret i32 %352
}

declare dso_local i32 @vlc_tick_from_samples(i32, i32) #1

declare dso_local i64 @NewFrame(%struct.TYPE_15__*) #1

declare dso_local i32 @es_format_Init(%struct.TYPE_14__*, i32, i32) #1

declare dso_local i8* @es_out_Add(i32, %struct.TYPE_14__*) #1

declare dso_local i64 @InitWSS(%struct.TYPE_15__*) #1

declare dso_local i32 @msg_Warn(%struct.TYPE_15__*, i8*) #1

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @strtol(i8*, i8**, i32) #1

declare dso_local i64 @InitTelx(%struct.TYPE_15__*) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_15__*, i8*, i32, i32, i32, i32) #1

declare dso_local i32* @realloc(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
