; ModuleID = '/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compress_internal.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/filesystems/btrfs/zstd/extr_huf_compress.c_HUF_compress_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32, i32 }

@GENERIC = common dso_local global i32 0, align 4
@workSpace_tooSmall = common dso_local global i32 0, align 4
@HUF_BLOCKSIZE_MAX = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@HUF_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@maxSymbolValue_tooLarge = common dso_local global i32 0, align 4
@HUF_TABLELOG_DEFAULT = common dso_local global i32 0, align 4
@HUF_repeat_valid = common dso_local global i64 0, align 8
@largest = common dso_local global i64 0, align 8
@HUF_repeat_check = common dso_local global i64 0, align 8
@HUF_repeat_none = common dso_local global i64 0, align 8
@maxBits = common dso_local global i64 0, align 8
@hSize = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64, i8*, i64, i32, i32, i32, i8*, i64, i32*, i64*, i32, i32)* @HUF_compress_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @HUF_compress_internal(i8* %0, i64 %1, i8* %2, i64 %3, i32 %4, i32 %5, i32 %6, i8* %7, i64 %8, i32* %9, i64* %10, i32 %11, i32 %12) #0 {
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i8*, align 8
  %23 = alloca i64, align 8
  %24 = alloca i32*, align 8
  %25 = alloca i64*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca %struct.TYPE_2__*, align 8
  %29 = alloca i32*, align 8
  %30 = alloca i32*, align 8
  %31 = alloca i32*, align 8
  %32 = alloca i64, align 8
  %33 = alloca i64, align 8
  store i8* %0, i8** %15, align 8
  store i64 %1, i64* %16, align 8
  store i8* %2, i8** %17, align 8
  store i64 %3, i64* %18, align 8
  store i32 %4, i32* %19, align 4
  store i32 %5, i32* %20, align 4
  store i32 %6, i32* %21, align 4
  store i8* %7, i8** %22, align 8
  store i64 %8, i64* %23, align 8
  store i32* %9, i32** %24, align 8
  store i64* %10, i64** %25, align 8
  store i32 %11, i32* %26, align 4
  store i32 %12, i32* %27, align 4
  %34 = load i8*, i8** %22, align 8
  %35 = bitcast i8* %34 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %35, %struct.TYPE_2__** %28, align 8
  %36 = load i8*, i8** %15, align 8
  %37 = bitcast i8* %36 to i32*
  store i32* %37, i32** %29, align 8
  %38 = load i32*, i32** %29, align 8
  %39 = load i64, i64* %16, align 8
  %40 = getelementptr inbounds i32, i32* %38, i64 %39
  store i32* %40, i32** %30, align 8
  %41 = load i32*, i32** %29, align 8
  store i32* %41, i32** %31, align 8
  %42 = load i8*, i8** %22, align 8
  %43 = ptrtoint i8* %42 to i64
  %44 = and i64 %43, 3
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %13
  %47 = load i32, i32* @GENERIC, align 4
  %48 = call i64 @ERROR(i32 %47)
  store i64 %48, i64* %14, align 8
  br label %308

49:                                               ; preds = %13
  %50 = load i64, i64* %23, align 8
  %51 = icmp ult i64 %50, 16
  br i1 %51, label %52, label %55

52:                                               ; preds = %49
  %53 = load i32, i32* @workSpace_tooSmall, align 4
  %54 = call i64 @ERROR(i32 %53)
  store i64 %54, i64* %14, align 8
  br label %308

55:                                               ; preds = %49
  %56 = load i64, i64* %18, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %55
  store i64 0, i64* %14, align 8
  br label %308

59:                                               ; preds = %55
  %60 = load i64, i64* %16, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %63, label %62

62:                                               ; preds = %59
  store i64 0, i64* %14, align 8
  br label %308

63:                                               ; preds = %59
  %64 = load i64, i64* %18, align 8
  %65 = load i64, i64* @HUF_BLOCKSIZE_MAX, align 8
  %66 = icmp ugt i64 %64, %65
  br i1 %66, label %67, label %70

67:                                               ; preds = %63
  %68 = load i32, i32* @srcSize_wrong, align 4
  %69 = call i64 @ERROR(i32 %68)
  store i64 %69, i64* %14, align 8
  br label %308

70:                                               ; preds = %63
  %71 = load i32, i32* %20, align 4
  %72 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %73 = icmp ugt i32 %71, %72
  br i1 %73, label %74, label %77

74:                                               ; preds = %70
  %75 = load i32, i32* @tableLog_tooLarge, align 4
  %76 = call i64 @ERROR(i32 %75)
  store i64 %76, i64* %14, align 8
  br label %308

77:                                               ; preds = %70
  %78 = load i32, i32* %19, align 4
  %79 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %80 = icmp ugt i32 %78, %79
  br i1 %80, label %81, label %84

81:                                               ; preds = %77
  %82 = load i32, i32* @maxSymbolValue_tooLarge, align 4
  %83 = call i64 @ERROR(i32 %82)
  store i64 %83, i64* %14, align 8
  br label %308

84:                                               ; preds = %77
  %85 = load i32, i32* %19, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  store i32 %88, i32* %19, align 4
  br label %89

89:                                               ; preds = %87, %84
  %90 = load i32, i32* %20, align 4
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %94, label %92

92:                                               ; preds = %89
  %93 = load i32, i32* @HUF_TABLELOG_DEFAULT, align 4
  store i32 %93, i32* %20, align 4
  br label %94

94:                                               ; preds = %92, %89
  %95 = load i32, i32* %26, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %115

97:                                               ; preds = %94
  %98 = load i64*, i64** %25, align 8
  %99 = icmp ne i64* %98, null
  br i1 %99, label %100, label %115

100:                                              ; preds = %97
  %101 = load i64*, i64** %25, align 8
  %102 = load i64, i64* %101, align 8
  %103 = load i64, i64* @HUF_repeat_valid, align 8
  %104 = icmp eq i64 %102, %103
  br i1 %104, label %105, label %115

105:                                              ; preds = %100
  %106 = load i32*, i32** %29, align 8
  %107 = load i32*, i32** %31, align 8
  %108 = load i32*, i32** %30, align 8
  %109 = load i8*, i8** %17, align 8
  %110 = load i64, i64* %18, align 8
  %111 = load i32, i32* %21, align 4
  %112 = load i32*, i32** %24, align 8
  %113 = load i32, i32* %27, align 4
  %114 = call i64 @HUF_compressCTable_internal(i32* %106, i32* %107, i32* %108, i8* %109, i64 %110, i32 %111, i32* %112, i32 %113)
  store i64 %114, i64* %14, align 8
  br label %308

115:                                              ; preds = %100, %97, %94
  %116 = load i64, i64* @largest, align 8
  %117 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 1
  %119 = load i32, i32* %118, align 8
  %120 = load i8*, i8** %17, align 8
  %121 = bitcast i8* %120 to i32*
  %122 = load i64, i64* %18, align 8
  %123 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %124 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 8
  %126 = call i32 @HIST_count_wksp(i32 %119, i32* %19, i32* %121, i64 %122, i32 %125)
  %127 = call i32 @CHECK_V_F(i64 %116, i32 %126)
  %128 = load i64, i64* @largest, align 8
  %129 = load i64, i64* %18, align 8
  %130 = icmp eq i64 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %115
  %132 = load i8*, i8** %17, align 8
  %133 = bitcast i8* %132 to i32*
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32*, i32** %29, align 8
  store i32 %135, i32* %136, align 4
  store i64 1, i64* %14, align 8
  br label %308

137:                                              ; preds = %115
  %138 = load i64, i64* @largest, align 8
  %139 = load i64, i64* %18, align 8
  %140 = lshr i64 %139, 7
  %141 = add i64 %140, 4
  %142 = icmp ule i64 %138, %141
  br i1 %142, label %143, label %144

143:                                              ; preds = %137
  store i64 0, i64* %14, align 8
  br label %308

144:                                              ; preds = %137
  %145 = load i64*, i64** %25, align 8
  %146 = icmp ne i64* %145, null
  br i1 %146, label %147, label %163

147:                                              ; preds = %144
  %148 = load i64*, i64** %25, align 8
  %149 = load i64, i64* %148, align 8
  %150 = load i64, i64* @HUF_repeat_check, align 8
  %151 = icmp eq i64 %149, %150
  br i1 %151, label %152, label %163

152:                                              ; preds = %147
  %153 = load i32*, i32** %24, align 8
  %154 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %155 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %154, i32 0, i32 1
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* %19, align 4
  %158 = call i32 @HUF_validateCTable(i32* %153, i32 %156, i32 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %163, label %160

160:                                              ; preds = %152
  %161 = load i64, i64* @HUF_repeat_none, align 8
  %162 = load i64*, i64** %25, align 8
  store i64 %161, i64* %162, align 8
  br label %163

163:                                              ; preds = %160, %152, %147, %144
  %164 = load i32, i32* %26, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %184

166:                                              ; preds = %163
  %167 = load i64*, i64** %25, align 8
  %168 = icmp ne i64* %167, null
  br i1 %168, label %169, label %184

169:                                              ; preds = %166
  %170 = load i64*, i64** %25, align 8
  %171 = load i64, i64* %170, align 8
  %172 = load i64, i64* @HUF_repeat_none, align 8
  %173 = icmp ne i64 %171, %172
  br i1 %173, label %174, label %184

174:                                              ; preds = %169
  %175 = load i32*, i32** %29, align 8
  %176 = load i32*, i32** %31, align 8
  %177 = load i32*, i32** %30, align 8
  %178 = load i8*, i8** %17, align 8
  %179 = load i64, i64* %18, align 8
  %180 = load i32, i32* %21, align 4
  %181 = load i32*, i32** %24, align 8
  %182 = load i32, i32* %27, align 4
  %183 = call i64 @HUF_compressCTable_internal(i32* %175, i32* %176, i32* %177, i8* %178, i64 %179, i32 %180, i32* %181, i32 %182)
  store i64 %183, i64* %14, align 8
  br label %308

184:                                              ; preds = %169, %166, %163
  %185 = load i32, i32* %20, align 4
  %186 = load i64, i64* %18, align 8
  %187 = load i32, i32* %19, align 4
  %188 = call i32 @HUF_optimalTableLog(i32 %185, i64 %186, i32 %187)
  store i32 %188, i32* %20, align 4
  %189 = load i64, i64* @maxBits, align 8
  %190 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %191 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %190, i32 0, i32 0
  %192 = load i32*, i32** %191, align 8
  %193 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %194 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %193, i32 0, i32 1
  %195 = load i32, i32* %194, align 8
  %196 = load i32, i32* %19, align 4
  %197 = load i32, i32* %20, align 4
  %198 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %199 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %198, i32 0, i32 2
  %200 = load i32, i32* %199, align 4
  %201 = call i32 @HUF_buildCTable_wksp(i32* %192, i32 %195, i32 %196, i32 %197, i32 %200, i32 4)
  %202 = call i32 @CHECK_V_F(i64 %189, i32 %201)
  %203 = load i64, i64* @maxBits, align 8
  %204 = trunc i64 %203 to i32
  store i32 %204, i32* %20, align 4
  %205 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %206 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %205, i32 0, i32 0
  %207 = load i32*, i32** %206, align 8
  %208 = load i32, i32* %19, align 4
  %209 = add i32 %208, 1
  %210 = zext i32 %209 to i64
  %211 = getelementptr inbounds i32, i32* %207, i64 %210
  %212 = load i32, i32* %19, align 4
  %213 = add i32 %212, 1
  %214 = zext i32 %213 to i64
  %215 = mul i64 %214, 4
  %216 = sub i64 8, %215
  %217 = trunc i64 %216 to i32
  %218 = call i32 @memset(i32* %211, i32 0, i32 %217)
  %219 = load i64, i64* @hSize, align 8
  %220 = load i32*, i32** %31, align 8
  %221 = load i64, i64* %16, align 8
  %222 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %223 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %19, align 4
  %226 = load i32, i32* %20, align 4
  %227 = call i32 @HUF_writeCTable(i32* %220, i64 %221, i32* %224, i32 %225, i32 %226)
  %228 = call i32 @CHECK_V_F(i64 %219, i32 %227)
  %229 = load i64*, i64** %25, align 8
  %230 = icmp ne i64* %229, null
  br i1 %230, label %231, label %272

231:                                              ; preds = %184
  %232 = load i64*, i64** %25, align 8
  %233 = load i64, i64* %232, align 8
  %234 = load i64, i64* @HUF_repeat_none, align 8
  %235 = icmp ne i64 %233, %234
  br i1 %235, label %236, label %272

236:                                              ; preds = %231
  %237 = load i32*, i32** %24, align 8
  %238 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %239 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %238, i32 0, i32 1
  %240 = load i32, i32* %239, align 8
  %241 = load i32, i32* %19, align 4
  %242 = call i64 @HUF_estimateCompressedSize(i32* %237, i32 %240, i32 %241)
  store i64 %242, i64* %32, align 8
  %243 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %244 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %243, i32 0, i32 0
  %245 = load i32*, i32** %244, align 8
  %246 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %247 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %246, i32 0, i32 1
  %248 = load i32, i32* %247, align 8
  %249 = load i32, i32* %19, align 4
  %250 = call i64 @HUF_estimateCompressedSize(i32* %245, i32 %248, i32 %249)
  store i64 %250, i64* %33, align 8
  %251 = load i64, i64* %32, align 8
  %252 = load i64, i64* @hSize, align 8
  %253 = load i64, i64* %33, align 8
  %254 = add i64 %252, %253
  %255 = icmp ule i64 %251, %254
  br i1 %255, label %261, label %256

256:                                              ; preds = %236
  %257 = load i64, i64* @hSize, align 8
  %258 = add i64 %257, 12
  %259 = load i64, i64* %18, align 8
  %260 = icmp uge i64 %258, %259
  br i1 %260, label %261, label %271

261:                                              ; preds = %256, %236
  %262 = load i32*, i32** %29, align 8
  %263 = load i32*, i32** %31, align 8
  %264 = load i32*, i32** %30, align 8
  %265 = load i8*, i8** %17, align 8
  %266 = load i64, i64* %18, align 8
  %267 = load i32, i32* %21, align 4
  %268 = load i32*, i32** %24, align 8
  %269 = load i32, i32* %27, align 4
  %270 = call i64 @HUF_compressCTable_internal(i32* %262, i32* %263, i32* %264, i8* %265, i64 %266, i32 %267, i32* %268, i32 %269)
  store i64 %270, i64* %14, align 8
  br label %308

271:                                              ; preds = %256
  br label %272

272:                                              ; preds = %271, %231, %184
  %273 = load i64, i64* @hSize, align 8
  %274 = add i64 %273, 12
  %275 = load i64, i64* %18, align 8
  %276 = icmp uge i64 %274, %275
  br i1 %276, label %277, label %278

277:                                              ; preds = %272
  store i64 0, i64* %14, align 8
  br label %308

278:                                              ; preds = %272
  %279 = load i64, i64* @hSize, align 8
  %280 = load i32*, i32** %31, align 8
  %281 = getelementptr inbounds i32, i32* %280, i64 %279
  store i32* %281, i32** %31, align 8
  %282 = load i64*, i64** %25, align 8
  %283 = icmp ne i64* %282, null
  br i1 %283, label %284, label %287

284:                                              ; preds = %278
  %285 = load i64, i64* @HUF_repeat_none, align 8
  %286 = load i64*, i64** %25, align 8
  store i64 %285, i64* %286, align 8
  br label %287

287:                                              ; preds = %284, %278
  %288 = load i32*, i32** %24, align 8
  %289 = icmp ne i32* %288, null
  br i1 %289, label %290, label %296

290:                                              ; preds = %287
  %291 = load i32*, i32** %24, align 8
  %292 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %293 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %292, i32 0, i32 0
  %294 = load i32*, i32** %293, align 8
  %295 = call i32 @memcpy(i32* %291, i32* %294, i32 8)
  br label %296

296:                                              ; preds = %290, %287
  %297 = load i32*, i32** %29, align 8
  %298 = load i32*, i32** %31, align 8
  %299 = load i32*, i32** %30, align 8
  %300 = load i8*, i8** %17, align 8
  %301 = load i64, i64* %18, align 8
  %302 = load i32, i32* %21, align 4
  %303 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %304 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %303, i32 0, i32 0
  %305 = load i32*, i32** %304, align 8
  %306 = load i32, i32* %27, align 4
  %307 = call i64 @HUF_compressCTable_internal(i32* %297, i32* %298, i32* %299, i8* %300, i64 %301, i32 %302, i32* %305, i32 %306)
  store i64 %307, i64* %14, align 8
  br label %308

308:                                              ; preds = %296, %277, %261, %174, %143, %131, %105, %81, %74, %67, %62, %58, %52, %46
  %309 = load i64, i64* %14, align 8
  ret i64 %309
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i64 @HUF_compressCTable_internal(i32*, i32*, i32*, i8*, i64, i32, i32*, i32) #1

declare dso_local i32 @CHECK_V_F(i64, i32) #1

declare dso_local i32 @HIST_count_wksp(i32, i32*, i32*, i64, i32) #1

declare dso_local i32 @HUF_validateCTable(i32*, i32, i32) #1

declare dso_local i32 @HUF_optimalTableLog(i32, i64, i32) #1

declare dso_local i32 @HUF_buildCTable_wksp(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @HUF_writeCTable(i32*, i64, i32*, i32, i32) #1

declare dso_local i64 @HUF_estimateCompressedSize(i32*, i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
