; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_object.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_dvbsub.c_decode_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_16__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i32, %struct.TYPE_14__*, %struct.TYPE_15__* }
%struct.TYPE_14__ = type { i32, i8*, i64, i32 }
%struct.TYPE_18__ = type { i32*, i32* }

@.str = private unnamed_addr constant [49 x i8] c"unknown DVB subtitling coding %d is not handled!\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"corrupted object data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_16__*, %struct.TYPE_18__*, i32)* @decode_object to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @decode_object(%struct.TYPE_16__* %0, %struct.TYPE_18__* %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_16__*, align 8
  %5 = alloca %struct.TYPE_18__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_17__*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  store %struct.TYPE_16__* %0, %struct.TYPE_16__** %4, align 8
  store %struct.TYPE_18__* %1, %struct.TYPE_18__** %5, align 8
  store i32 %2, i32* %6, align 4
  %19 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %20 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  store %struct.TYPE_17__* %21, %struct.TYPE_17__** %7, align 8
  %22 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %23 = call i32 @bs_read(%struct.TYPE_18__* %22, i32 16)
  store i32 %23, i32* %10, align 4
  %24 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %25 = call i32 @bs_skip(%struct.TYPE_18__* %24, i32 4)
  %26 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %27 = call i32 @bs_read(%struct.TYPE_18__* %26, i32 2)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp sgt i32 %28, 1
  br i1 %29, label %30, label %40

30:                                               ; preds = %3
  %31 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %32 = load i32, i32* %9, align 4
  %33 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %31, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %35 = load i32, i32* %6, align 4
  %36 = sub nsw i32 %35, 2
  %37 = mul nsw i32 8, %36
  %38 = sub nsw i32 %37, 6
  %39 = call i32 @bs_skip(%struct.TYPE_18__* %34, i32 %38)
  br label %366

40:                                               ; preds = %3
  %41 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %41, i32 0, i32 0
  %43 = load %struct.TYPE_15__*, %struct.TYPE_15__** %42, align 8
  store %struct.TYPE_15__* %43, %struct.TYPE_15__** %8, align 8
  br label %44

44:                                               ; preds = %78, %40
  %45 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %46 = icmp ne %struct.TYPE_15__* %45, null
  br i1 %46, label %47, label %82

47:                                               ; preds = %44
  store i32 0, i32* %11, align 4
  br label %48

48:                                               ; preds = %67, %47
  %49 = load i32, i32* %11, align 4
  %50 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %51 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = icmp slt i32 %49, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %48
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 1
  %57 = load %struct.TYPE_14__*, %struct.TYPE_14__** %56, align 8
  %58 = load i32, i32* %11, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i64 %59
  %61 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* %10, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %54
  br label %70

66:                                               ; preds = %54
  br label %67

67:                                               ; preds = %66
  %68 = load i32, i32* %11, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %11, align 4
  br label %48

70:                                               ; preds = %65, %48
  %71 = load i32, i32* %11, align 4
  %72 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = icmp ne i32 %71, %74
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %82

77:                                               ; preds = %70
  br label %78

78:                                               ; preds = %77
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 2
  %81 = load %struct.TYPE_15__*, %struct.TYPE_15__** %80, align 8
  store %struct.TYPE_15__* %81, %struct.TYPE_15__** %8, align 8
  br label %44

82:                                               ; preds = %76, %44
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %84 = icmp ne %struct.TYPE_15__* %83, null
  br i1 %84, label %92, label %85

85:                                               ; preds = %82
  %86 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %87 = load i32, i32* %6, align 4
  %88 = sub nsw i32 %87, 2
  %89 = mul nsw i32 8, %88
  %90 = sub nsw i32 %89, 6
  %91 = call i32 @bs_skip(%struct.TYPE_18__* %86, i32 %90)
  br label %366

92:                                               ; preds = %82
  %93 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %94 = call i32 @bs_skip(%struct.TYPE_18__* %93, i32 1)
  %95 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %96 = call i32 @bs_skip(%struct.TYPE_18__* %95, i32 1)
  %97 = load i32, i32* %9, align 4
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %248

99:                                               ; preds = %92
  %100 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %101 = call i32 @bs_read(%struct.TYPE_18__* %100, i32 16)
  store i32 %101, i32* %12, align 4
  %102 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %103 = call i32 @bs_read(%struct.TYPE_18__* %102, i32 16)
  store i32 %103, i32* %13, align 4
  %104 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %108 = call i32 @bs_pos(%struct.TYPE_18__* %107)
  %109 = sdiv i32 %108, 8
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds i32, i32* %106, i64 %110
  store i32* %111, i32** %14, align 8
  %112 = load i32*, i32** %14, align 8
  %113 = load i32, i32* %12, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %112, i64 %114
  store i32* %115, i32** %15, align 8
  %116 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %117 = load i32, i32* %6, align 4
  %118 = sub nsw i32 %117, 7
  %119 = mul nsw i32 8, %118
  %120 = call i32 @bs_skip(%struct.TYPE_18__* %116, i32 %119)
  %121 = load i32, i32* %6, align 4
  %122 = load i32, i32* %12, align 4
  %123 = load i32, i32* %13, align 4
  %124 = add nsw i32 %122, %123
  %125 = add nsw i32 %124, 7
  %126 = icmp slt i32 %121, %125
  br i1 %126, label %139, label %127

127:                                              ; preds = %99
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* %12, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = load i32, i32* %13, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds i32, i32* %131, i64 %133
  %135 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %135, i32 0, i32 0
  %137 = load i32*, i32** %136, align 8
  %138 = icmp ugt i32* %134, %137
  br i1 %138, label %139, label %142

139:                                              ; preds = %127, %99
  %140 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %141 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %140, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %366

142:                                              ; preds = %127
  %143 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %144 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %143, i32 0, i32 0
  %145 = load %struct.TYPE_15__*, %struct.TYPE_15__** %144, align 8
  store %struct.TYPE_15__* %145, %struct.TYPE_15__** %8, align 8
  br label %146

146:                                              ; preds = %243, %142
  %147 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %148 = icmp ne %struct.TYPE_15__* %147, null
  br i1 %148, label %149, label %247

149:                                              ; preds = %146
  store i32 0, i32* %11, align 4
  br label %150

150:                                              ; preds = %239, %149
  %151 = load i32, i32* %11, align 4
  %152 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %153 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = icmp slt i32 %151, %154
  br i1 %155, label %156, label %242

156:                                              ; preds = %150
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 1
  %159 = load %struct.TYPE_14__*, %struct.TYPE_14__** %158, align 8
  %160 = load i32, i32* %11, align 4
  %161 = sext i32 %160 to i64
  %162 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %159, i64 %161
  %163 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %162, i32 0, i32 0
  %164 = load i32, i32* %163, align 8
  %165 = load i32, i32* %10, align 4
  %166 = icmp ne i32 %164, %165
  br i1 %166, label %167, label %168

167:                                              ; preds = %156
  br label %239

168:                                              ; preds = %156
  %169 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %170 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %171 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %172 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %171, i32 0, i32 1
  %173 = load %struct.TYPE_14__*, %struct.TYPE_14__** %172, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %173, i64 %175
  %177 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %176, i32 0, i32 3
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %180 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %179, i32 0, i32 1
  %181 = load %struct.TYPE_14__*, %struct.TYPE_14__** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %184, i32 0, i32 2
  %186 = load i64, i64* %185, align 8
  %187 = load i32*, i32** %14, align 8
  %188 = load i32, i32* %12, align 4
  %189 = call i32 @dvbsub_render_pdata(%struct.TYPE_16__* %169, %struct.TYPE_15__* %170, i32 %178, i64 %186, i32* %187, i32 %188)
  %190 = load i32, i32* %13, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %215

192:                                              ; preds = %168
  %193 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %194 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %195 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  %197 = load %struct.TYPE_14__*, %struct.TYPE_14__** %196, align 8
  %198 = load i32, i32* %11, align 4
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %197, i64 %199
  %201 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %200, i32 0, i32 3
  %202 = load i32, i32* %201, align 8
  %203 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 1
  %205 = load %struct.TYPE_14__*, %struct.TYPE_14__** %204, align 8
  %206 = load i32, i32* %11, align 4
  %207 = sext i32 %206 to i64
  %208 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %205, i64 %207
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 2
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, 1
  %212 = load i32*, i32** %15, align 8
  %213 = load i32, i32* %13, align 4
  %214 = call i32 @dvbsub_render_pdata(%struct.TYPE_16__* %193, %struct.TYPE_15__* %194, i32 %202, i64 %211, i32* %212, i32 %213)
  br label %238

215:                                              ; preds = %168
  %216 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %218 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %219 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %218, i32 0, i32 1
  %220 = load %struct.TYPE_14__*, %struct.TYPE_14__** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = sext i32 %221 to i64
  %223 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %220, i64 %222
  %224 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 8
  %226 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %227 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %226, i32 0, i32 1
  %228 = load %struct.TYPE_14__*, %struct.TYPE_14__** %227, align 8
  %229 = load i32, i32* %11, align 4
  %230 = sext i32 %229 to i64
  %231 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %228, i64 %230
  %232 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %231, i32 0, i32 2
  %233 = load i64, i64* %232, align 8
  %234 = add nsw i64 %233, 1
  %235 = load i32*, i32** %14, align 8
  %236 = load i32, i32* %12, align 4
  %237 = call i32 @dvbsub_render_pdata(%struct.TYPE_16__* %216, %struct.TYPE_15__* %217, i32 %225, i64 %234, i32* %235, i32 %236)
  br label %238

238:                                              ; preds = %215, %192
  br label %239

239:                                              ; preds = %238, %167
  %240 = load i32, i32* %11, align 4
  %241 = add nsw i32 %240, 1
  store i32 %241, i32* %11, align 4
  br label %150

242:                                              ; preds = %150
  br label %243

243:                                              ; preds = %242
  %244 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %244, i32 0, i32 2
  %246 = load %struct.TYPE_15__*, %struct.TYPE_15__** %245, align 8
  store %struct.TYPE_15__* %246, %struct.TYPE_15__** %8, align 8
  br label %146

247:                                              ; preds = %146
  br label %366

248:                                              ; preds = %92
  %249 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %250 = call i32 @bs_read(%struct.TYPE_18__* %249, i32 8)
  store i32 %250, i32* %16, align 4
  %251 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %252 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %251, i32 0, i32 1
  %253 = load i32*, i32** %252, align 8
  %254 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %255 = call i32 @bs_pos(%struct.TYPE_18__* %254)
  %256 = sdiv i32 %255, 8
  %257 = sext i32 %256 to i64
  %258 = getelementptr inbounds i32, i32* %253, i64 %257
  store i32* %258, i32** %17, align 8
  %259 = load i32, i32* %6, align 4
  %260 = load i32, i32* %16, align 4
  %261 = mul nsw i32 %260, 2
  %262 = add nsw i32 %261, 4
  %263 = icmp slt i32 %259, %262
  br i1 %263, label %274, label %264

264:                                              ; preds = %248
  %265 = load i32*, i32** %17, align 8
  %266 = load i32, i32* %16, align 4
  %267 = mul nsw i32 %266, 2
  %268 = sext i32 %267 to i64
  %269 = getelementptr inbounds i32, i32* %265, i64 %268
  %270 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %271 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %270, i32 0, i32 0
  %272 = load i32*, i32** %271, align 8
  %273 = icmp ugt i32* %269, %272
  br i1 %273, label %274, label %277

274:                                              ; preds = %264, %248
  %275 = load %struct.TYPE_16__*, %struct.TYPE_16__** %4, align 8
  %276 = call i32 (%struct.TYPE_16__*, i8*, ...) @msg_Dbg(%struct.TYPE_16__* %275, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0))
  br label %366

277:                                              ; preds = %264
  %278 = load %struct.TYPE_17__*, %struct.TYPE_17__** %7, align 8
  %279 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %278, i32 0, i32 0
  %280 = load %struct.TYPE_15__*, %struct.TYPE_15__** %279, align 8
  store %struct.TYPE_15__* %280, %struct.TYPE_15__** %8, align 8
  br label %281

281:                                              ; preds = %361, %277
  %282 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %283 = icmp ne %struct.TYPE_15__* %282, null
  br i1 %283, label %284, label %365

284:                                              ; preds = %281
  store i32 0, i32* %11, align 4
  br label %285

285:                                              ; preds = %357, %284
  %286 = load i32, i32* %11, align 4
  %287 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %288 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = icmp slt i32 %286, %289
  br i1 %290, label %291, label %360

291:                                              ; preds = %285
  %292 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %293 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %292, i32 0, i32 1
  %294 = load %struct.TYPE_14__*, %struct.TYPE_14__** %293, align 8
  %295 = load i32, i32* %11, align 4
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %294, i64 %296
  %298 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %297, i32 0, i32 0
  %299 = load i32, i32* %298, align 8
  %300 = load i32, i32* %10, align 4
  %301 = icmp ne i32 %299, %300
  br i1 %301, label %302, label %303

302:                                              ; preds = %291
  br label %357

303:                                              ; preds = %291
  %304 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %305 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %304, i32 0, i32 1
  %306 = load %struct.TYPE_14__*, %struct.TYPE_14__** %305, align 8
  %307 = load i32, i32* %11, align 4
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %306, i64 %308
  %310 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %309, i32 0, i32 1
  %311 = load i8*, i8** %310, align 8
  %312 = load i32, i32* %16, align 4
  %313 = add nsw i32 %312, 1
  %314 = call i8* @xrealloc(i8* %311, i32 %313)
  %315 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %316 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %315, i32 0, i32 1
  %317 = load %struct.TYPE_14__*, %struct.TYPE_14__** %316, align 8
  %318 = load i32, i32* %11, align 4
  %319 = sext i32 %318 to i64
  %320 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i64 %319
  %321 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %320, i32 0, i32 1
  store i8* %314, i8** %321, align 8
  store i32 0, i32* %18, align 4
  br label %322

322:                                              ; preds = %342, %303
  %323 = load i32, i32* %18, align 4
  %324 = load i32, i32* %16, align 4
  %325 = icmp slt i32 %323, %324
  br i1 %325, label %326, label %345

326:                                              ; preds = %322
  %327 = load %struct.TYPE_18__*, %struct.TYPE_18__** %5, align 8
  %328 = call i32 @bs_read(%struct.TYPE_18__* %327, i32 16)
  %329 = and i32 %328, 255
  %330 = trunc i32 %329 to i8
  %331 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %332 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %331, i32 0, i32 1
  %333 = load %struct.TYPE_14__*, %struct.TYPE_14__** %332, align 8
  %334 = load i32, i32* %11, align 4
  %335 = sext i32 %334 to i64
  %336 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %333, i64 %335
  %337 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %336, i32 0, i32 1
  %338 = load i8*, i8** %337, align 8
  %339 = load i32, i32* %18, align 4
  %340 = sext i32 %339 to i64
  %341 = getelementptr inbounds i8, i8* %338, i64 %340
  store i8 %330, i8* %341, align 1
  br label %342

342:                                              ; preds = %326
  %343 = load i32, i32* %18, align 4
  %344 = add nsw i32 %343, 1
  store i32 %344, i32* %18, align 4
  br label %322

345:                                              ; preds = %322
  %346 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %347 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %346, i32 0, i32 1
  %348 = load %struct.TYPE_14__*, %struct.TYPE_14__** %347, align 8
  %349 = load i32, i32* %11, align 4
  %350 = sext i32 %349 to i64
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %348, i64 %350
  %352 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %351, i32 0, i32 1
  %353 = load i8*, i8** %352, align 8
  %354 = load i32, i32* %18, align 4
  %355 = sext i32 %354 to i64
  %356 = getelementptr inbounds i8, i8* %353, i64 %355
  store i8 0, i8* %356, align 1
  br label %357

357:                                              ; preds = %345, %302
  %358 = load i32, i32* %11, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %11, align 4
  br label %285

360:                                              ; preds = %285
  br label %361

361:                                              ; preds = %360
  %362 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %363 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %362, i32 0, i32 2
  %364 = load %struct.TYPE_15__*, %struct.TYPE_15__** %363, align 8
  store %struct.TYPE_15__* %364, %struct.TYPE_15__** %8, align 8
  br label %281

365:                                              ; preds = %281
  br label %366

366:                                              ; preds = %30, %85, %139, %274, %365, %247
  ret void
}

declare dso_local i32 @bs_read(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @bs_skip(%struct.TYPE_18__*, i32) #1

declare dso_local i32 @msg_Dbg(%struct.TYPE_16__*, i8*, ...) #1

declare dso_local i32 @bs_pos(%struct.TYPE_18__*) #1

declare dso_local i32 @dvbsub_render_pdata(%struct.TYPE_16__*, %struct.TYPE_15__*, i32, i64, i32*, i32) #1

declare dso_local i8* @xrealloc(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
