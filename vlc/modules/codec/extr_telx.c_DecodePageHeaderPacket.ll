; ModuleID = '/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_DecodePageHeaderPacket.c'
source_filename = "/home/carl/AnghaBench/vlc/modules/codec/extr_telx.c_DecodePageHeaderPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32*, i32, i32*, i32, i32*, i64**, i32, i32* }

@.str = private unnamed_addr constant [57 x i8] c"mag %d flags %x page %x character set %d subtitles %d %s\00", align 1
@FLAG_SUBTITLE = common dso_local global i32 0, align 4
@ppi_national_subsets = common dso_local global i32* null, align 8
@FLAG_SUPPRESS_HEADER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"FLAGS%s%s%s%s%s%s%s mag_ser %d\00", align 1
@FLAG_ERASE_PAGE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [7 x i8] c" erase\00", align 1
@.str.3 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@FLAG_NEWSFLASH = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i8] c" news\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" subtitle\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c" suppressed_head\00", align 1
@FLAG_UPDATE = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [8 x i8] c" update\00", align 1
@FLAG_INTERRUPTED = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [11 x i8] c" interrupt\00", align 1
@FLAG_INHIBIT_DISPLAY = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [9 x i8] c" inhibit\00", align 1
@FLAG_MAGAZINE_SERIAL = common dso_local global i32 0, align 4
@.str.10 = private unnamed_addr constant [8 x i8] c"ERASE !\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_6__*, i32*, i32)* @DecodePageHeaderPacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @DecodePageHeaderPacket(%struct.TYPE_6__* %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [256 x i8], align 16
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 0
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** %15, align 8
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %8, align 8
  store i32 0, i32* %9, align 4
  store i32 0, i32* %11, align 4
  br label %17

17:                                               ; preds = %36, %3
  %18 = load i32, i32* %11, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %39

20:                                               ; preds = %17
  %21 = load i32*, i32** %6, align 8
  %22 = load i32, i32* %11, align 4
  %23 = add nsw i32 8, %22
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %21, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @hamming_8_4(i32 %26)
  %28 = call i32 @bytereverse(i32 %27)
  %29 = ashr i32 %28, 4
  %30 = and i32 15, %29
  %31 = load i32, i32* %11, align 4
  %32 = mul nsw i32 %31, 4
  %33 = shl i32 %30, %32
  %34 = load i32, i32* %9, align 4
  %35 = or i32 %34, %33
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %20
  %37 = load i32, i32* %11, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %11, align 4
  br label %17

39:                                               ; preds = %17
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 7
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @hamming_8_4(i32 %42)
  %44 = call i32 @bytereverse(i32 %43)
  %45 = and i32 240, %44
  %46 = load i32*, i32** %6, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 6
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @hamming_8_4(i32 %48)
  %50 = call i32 @bytereverse(i32 %49)
  %51 = ashr i32 %50, 4
  %52 = and i32 15, %51
  %53 = or i32 %45, %52
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds i32, i32* %56, i64 %58
  store i32 %53, i32* %59, align 4
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %61 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %62 = load i32, i32* %7, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 14
  %65 = call i32 @decode_string(i8* %60, i32 256, %struct.TYPE_7__* %61, i32 %62, i32* %64, i32 26)
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %67 = load i32, i32* %7, align 4
  %68 = load i32, i32* %9, align 4
  %69 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i32, i32* %7, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds i32, i32* %71, i64 %73
  %75 = load i32, i32* %74, align 4
  %76 = load i32, i32* %9, align 4
  %77 = ashr i32 %76, 21
  %78 = and i32 7, %77
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* @FLAG_SUBTITLE, align 4
  %81 = and i32 %79, %80
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = xor i1 %83, true
  %85 = zext i1 %84 to i32
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %87 = bitcast i8* %86 to %struct.TYPE_6__*
  %88 = call i32 @dbg(%struct.TYPE_6__* %87)
  %89 = load i32*, i32** @ppi_national_subsets, align 8
  %90 = load i32, i32* %9, align 4
  %91 = ashr i32 %90, 21
  %92 = and i32 7, %91
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32, i32* %89, i64 %93
  %95 = load i32, i32* %94, align 4
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %97 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %96, i32 0, i32 7
  %98 = load i32*, i32** %97, align 8
  %99 = load i32, i32* %7, align 4
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %98, i64 %100
  store i32 %95, i32* %101, align 4
  %102 = load i32, i32* @FLAG_SUBTITLE, align 4
  store i32 %102, i32* %12, align 4
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %104 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 8
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %116, label %107

107:                                              ; preds = %39
  %108 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %109 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %108, i32 0, i32 1
  %110 = load i32, i32* %109, align 8
  %111 = icmp ne i32 %110, 7
  br i1 %111, label %112, label %116

112:                                              ; preds = %107
  %113 = load i32, i32* @FLAG_SUPPRESS_HEADER, align 4
  %114 = load i32, i32* %12, align 4
  %115 = or i32 %114, %113
  store i32 %115, i32* %12, align 4
  br label %116

116:                                              ; preds = %112, %107, %39
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %12, align 4
  %119 = and i32 %117, %118
  %120 = load i32, i32* %12, align 4
  %121 = icmp ne i32 %119, %120
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %125 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %124, i32 0, i32 2
  %126 = load i32*, i32** %125, align 8
  %127 = load i32, i32* %7, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  store i32 %123, i32* %129, align 4
  %130 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %131 = load i32, i32* %9, align 4
  %132 = load i32, i32* @FLAG_ERASE_PAGE, align 4
  %133 = and i32 %131, %132
  %134 = icmp ne i32 %133, 0
  %135 = zext i1 %134 to i64
  %136 = select i1 %134, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %137 = load i32, i32* %9, align 4
  %138 = load i32, i32* @FLAG_NEWSFLASH, align 4
  %139 = and i32 %137, %138
  %140 = icmp ne i32 %139, 0
  %141 = zext i1 %140 to i64
  %142 = select i1 %140, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %143 = load i32, i32* %9, align 4
  %144 = load i32, i32* @FLAG_SUBTITLE, align 4
  %145 = and i32 %143, %144
  %146 = icmp ne i32 %145, 0
  %147 = zext i1 %146 to i64
  %148 = select i1 %146, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %149 = load i32, i32* %9, align 4
  %150 = load i32, i32* @FLAG_SUPPRESS_HEADER, align 4
  %151 = and i32 %149, %150
  %152 = icmp ne i32 %151, 0
  %153 = zext i1 %152 to i64
  %154 = select i1 %152, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %155 = load i32, i32* %9, align 4
  %156 = load i32, i32* @FLAG_UPDATE, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  %159 = zext i1 %158 to i64
  %160 = select i1 %158, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %161 = load i32, i32* %9, align 4
  %162 = load i32, i32* @FLAG_INTERRUPTED, align 4
  %163 = and i32 %161, %162
  %164 = icmp ne i32 %163, 0
  %165 = zext i1 %164 to i64
  %166 = select i1 %164, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.8, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %167 = load i32, i32* %9, align 4
  %168 = load i32, i32* @FLAG_INHIBIT_DISPLAY, align 4
  %169 = and i32 %167, %168
  %170 = icmp ne i32 %169, 0
  %171 = zext i1 %170 to i64
  %172 = select i1 %170, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.3, i64 0, i64 0)
  %173 = load i32, i32* %9, align 4
  %174 = load i32, i32* @FLAG_MAGAZINE_SERIAL, align 4
  %175 = and i32 %173, %174
  %176 = icmp ne i32 %175, 0
  %177 = xor i1 %176, true
  %178 = xor i1 %177, true
  %179 = zext i1 %178 to i32
  %180 = sext i32 %179 to i64
  %181 = inttoptr i64 %180 to %struct.TYPE_6__*
  %182 = call i32 @dbg(%struct.TYPE_6__* %181)
  %183 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %183, i32 0, i32 3
  %185 = load i32, i32* %184, align 8
  %186 = icmp ne i32 %185, -1
  br i1 %186, label %187, label %199

187:                                              ; preds = %116
  %188 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %189 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = load i32, i32* %7, align 4
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %190, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %196 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %195, i32 0, i32 3
  %197 = load i32, i32* %196, align 8
  %198 = icmp ne i32 %194, %197
  br i1 %198, label %208, label %199

199:                                              ; preds = %187, %116
  %200 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %201 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %200, i32 0, i32 2
  %202 = load i32*, i32** %201, align 8
  %203 = load i32, i32* %7, align 4
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds i32, i32* %202, i64 %204
  %206 = load i32, i32* %205, align 4
  %207 = icmp ne i32 %206, 0
  br i1 %207, label %209, label %208

208:                                              ; preds = %199, %187
  store i32 0, i32* %4, align 4
  br label %286

209:                                              ; preds = %199
  %210 = load i32, i32* %9, align 4
  %211 = load i32, i32* @FLAG_ERASE_PAGE, align 4
  %212 = and i32 %210, %211
  %213 = icmp ne i32 %212, 0
  %214 = xor i1 %213, true
  %215 = xor i1 %214, true
  %216 = zext i1 %215 to i32
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %217, i32 0, i32 4
  %219 = load i32*, i32** %218, align 8
  %220 = load i32, i32* %7, align 4
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds i32, i32* %219, i64 %221
  store i32 %216, i32* %222, align 4
  %223 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %224 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %223, i32 0, i32 4
  %225 = load i32*, i32** %224, align 8
  %226 = load i32, i32* %7, align 4
  %227 = sext i32 %226 to i64
  %228 = getelementptr inbounds i32, i32* %225, i64 %227
  %229 = load i32, i32* %228, align 4
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %231, label %268

231:                                              ; preds = %209
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %233 = call i32 @dbg(%struct.TYPE_6__* bitcast ([8 x i8]* @.str.10 to %struct.TYPE_6__*))
  %234 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %235 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %234, i32 0, i32 4
  %236 = load i32*, i32** %235, align 8
  %237 = load i32, i32* %7, align 4
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds i32, i32* %236, i64 %238
  store i32 0, i32* %239, align 4
  store i32 1, i32* %13, align 4
  br label %240

240:                                              ; preds = %264, %231
  %241 = load i32, i32* %13, align 4
  %242 = icmp slt i32 %241, 32
  br i1 %242, label %243, label %267

243:                                              ; preds = %240
  %244 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %245 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %244, i32 0, i32 5
  %246 = load i64**, i64*** %245, align 8
  %247 = load i32, i32* %13, align 4
  %248 = sext i32 %247 to i64
  %249 = getelementptr inbounds i64*, i64** %246, i64 %248
  %250 = load i64*, i64** %249, align 8
  %251 = getelementptr inbounds i64, i64* %250, i64 0
  %252 = load i64, i64* %251, align 8
  %253 = icmp ne i64 %252, 0
  br i1 %253, label %255, label %254

254:                                              ; preds = %243
  br label %264

255:                                              ; preds = %243
  %256 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %257 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %256, i32 0, i32 5
  %258 = load i64**, i64*** %257, align 8
  %259 = load i32, i32* %13, align 4
  %260 = sext i32 %259 to i64
  %261 = getelementptr inbounds i64*, i64** %258, i64 %260
  %262 = load i64*, i64** %261, align 8
  %263 = getelementptr inbounds i64, i64* %262, i64 0
  store i64 0, i64* %263, align 8
  br label %264

264:                                              ; preds = %255, %254
  %265 = load i32, i32* %13, align 4
  %266 = add nsw i32 %265, 1
  store i32 %266, i32* %13, align 4
  br label %240

267:                                              ; preds = %240
  br label %268

268:                                              ; preds = %267, %209
  %269 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %270 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %271 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %270, i32 0, i32 5
  %272 = load i64**, i64*** %271, align 8
  %273 = getelementptr inbounds i64*, i64** %272, i64 0
  %274 = load i64*, i64** %273, align 8
  %275 = call i64 @strcmp(i8* %269, i64* %274)
  %276 = icmp ne i64 %275, 0
  br i1 %276, label %277, label %285

277:                                              ; preds = %268
  %278 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %279 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %278, i32 0, i32 5
  %280 = load i64**, i64*** %279, align 8
  %281 = getelementptr inbounds i64*, i64** %280, i64 0
  %282 = load i64*, i64** %281, align 8
  %283 = getelementptr inbounds [256 x i8], [256 x i8]* %10, i64 0, i64 0
  %284 = call i32 @strncpy(i64* %282, i8* %283, i32 7)
  br label %285

285:                                              ; preds = %277, %268
  store i32 1, i32* %4, align 4
  br label %286

286:                                              ; preds = %285, %208
  %287 = load i32, i32* %4, align 4
  ret i32 %287
}

declare dso_local i32 @bytereverse(i32) #1

declare dso_local i32 @hamming_8_4(i32) #1

declare dso_local i32 @decode_string(i8*, i32, %struct.TYPE_7__*, i32, i32*, i32) #1

declare dso_local i32 @dbg(%struct.TYPE_6__*) #1

declare dso_local i64 @strcmp(i8*, i64*) #1

declare dso_local i32 @strncpy(i64*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
