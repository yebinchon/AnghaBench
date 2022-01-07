; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_scte27.c_Decode.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_scte27.c_Decode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32, i64, i64, i32* }
%struct.TYPE_12__ = type { i32, i32, i32*, i64, i64 }

@VLCDEC_SUCCESS = common dso_local global i32 0, align 4
@BLOCK_FLAG_CORRUPTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"Invalid SCTE-27 section length\00", align 1
@.str.1 = private unnamed_addr constant [42 x i8] c"Unsupported SCTE-27 protocol version (%d)\00", align 1
@VLC_TICK_INVALID = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, %struct.TYPE_12__*)* @Decode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Decode(%struct.TYPE_10__* %0, %struct.TYPE_12__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_10__*, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_11__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %4, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %5, align 8
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_11__*, %struct.TYPE_11__** %17, align 8
  store %struct.TYPE_11__* %18, %struct.TYPE_11__** %6, align 8
  %19 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %20 = icmp eq %struct.TYPE_12__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %22, i32* %3, align 4
  br label %281

23:                                               ; preds = %2
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @BLOCK_FLAG_CORRUPTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %23
  br label %277

31:                                               ; preds = %23
  br label %32

32:                                               ; preds = %31
  %33 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 3
  br i1 %36, label %37, label %276

37:                                               ; preds = %32
  %38 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %39 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 0
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %7, align 4
  %43 = load i32, i32* %7, align 4
  %44 = icmp ne i32 %43, 198
  br i1 %44, label %45, label %46

45:                                               ; preds = %37
  br label %276

46:                                               ; preds = %37
  %47 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = and i32 %51, 15
  %53 = shl i32 %52, 8
  %54 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %55 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %54, i32 0, i32 2
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 2
  %58 = load i32, i32* %57, align 4
  %59 = or i32 %53, %58
  store i32 %59, i32* %8, align 4
  %60 = load i32, i32* %8, align 4
  %61 = icmp sle i32 %60, 5
  br i1 %61, label %69, label %62

62:                                               ; preds = %46
  %63 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %8, align 4
  %67 = add i32 3, %66
  %68 = icmp ult i32 %65, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %62, %46
  %70 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %71 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %70, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  br label %276

72:                                               ; preds = %62
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 2
  %75 = load i32*, i32** %74, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 3
  %77 = load i32, i32* %76, align 4
  %78 = and i32 %77, 63
  store i32 %78, i32* %9, align 4
  %79 = load i32, i32* %9, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %72
  %82 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %83 = load i32, i32* %9, align 4
  %84 = call i32 (%struct.TYPE_10__*, i8*, ...) @msg_Err(%struct.TYPE_10__* %82, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %83)
  br label %276

85:                                               ; preds = %72
  %86 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %87 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %86, i32 0, i32 2
  %88 = load i32*, i32** %87, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 3
  %90 = load i32, i32* %89, align 4
  %91 = and i32 %90, 64
  store i32 %91, i32* %10, align 4
  store i32* null, i32** %11, align 8
  %92 = load i32, i32* %10, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %230

94:                                               ; preds = %85
  %95 = load i32, i32* %8, align 4
  %96 = icmp slt i32 %95, 10
  br i1 %96, label %97, label %98

97:                                               ; preds = %94
  br label %276

98:                                               ; preds = %94
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = load i32*, i32** %100, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 4
  %103 = call i32 @GetWBE(i32* %102)
  store i32 %103, i32* %12, align 4
  %104 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 2
  %106 = load i32*, i32** %105, align 8
  %107 = getelementptr inbounds i32, i32* %106, i64 6
  %108 = load i32, i32* %107, align 4
  %109 = shl i32 %108, 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 2
  %112 = load i32*, i32** %111, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 7
  %114 = load i32, i32* %113, align 4
  %115 = ashr i32 %114, 4
  %116 = or i32 %109, %115
  store i32 %116, i32* %13, align 4
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = load i32*, i32** %118, align 8
  %120 = getelementptr inbounds i32, i32* %119, i64 7
  %121 = load i32, i32* %120, align 4
  %122 = and i32 %121, 15
  %123 = shl i32 %122, 8
  %124 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 8
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %123, %128
  store i32 %129, i32* %14, align 4
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %13, align 4
  %132 = icmp sgt i32 %130, %131
  br i1 %132, label %133, label %134

133:                                              ; preds = %98
  br label %276

134:                                              ; preds = %98
  %135 = load i32, i32* %14, align 4
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %160

137:                                              ; preds = %134
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 0
  store i32 %138, i32* %140, align 8
  %141 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %141, i32 0, i32 1
  store i64 0, i64* %142, align 8
  %143 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %144 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %143, i32 0, i32 3
  %145 = load i64, i64* %144, align 8
  %146 = load i64, i64* @VLC_TICK_INVALID, align 8
  %147 = icmp ne i64 %145, %146
  br i1 %147, label %148, label %152

148:                                              ; preds = %137
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 3
  %151 = load i64, i64* %150, align 8
  br label %156

152:                                              ; preds = %137
  %153 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %153, i32 0, i32 4
  %155 = load i64, i64* %154, align 8
  br label %156

156:                                              ; preds = %152, %148
  %157 = phi i64 [ %151, %148 ], [ %155, %152 ]
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %158, i32 0, i32 2
  store i64 %157, i64* %159, align 8
  br label %175

160:                                              ; preds = %134
  %161 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 8
  %164 = load i32, i32* %12, align 4
  %165 = icmp ne i32 %163, %164
  br i1 %165, label %171, label %166

166:                                              ; preds = %160
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 1
  %169 = load i64, i64* %168, align 8
  %170 = icmp sle i64 %169, 0
  br i1 %170, label %171, label %174

171:                                              ; preds = %166, %160
  %172 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 0
  store i32 -1, i32* %173, align 8
  br label %276

174:                                              ; preds = %166
  br label %175

175:                                              ; preds = %174, %156
  %176 = load i32, i32* %8, align 4
  %177 = sub nsw i32 %176, 1
  %178 = sub nsw i32 %177, 5
  %179 = sub nsw i32 %178, 4
  store i32 %179, i32* %15, align 4
  %180 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 3
  %182 = load i32*, i32** %181, align 8
  %183 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %184 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %183, i32 0, i32 1
  %185 = load i64, i64* %184, align 8
  %186 = load i32, i32* %15, align 4
  %187 = sext i32 %186 to i64
  %188 = add nsw i64 %185, %187
  %189 = call i32* @xrealloc(i32* %182, i64 %188)
  %190 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %191 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %190, i32 0, i32 3
  store i32* %189, i32** %191, align 8
  %192 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %193 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %192, i32 0, i32 3
  %194 = load i32*, i32** %193, align 8
  %195 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %196 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %195, i32 0, i32 1
  %197 = load i64, i64* %196, align 8
  %198 = getelementptr inbounds i32, i32* %194, i64 %197
  %199 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %200 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %199, i32 0, i32 2
  %201 = load i32*, i32** %200, align 8
  %202 = getelementptr inbounds i32, i32* %201, i64 9
  %203 = load i32, i32* %15, align 4
  %204 = call i32 @memcpy(i32* %198, i32* %202, i32 %203)
  %205 = load i32, i32* %15, align 4
  %206 = sext i32 %205 to i64
  %207 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %208 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %207, i32 0, i32 1
  %209 = load i64, i64* %208, align 8
  %210 = add nsw i64 %209, %206
  store i64 %210, i64* %208, align 8
  %211 = load i32, i32* %14, align 4
  %212 = load i32, i32* %13, align 4
  %213 = icmp eq i32 %211, %212
  br i1 %213, label %214, label %229

214:                                              ; preds = %175
  %215 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %216 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %217 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %216, i32 0, i32 3
  %218 = load i32*, i32** %217, align 8
  %219 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %220 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %219, i32 0, i32 1
  %221 = load i64, i64* %220, align 8
  %222 = trunc i64 %221 to i32
  %223 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %224 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %223, i32 0, i32 2
  %225 = load i64, i64* %224, align 8
  %226 = call i32* @DecodeSubtitleMessage(%struct.TYPE_10__* %215, i32* %218, i32 %222, i64 %225)
  store i32* %226, i32** %11, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 1
  store i64 0, i64* %228, align 8
  br label %229

229:                                              ; preds = %214, %175
  br label %255

230:                                              ; preds = %85
  %231 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %232 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %233 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %232, i32 0, i32 2
  %234 = load i32*, i32** %233, align 8
  %235 = getelementptr inbounds i32, i32* %234, i64 4
  %236 = load i32, i32* %8, align 4
  %237 = sub nsw i32 %236, 1
  %238 = sub nsw i32 %237, 4
  %239 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %240 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %239, i32 0, i32 3
  %241 = load i64, i64* %240, align 8
  %242 = load i64, i64* @VLC_TICK_INVALID, align 8
  %243 = icmp ne i64 %241, %242
  br i1 %243, label %244, label %248

244:                                              ; preds = %230
  %245 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %246 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %245, i32 0, i32 3
  %247 = load i64, i64* %246, align 8
  br label %252

248:                                              ; preds = %230
  %249 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %250 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %249, i32 0, i32 4
  %251 = load i64, i64* %250, align 8
  br label %252

252:                                              ; preds = %248, %244
  %253 = phi i64 [ %247, %244 ], [ %251, %248 ]
  %254 = call i32* @DecodeSubtitleMessage(%struct.TYPE_10__* %231, i32* %235, i32 %238, i64 %253)
  store i32* %254, i32** %11, align 8
  br label %255

255:                                              ; preds = %252, %229
  %256 = load i32*, i32** %11, align 8
  %257 = icmp ne i32* %256, null
  br i1 %257, label %258, label %262

258:                                              ; preds = %255
  %259 = load %struct.TYPE_10__*, %struct.TYPE_10__** %4, align 8
  %260 = load i32*, i32** %11, align 8
  %261 = call i32 @decoder_QueueSub(%struct.TYPE_10__* %259, i32* %260)
  br label %262

262:                                              ; preds = %258, %255
  %263 = load i32, i32* %8, align 4
  %264 = add nsw i32 3, %263
  %265 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %266 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %265, i32 0, i32 1
  %267 = load i32, i32* %266, align 4
  %268 = sub nsw i32 %267, %264
  store i32 %268, i32* %266, align 4
  %269 = load i32, i32* %8, align 4
  %270 = add nsw i32 3, %269
  %271 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %272 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %271, i32 0, i32 2
  %273 = load i32*, i32** %272, align 8
  %274 = sext i32 %270 to i64
  %275 = getelementptr inbounds i32, i32* %273, i64 %274
  store i32* %275, i32** %272, align 8
  br label %276

276:                                              ; preds = %262, %171, %133, %97, %81, %69, %45, %32
  br label %277

277:                                              ; preds = %276, %30
  %278 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %279 = call i32 @block_Release(%struct.TYPE_12__* %278)
  %280 = load i32, i32* @VLCDEC_SUCCESS, align 4
  store i32 %280, i32* %3, align 4
  br label %281

281:                                              ; preds = %277, %21
  %282 = load i32, i32* %3, align 4
  ret i32 %282
}

declare dso_local i32 @msg_Err(%struct.TYPE_10__*, i8*, ...) #1

declare dso_local i32 @GetWBE(i32*) #1

declare dso_local i32* @xrealloc(i32*, i64) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32* @DecodeSubtitleMessage(%struct.TYPE_10__*, i32*, i32, i64) #1

declare dso_local i32 @decoder_QueueSub(%struct.TYPE_10__*, i32*) #1

declare dso_local i32 @block_Release(%struct.TYPE_12__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
