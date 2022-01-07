; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_curl_stream.c_cs_next.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/platform/x11/extr_curl_stream.c_cs_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8*, %struct.curlstate* }
%struct.curlstate = type { i8*, i64, i64, i32, i32, i32, i32*, i64 }

@BLOCK_SHIFT = common dso_local global i32 0, align 4
@BLOCK_SIZE = common dso_local global i32 0, align 4
@FZ_ERROR_GENERIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"cannot fetch data: %s\00", align 1
@FZ_ERROR_TRYLATER = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [47 x i8] c"read of a block we don't have (A) (offset=%ld)\00", align 1
@EOF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [47 x i8] c"read of a block we don't have (B) (offset=%ld)\00", align 1
@.str.3 = private unnamed_addr constant [47 x i8] c"read of a block we don't have (C) (offset=%ld)\00", align 1
@.str.4 = private unnamed_addr constant [47 x i8] c"read of a block we don't have (D) (offset=%ld)\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"read of a block we don't have (E) (offset=%ld)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_3__*, i64)* @cs_next to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_next(i32* %0, %struct.TYPE_3__* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_3__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.curlstate*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store %struct.TYPE_3__* %1, %struct.TYPE_3__** %6, align 8
  store i64 %2, i64* %7, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 3
  %17 = load %struct.curlstate*, %struct.curlstate** %16, align 8
  store %struct.curlstate* %17, %struct.curlstate** %8, align 8
  store i64 0, i64* %9, align 8
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  store i32 %20, i32* %10, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* @BLOCK_SHIFT, align 4
  %23 = ashr i32 %21, %22
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %10, align 4
  %25 = sub nsw i32 0, %24
  %26 = load i32, i32* @BLOCK_SIZE, align 4
  %27 = sub nsw i32 %26, 1
  %28 = and i32 %25, %27
  %29 = sext i32 %28 to i64
  store i64 %29, i64* %12, align 8
  %30 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %31 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %30, i32 0, i32 0
  %32 = load i8*, i8** %31, align 8
  store i8* %32, i8** %13, align 8
  %33 = load i64, i64* %7, align 8
  %34 = icmp ne i64 %33, 0
  %35 = zext i1 %34 to i32
  %36 = call i32 @assert(i32 %35)
  %37 = load i8*, i8** %13, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 2
  store i8* %37, i8** %39, align 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i8* %37, i8** %41, align 8
  %42 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %43 = call i32 @lock(%struct.curlstate* %42)
  %44 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %45 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %44, i32 0, i32 7
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %61

48:                                               ; preds = %3
  %49 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %50 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %49, i32 0, i32 7
  %51 = load i64, i64* %50, align 8
  store i64 %51, i64* %14, align 8
  %52 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %53 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %52, i32 0, i32 7
  store i64 0, i64* %53, align 8
  %54 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %55 = call i32 @unlock(%struct.curlstate* %54)
  %56 = load i32*, i32** %5, align 8
  %57 = load i32, i32* @FZ_ERROR_GENERIC, align 4
  %58 = load i64, i64* %14, align 8
  %59 = call i32 @curl_easy_strerror(i64 %58)
  %60 = call i32 @fz_throw(i32* %56, i32 %57, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %59)
  br label %61

61:                                               ; preds = %48, %3
  %62 = load i32, i32* %10, align 4
  %63 = sext i32 %62 to i64
  %64 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %65 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp ugt i64 %63, %66
  br i1 %67, label %68, label %82

68:                                               ; preds = %61
  %69 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %70 = call i32 @unlock(%struct.curlstate* %69)
  %71 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %72 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %71, i32 0, i32 2
  %73 = load i64, i64* %72, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %80

75:                                               ; preds = %68
  %76 = load i32*, i32** %5, align 8
  %77 = load i32, i32* @FZ_ERROR_TRYLATER, align 4
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @fz_throw(i32* %76, i32 %77, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.1, i64 0, i64 0), i32 %78)
  br label %80

80:                                               ; preds = %75, %68
  %81 = load i32, i32* @EOF, align 4
  store i32 %81, i32* %4, align 4
  br label %367

82:                                               ; preds = %61
  %83 = load i64, i64* %7, align 8
  %84 = icmp ugt i64 %83, 8
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  store i64 8, i64* %7, align 8
  br label %86

86:                                               ; preds = %85, %82
  %87 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %88 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %87, i32 0, i32 6
  %89 = load i32*, i32** %88, align 8
  %90 = icmp eq i32* %89, null
  br i1 %90, label %91, label %142

91:                                               ; preds = %86
  %92 = load i32, i32* %10, align 4
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %7, align 8
  %95 = add i64 %93, %94
  %96 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %97 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = icmp ugt i64 %95, %99
  br i1 %100, label %101, label %108

101:                                              ; preds = %91
  %102 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %103 = call i32 @unlock(%struct.curlstate* %102)
  %104 = load i32*, i32** %5, align 8
  %105 = load i32, i32* @FZ_ERROR_TRYLATER, align 4
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @fz_throw(i32* %104, i32 %105, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %106)
  br label %108

108:                                              ; preds = %101, %91
  %109 = load i8*, i8** %13, align 8
  %110 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %111 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* %10, align 4
  %114 = add nsw i32 %112, %113
  %115 = load i64, i64* %7, align 8
  %116 = call i32 @memcpy(i8* %109, i32 %114, i64 %115)
  %117 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %118 = call i32 @unlock(%struct.curlstate* %117)
  %119 = load i8*, i8** %13, align 8
  %120 = load i64, i64* %7, align 8
  %121 = getelementptr inbounds i8, i8* %119, i64 %120
  %122 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %122, i32 0, i32 2
  store i8* %121, i8** %123, align 8
  %124 = load i64, i64* %7, align 8
  %125 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sext i32 %127 to i64
  %129 = add i64 %128, %124
  %130 = trunc i64 %129 to i32
  store i32 %130, i32* %126, align 8
  %131 = load i64, i64* %7, align 8
  %132 = icmp eq i64 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %108
  %134 = load i32, i32* @EOF, align 4
  store i32 %134, i32* %4, align 4
  br label %367

135:                                              ; preds = %108
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i8*, i8** %137, align 8
  %139 = getelementptr inbounds i8, i8* %138, i32 1
  store i8* %139, i8** %137, align 8
  %140 = load i8, i8* %138, align 1
  %141 = zext i8 %140 to i32
  store i32 %141, i32* %4, align 4
  br label %367

142:                                              ; preds = %86
  %143 = load i32, i32* %10, align 4
  %144 = sext i32 %143 to i64
  %145 = load i64, i64* %7, align 8
  %146 = add i64 %144, %145
  %147 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %148 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %147, i32 0, i32 1
  %149 = load i64, i64* %148, align 8
  %150 = icmp ugt i64 %146, %149
  br i1 %150, label %151, label %158

151:                                              ; preds = %142
  %152 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %153 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i32, i32* %10, align 4
  %156 = sext i32 %155 to i64
  %157 = sub i64 %154, %156
  store i64 %157, i64* %7, align 8
  br label %158

158:                                              ; preds = %151, %142
  %159 = load i64, i64* %12, align 8
  %160 = load i64, i64* %7, align 8
  %161 = icmp ugt i64 %159, %160
  br i1 %161, label %162, label %164

162:                                              ; preds = %158
  %163 = load i64, i64* %7, align 8
  store i64 %163, i64* %12, align 8
  br label %164

164:                                              ; preds = %162, %158
  %165 = load i64, i64* %12, align 8
  %166 = icmp ugt i64 %165, 0
  br i1 %166, label %167, label %211

167:                                              ; preds = %164
  %168 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %169 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %168, i32 0, i32 6
  %170 = load i32*, i32** %169, align 8
  %171 = load i32, i32* %11, align 4
  %172 = call i32 @HAVE_BLOCK(i32* %170, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %186, label %174

174:                                              ; preds = %167
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* @BLOCK_SHIFT, align 4
  %177 = shl i32 %175, %176
  %178 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %179 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %178, i32 0, i32 5
  store i32 %177, i32* %179, align 8
  %180 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %181 = call i32 @unlock(%struct.curlstate* %180)
  %182 = load i32*, i32** %5, align 8
  %183 = load i32, i32* @FZ_ERROR_TRYLATER, align 4
  %184 = load i32, i32* %10, align 4
  %185 = call i32 @fz_throw(i32* %182, i32 %183, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.3, i64 0, i64 0), i32 %184)
  br label %186

186:                                              ; preds = %174, %167
  %187 = load i32, i32* %11, align 4
  %188 = add nsw i32 %187, 1
  store i32 %188, i32* %11, align 4
  %189 = load i8*, i8** %13, align 8
  %190 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %191 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %190, i32 0, i32 4
  %192 = load i32, i32* %191, align 4
  %193 = load i32, i32* %10, align 4
  %194 = add nsw i32 %192, %193
  %195 = load i64, i64* %12, align 8
  %196 = call i32 @memcpy(i8* %189, i32 %194, i64 %195)
  %197 = load i64, i64* %12, align 8
  %198 = load i8*, i8** %13, align 8
  %199 = getelementptr inbounds i8, i8* %198, i64 %197
  store i8* %199, i8** %13, align 8
  %200 = load i64, i64* %12, align 8
  %201 = load i32, i32* %10, align 4
  %202 = sext i32 %201 to i64
  %203 = add i64 %202, %200
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %10, align 4
  %205 = load i64, i64* %12, align 8
  %206 = load i64, i64* %7, align 8
  %207 = sub i64 %206, %205
  store i64 %207, i64* %7, align 8
  %208 = load i64, i64* %12, align 8
  %209 = load i64, i64* %9, align 8
  %210 = add i64 %209, %208
  store i64 %210, i64* %9, align 8
  br label %211

211:                                              ; preds = %186, %164
  br label %212

212:                                              ; preds = %258, %211
  %213 = load i64, i64* %7, align 8
  %214 = load i32, i32* @BLOCK_SIZE, align 4
  %215 = sext i32 %214 to i64
  %216 = icmp ugt i64 %213, %215
  br i1 %216, label %217, label %285

217:                                              ; preds = %212
  %218 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %219 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %218, i32 0, i32 6
  %220 = load i32*, i32** %219, align 8
  %221 = load i32, i32* %11, align 4
  %222 = call i32 @HAVE_BLOCK(i32* %220, i32 %221)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %258, label %224

224:                                              ; preds = %217
  %225 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %226 = call i32 @unlock(%struct.curlstate* %225)
  %227 = load i32, i32* %11, align 4
  %228 = load i32, i32* @BLOCK_SHIFT, align 4
  %229 = shl i32 %227, %228
  %230 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %231 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %230, i32 0, i32 5
  store i32 %229, i32* %231, align 8
  %232 = load i64, i64* %9, align 8
  %233 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %234 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %233, i32 0, i32 2
  %235 = load i8*, i8** %234, align 8
  %236 = getelementptr inbounds i8, i8* %235, i64 %232
  store i8* %236, i8** %234, align 8
  %237 = load i64, i64* %9, align 8
  %238 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %239 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 8
  %241 = sext i32 %240 to i64
  %242 = add i64 %241, %237
  %243 = trunc i64 %242 to i32
  store i32 %243, i32* %239, align 8
  %244 = load i64, i64* %9, align 8
  %245 = icmp eq i64 %244, 0
  br i1 %245, label %246, label %251

246:                                              ; preds = %224
  %247 = load i32*, i32** %5, align 8
  %248 = load i32, i32* @FZ_ERROR_TRYLATER, align 4
  %249 = load i32, i32* %10, align 4
  %250 = call i32 @fz_throw(i32* %247, i32 %248, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.4, i64 0, i64 0), i32 %249)
  br label %251

251:                                              ; preds = %246, %224
  %252 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %253 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %252, i32 0, i32 1
  %254 = load i8*, i8** %253, align 8
  %255 = getelementptr inbounds i8, i8* %254, i32 1
  store i8* %255, i8** %253, align 8
  %256 = load i8, i8* %254, align 1
  %257 = zext i8 %256 to i32
  store i32 %257, i32* %4, align 4
  br label %367

258:                                              ; preds = %217
  %259 = load i32, i32* %11, align 4
  %260 = add nsw i32 %259, 1
  store i32 %260, i32* %11, align 4
  %261 = load i8*, i8** %13, align 8
  %262 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %263 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %262, i32 0, i32 4
  %264 = load i32, i32* %263, align 4
  %265 = load i32, i32* %10, align 4
  %266 = add nsw i32 %264, %265
  %267 = load i32, i32* @BLOCK_SIZE, align 4
  %268 = sext i32 %267 to i64
  %269 = call i32 @memcpy(i8* %261, i32 %266, i64 %268)
  %270 = load i32, i32* @BLOCK_SIZE, align 4
  %271 = load i8*, i8** %13, align 8
  %272 = sext i32 %270 to i64
  %273 = getelementptr inbounds i8, i8* %271, i64 %272
  store i8* %273, i8** %13, align 8
  %274 = load i32, i32* @BLOCK_SIZE, align 4
  %275 = load i32, i32* %10, align 4
  %276 = add nsw i32 %275, %274
  store i32 %276, i32* %10, align 4
  %277 = load i32, i32* @BLOCK_SIZE, align 4
  %278 = sext i32 %277 to i64
  %279 = load i64, i64* %7, align 8
  %280 = sub i64 %279, %278
  store i64 %280, i64* %7, align 8
  %281 = load i32, i32* @BLOCK_SIZE, align 4
  %282 = sext i32 %281 to i64
  %283 = load i64, i64* %9, align 8
  %284 = add i64 %283, %282
  store i64 %284, i64* %9, align 8
  br label %212

285:                                              ; preds = %212
  %286 = load i64, i64* %7, align 8
  %287 = icmp ugt i64 %286, 0
  br i1 %287, label %288, label %341

288:                                              ; preds = %285
  %289 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %290 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %289, i32 0, i32 6
  %291 = load i32*, i32** %290, align 8
  %292 = load i32, i32* %11, align 4
  %293 = call i32 @HAVE_BLOCK(i32* %291, i32 %292)
  %294 = icmp ne i32 %293, 0
  br i1 %294, label %329, label %295

295:                                              ; preds = %288
  %296 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %297 = call i32 @unlock(%struct.curlstate* %296)
  %298 = load i32, i32* %11, align 4
  %299 = load i32, i32* @BLOCK_SHIFT, align 4
  %300 = shl i32 %298, %299
  %301 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %302 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %301, i32 0, i32 5
  store i32 %300, i32* %302, align 8
  %303 = load i64, i64* %9, align 8
  %304 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %305 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %304, i32 0, i32 2
  %306 = load i8*, i8** %305, align 8
  %307 = getelementptr inbounds i8, i8* %306, i64 %303
  store i8* %307, i8** %305, align 8
  %308 = load i64, i64* %9, align 8
  %309 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %310 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %309, i32 0, i32 0
  %311 = load i32, i32* %310, align 8
  %312 = sext i32 %311 to i64
  %313 = add i64 %312, %308
  %314 = trunc i64 %313 to i32
  store i32 %314, i32* %310, align 8
  %315 = load i64, i64* %9, align 8
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %317, label %322

317:                                              ; preds = %295
  %318 = load i32*, i32** %5, align 8
  %319 = load i32, i32* @FZ_ERROR_TRYLATER, align 4
  %320 = load i32, i32* %10, align 4
  %321 = call i32 @fz_throw(i32* %318, i32 %319, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %320)
  br label %322

322:                                              ; preds = %317, %295
  %323 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %324 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %323, i32 0, i32 1
  %325 = load i8*, i8** %324, align 8
  %326 = getelementptr inbounds i8, i8* %325, i32 1
  store i8* %326, i8** %324, align 8
  %327 = load i8, i8* %325, align 1
  %328 = zext i8 %327 to i32
  store i32 %328, i32* %4, align 4
  br label %367

329:                                              ; preds = %288
  %330 = load i8*, i8** %13, align 8
  %331 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %332 = getelementptr inbounds %struct.curlstate, %struct.curlstate* %331, i32 0, i32 4
  %333 = load i32, i32* %332, align 4
  %334 = load i32, i32* %10, align 4
  %335 = add nsw i32 %333, %334
  %336 = load i64, i64* %7, align 8
  %337 = call i32 @memcpy(i8* %330, i32 %335, i64 %336)
  %338 = load i64, i64* %7, align 8
  %339 = load i64, i64* %9, align 8
  %340 = add i64 %339, %338
  store i64 %340, i64* %9, align 8
  br label %341

341:                                              ; preds = %329, %285
  %342 = load %struct.curlstate*, %struct.curlstate** %8, align 8
  %343 = call i32 @unlock(%struct.curlstate* %342)
  %344 = load i64, i64* %9, align 8
  %345 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %346 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %345, i32 0, i32 2
  %347 = load i8*, i8** %346, align 8
  %348 = getelementptr inbounds i8, i8* %347, i64 %344
  store i8* %348, i8** %346, align 8
  %349 = load i64, i64* %9, align 8
  %350 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %351 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %350, i32 0, i32 0
  %352 = load i32, i32* %351, align 8
  %353 = sext i32 %352 to i64
  %354 = add i64 %353, %349
  %355 = trunc i64 %354 to i32
  store i32 %355, i32* %351, align 8
  %356 = load i64, i64* %9, align 8
  %357 = icmp eq i64 %356, 0
  br i1 %357, label %358, label %360

358:                                              ; preds = %341
  %359 = load i32, i32* @EOF, align 4
  store i32 %359, i32* %4, align 4
  br label %367

360:                                              ; preds = %341
  %361 = load %struct.TYPE_3__*, %struct.TYPE_3__** %6, align 8
  %362 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %361, i32 0, i32 1
  %363 = load i8*, i8** %362, align 8
  %364 = getelementptr inbounds i8, i8* %363, i32 1
  store i8* %364, i8** %362, align 8
  %365 = load i8, i8* %363, align 1
  %366 = zext i8 %365 to i32
  store i32 %366, i32* %4, align 4
  br label %367

367:                                              ; preds = %360, %358, %322, %251, %135, %133, %80
  %368 = load i32, i32* %4, align 4
  ret i32 %368
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @lock(%struct.curlstate*) #1

declare dso_local i32 @unlock(%struct.curlstate*) #1

declare dso_local i32 @fz_throw(i32*, i32, i8*, i32) #1

declare dso_local i32 @curl_easy_strerror(i64) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @HAVE_BLOCK(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
