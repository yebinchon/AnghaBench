; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_CopyOtherTags.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/tificc/extr_tificc.c_CopyOtherTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TIFFTAG_SUBFILETYPE = common dso_local global i32 0, align 4
@TIFFTAG_IMAGEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_IMAGELENGTH = common dso_local global i32 0, align 4
@TIFFTAG_PLANARCONFIG = common dso_local global i32 0, align 4
@TIFFTAG_COMPRESSION = common dso_local global i32 0, align 4
@Width = common dso_local global i32 0, align 4
@TIFFTAG_PREDICTOR = common dso_local global i32 0, align 4
@TIFFTAG_THRESHHOLDING = common dso_local global i32 0, align 4
@TIFFTAG_FILLORDER = common dso_local global i32 0, align 4
@TIFFTAG_ORIENTATION = common dso_local global i32 0, align 4
@TIFFTAG_MINSAMPLEVALUE = common dso_local global i32 0, align 4
@TIFFTAG_MAXSAMPLEVALUE = common dso_local global i32 0, align 4
@TIFFTAG_XRESOLUTION = common dso_local global i32 0, align 4
@TIFFTAG_YRESOLUTION = common dso_local global i32 0, align 4
@TIFFTAG_RESOLUTIONUNIT = common dso_local global i32 0, align 4
@TIFFTAG_ROWSPERSTRIP = common dso_local global i32 0, align 4
@TIFFTAG_XPOSITION = common dso_local global i32 0, align 4
@TIFFTAG_YPOSITION = common dso_local global i32 0, align 4
@TIFFTAG_IMAGEDEPTH = common dso_local global i32 0, align 4
@TIFFTAG_TILEDEPTH = common dso_local global i32 0, align 4
@TIFFTAG_TILEWIDTH = common dso_local global i32 0, align 4
@TIFFTAG_TILELENGTH = common dso_local global i32 0, align 4
@TIFFTAG_ARTIST = common dso_local global i32 0, align 4
@TIFFTAG_IMAGEDESCRIPTION = common dso_local global i32 0, align 4
@TIFFTAG_MAKE = common dso_local global i32 0, align 4
@TIFFTAG_MODEL = common dso_local global i32 0, align 4
@TIFFTAG_DATETIME = common dso_local global i32 0, align 4
@TIFFTAG_HOSTCOMPUTER = common dso_local global i32 0, align 4
@TIFFTAG_PAGENAME = common dso_local global i32 0, align 4
@TIFFTAG_DOCUMENTNAME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*)* @CopyOtherTags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @CopyOtherTags(i32* %0, i32* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i16, align 2
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  store i32* %0, i32** %3, align 8
  store i32* %1, i32** %4, align 8
  %11 = load i32*, i32** %3, align 8
  %12 = load i32, i32* @TIFFTAG_SUBFILETYPE, align 4
  %13 = call i32 @TIFFGetField(i32* %11, i32 %12, i8** %10)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %2
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* @TIFFTAG_SUBFILETYPE, align 4
  %18 = load i8*, i8** %10, align 8
  %19 = call i32 @TIFFSetField(i32* %16, i32 %17, i8* %18)
  br label %20

20:                                               ; preds = %15, %2
  %21 = load i32*, i32** %3, align 8
  %22 = load i32, i32* @TIFFTAG_IMAGEWIDTH, align 4
  %23 = call i32 @TIFFGetField(i32* %21, i32 %22, i8** %6)
  %24 = load i32*, i32** %3, align 8
  %25 = load i32, i32* @TIFFTAG_IMAGELENGTH, align 4
  %26 = call i32 @TIFFGetField(i32* %24, i32 %25, i8** %7)
  %27 = load i32*, i32** %4, align 8
  %28 = load i32, i32* @TIFFTAG_IMAGEWIDTH, align 4
  %29 = load i8*, i8** %6, align 8
  %30 = call i32 @TIFFSetField(i32* %27, i32 %28, i8* %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @TIFFTAG_IMAGELENGTH, align 4
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @TIFFSetField(i32* %31, i32 %32, i8* %33)
  %35 = load i32*, i32** %3, align 8
  %36 = load i32, i32* @TIFFTAG_PLANARCONFIG, align 4
  %37 = bitcast i16* %5 to i8**
  %38 = call i32 @TIFFGetField(i32* %35, i32 %36, i8** %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %47

40:                                               ; preds = %20
  %41 = load i32*, i32** %4, align 8
  %42 = load i32, i32* @TIFFTAG_PLANARCONFIG, align 4
  %43 = load i16, i16* %5, align 2
  %44 = sext i16 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = call i32 @TIFFSetField(i32* %41, i32 %42, i8* %45)
  br label %47

47:                                               ; preds = %40, %20
  %48 = load i32*, i32** %3, align 8
  %49 = load i32, i32* @TIFFTAG_COMPRESSION, align 4
  %50 = bitcast i16* %5 to i8**
  %51 = call i32 @TIFFGetField(i32* %48, i32 %49, i8** %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %60

53:                                               ; preds = %47
  %54 = load i32*, i32** %4, align 8
  %55 = load i32, i32* @TIFFTAG_COMPRESSION, align 4
  %56 = load i16, i16* %5, align 2
  %57 = sext i16 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = call i32 @TIFFSetField(i32* %54, i32 %55, i8* %58)
  br label %60

60:                                               ; preds = %53, %47
  %61 = load i32, i32* @Width, align 4
  %62 = icmp ne i32 %61, 32
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load i32*, i32** %3, align 8
  %65 = load i32, i32* @TIFFTAG_PREDICTOR, align 4
  %66 = bitcast i16* %5 to i8**
  %67 = call i32 @TIFFGetField(i32* %64, i32 %65, i8** %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %76

69:                                               ; preds = %63
  %70 = load i32*, i32** %4, align 8
  %71 = load i32, i32* @TIFFTAG_PREDICTOR, align 4
  %72 = load i16, i16* %5, align 2
  %73 = sext i16 %72 to i64
  %74 = inttoptr i64 %73 to i8*
  %75 = call i32 @TIFFSetField(i32* %70, i32 %71, i8* %74)
  br label %76

76:                                               ; preds = %69, %63
  br label %77

77:                                               ; preds = %76, %60
  %78 = load i32*, i32** %3, align 8
  %79 = load i32, i32* @TIFFTAG_THRESHHOLDING, align 4
  %80 = bitcast i16* %5 to i8**
  %81 = call i32 @TIFFGetField(i32* %78, i32 %79, i8** %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %90

83:                                               ; preds = %77
  %84 = load i32*, i32** %4, align 8
  %85 = load i32, i32* @TIFFTAG_THRESHHOLDING, align 4
  %86 = load i16, i16* %5, align 2
  %87 = sext i16 %86 to i64
  %88 = inttoptr i64 %87 to i8*
  %89 = call i32 @TIFFSetField(i32* %84, i32 %85, i8* %88)
  br label %90

90:                                               ; preds = %83, %77
  %91 = load i32*, i32** %3, align 8
  %92 = load i32, i32* @TIFFTAG_FILLORDER, align 4
  %93 = bitcast i16* %5 to i8**
  %94 = call i32 @TIFFGetField(i32* %91, i32 %92, i8** %93)
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %90
  %97 = load i32*, i32** %4, align 8
  %98 = load i32, i32* @TIFFTAG_FILLORDER, align 4
  %99 = load i16, i16* %5, align 2
  %100 = sext i16 %99 to i64
  %101 = inttoptr i64 %100 to i8*
  %102 = call i32 @TIFFSetField(i32* %97, i32 %98, i8* %101)
  br label %103

103:                                              ; preds = %96, %90
  %104 = load i32*, i32** %3, align 8
  %105 = load i32, i32* @TIFFTAG_ORIENTATION, align 4
  %106 = bitcast i16* %5 to i8**
  %107 = call i32 @TIFFGetField(i32* %104, i32 %105, i8** %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %116

109:                                              ; preds = %103
  %110 = load i32*, i32** %4, align 8
  %111 = load i32, i32* @TIFFTAG_ORIENTATION, align 4
  %112 = load i16, i16* %5, align 2
  %113 = sext i16 %112 to i64
  %114 = inttoptr i64 %113 to i8*
  %115 = call i32 @TIFFSetField(i32* %110, i32 %111, i8* %114)
  br label %116

116:                                              ; preds = %109, %103
  %117 = load i32*, i32** %3, align 8
  %118 = load i32, i32* @TIFFTAG_MINSAMPLEVALUE, align 4
  %119 = bitcast i16* %5 to i8**
  %120 = call i32 @TIFFGetField(i32* %117, i32 %118, i8** %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %116
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @TIFFTAG_MINSAMPLEVALUE, align 4
  %125 = load i16, i16* %5, align 2
  %126 = sext i16 %125 to i64
  %127 = inttoptr i64 %126 to i8*
  %128 = call i32 @TIFFSetField(i32* %123, i32 %124, i8* %127)
  br label %129

129:                                              ; preds = %122, %116
  %130 = load i32*, i32** %3, align 8
  %131 = load i32, i32* @TIFFTAG_MAXSAMPLEVALUE, align 4
  %132 = bitcast i16* %5 to i8**
  %133 = call i32 @TIFFGetField(i32* %130, i32 %131, i8** %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %142

135:                                              ; preds = %129
  %136 = load i32*, i32** %4, align 8
  %137 = load i32, i32* @TIFFTAG_MAXSAMPLEVALUE, align 4
  %138 = load i16, i16* %5, align 2
  %139 = sext i16 %138 to i64
  %140 = inttoptr i64 %139 to i8*
  %141 = call i32 @TIFFSetField(i32* %136, i32 %137, i8* %140)
  br label %142

142:                                              ; preds = %135, %129
  %143 = load i32*, i32** %3, align 8
  %144 = load i32, i32* @TIFFTAG_XRESOLUTION, align 4
  %145 = call i32 @TIFFGetField(i32* %143, i32 %144, i8** %8)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %152

147:                                              ; preds = %142
  %148 = load i32*, i32** %4, align 8
  %149 = load i32, i32* @TIFFTAG_XRESOLUTION, align 4
  %150 = load i8*, i8** %8, align 8
  %151 = call i32 @TIFFSetField(i32* %148, i32 %149, i8* %150)
  br label %152

152:                                              ; preds = %147, %142
  %153 = load i32*, i32** %3, align 8
  %154 = load i32, i32* @TIFFTAG_YRESOLUTION, align 4
  %155 = call i32 @TIFFGetField(i32* %153, i32 %154, i8** %8)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %162

157:                                              ; preds = %152
  %158 = load i32*, i32** %4, align 8
  %159 = load i32, i32* @TIFFTAG_YRESOLUTION, align 4
  %160 = load i8*, i8** %8, align 8
  %161 = call i32 @TIFFSetField(i32* %158, i32 %159, i8* %160)
  br label %162

162:                                              ; preds = %157, %152
  %163 = load i32*, i32** %3, align 8
  %164 = load i32, i32* @TIFFTAG_RESOLUTIONUNIT, align 4
  %165 = bitcast i16* %5 to i8**
  %166 = call i32 @TIFFGetField(i32* %163, i32 %164, i8** %165)
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %168, label %175

168:                                              ; preds = %162
  %169 = load i32*, i32** %4, align 8
  %170 = load i32, i32* @TIFFTAG_RESOLUTIONUNIT, align 4
  %171 = load i16, i16* %5, align 2
  %172 = sext i16 %171 to i64
  %173 = inttoptr i64 %172 to i8*
  %174 = call i32 @TIFFSetField(i32* %169, i32 %170, i8* %173)
  br label %175

175:                                              ; preds = %168, %162
  %176 = load i32*, i32** %3, align 8
  %177 = load i32, i32* @TIFFTAG_ROWSPERSTRIP, align 4
  %178 = call i32 @TIFFGetField(i32* %176, i32 %177, i8** %10)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %185

180:                                              ; preds = %175
  %181 = load i32*, i32** %4, align 8
  %182 = load i32, i32* @TIFFTAG_ROWSPERSTRIP, align 4
  %183 = load i8*, i8** %10, align 8
  %184 = call i32 @TIFFSetField(i32* %181, i32 %182, i8* %183)
  br label %185

185:                                              ; preds = %180, %175
  %186 = load i32*, i32** %3, align 8
  %187 = load i32, i32* @TIFFTAG_XPOSITION, align 4
  %188 = call i32 @TIFFGetField(i32* %186, i32 %187, i8** %8)
  %189 = icmp ne i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %185
  %191 = load i32*, i32** %4, align 8
  %192 = load i32, i32* @TIFFTAG_XPOSITION, align 4
  %193 = load i8*, i8** %8, align 8
  %194 = call i32 @TIFFSetField(i32* %191, i32 %192, i8* %193)
  br label %195

195:                                              ; preds = %190, %185
  %196 = load i32*, i32** %3, align 8
  %197 = load i32, i32* @TIFFTAG_YPOSITION, align 4
  %198 = call i32 @TIFFGetField(i32* %196, i32 %197, i8** %8)
  %199 = icmp ne i32 %198, 0
  br i1 %199, label %200, label %205

200:                                              ; preds = %195
  %201 = load i32*, i32** %4, align 8
  %202 = load i32, i32* @TIFFTAG_YPOSITION, align 4
  %203 = load i8*, i8** %8, align 8
  %204 = call i32 @TIFFSetField(i32* %201, i32 %202, i8* %203)
  br label %205

205:                                              ; preds = %200, %195
  %206 = load i32*, i32** %3, align 8
  %207 = load i32, i32* @TIFFTAG_IMAGEDEPTH, align 4
  %208 = call i32 @TIFFGetField(i32* %206, i32 %207, i8** %10)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %205
  %211 = load i32*, i32** %4, align 8
  %212 = load i32, i32* @TIFFTAG_IMAGEDEPTH, align 4
  %213 = load i8*, i8** %10, align 8
  %214 = call i32 @TIFFSetField(i32* %211, i32 %212, i8* %213)
  br label %215

215:                                              ; preds = %210, %205
  %216 = load i32*, i32** %3, align 8
  %217 = load i32, i32* @TIFFTAG_TILEDEPTH, align 4
  %218 = call i32 @TIFFGetField(i32* %216, i32 %217, i8** %10)
  %219 = icmp ne i32 %218, 0
  br i1 %219, label %220, label %225

220:                                              ; preds = %215
  %221 = load i32*, i32** %4, align 8
  %222 = load i32, i32* @TIFFTAG_TILEDEPTH, align 4
  %223 = load i8*, i8** %10, align 8
  %224 = call i32 @TIFFSetField(i32* %221, i32 %222, i8* %223)
  br label %225

225:                                              ; preds = %220, %215
  %226 = load i32*, i32** %3, align 8
  %227 = load i32, i32* @TIFFTAG_TILEWIDTH, align 4
  %228 = call i32 @TIFFGetField(i32* %226, i32 %227, i8** %10)
  %229 = icmp ne i32 %228, 0
  br i1 %229, label %230, label %235

230:                                              ; preds = %225
  %231 = load i32*, i32** %4, align 8
  %232 = load i32, i32* @TIFFTAG_TILEWIDTH, align 4
  %233 = load i8*, i8** %10, align 8
  %234 = call i32 @TIFFSetField(i32* %231, i32 %232, i8* %233)
  br label %235

235:                                              ; preds = %230, %225
  %236 = load i32*, i32** %3, align 8
  %237 = load i32, i32* @TIFFTAG_TILELENGTH, align 4
  %238 = call i32 @TIFFGetField(i32* %236, i32 %237, i8** %10)
  %239 = icmp ne i32 %238, 0
  br i1 %239, label %240, label %245

240:                                              ; preds = %235
  %241 = load i32*, i32** %4, align 8
  %242 = load i32, i32* @TIFFTAG_TILELENGTH, align 4
  %243 = load i8*, i8** %10, align 8
  %244 = call i32 @TIFFSetField(i32* %241, i32 %242, i8* %243)
  br label %245

245:                                              ; preds = %240, %235
  %246 = load i32*, i32** %3, align 8
  %247 = load i32, i32* @TIFFTAG_ARTIST, align 4
  %248 = call i32 @TIFFGetField(i32* %246, i32 %247, i8** %9)
  %249 = icmp ne i32 %248, 0
  br i1 %249, label %250, label %255

250:                                              ; preds = %245
  %251 = load i32*, i32** %4, align 8
  %252 = load i32, i32* @TIFFTAG_ARTIST, align 4
  %253 = load i8*, i8** %9, align 8
  %254 = call i32 @TIFFSetField(i32* %251, i32 %252, i8* %253)
  br label %255

255:                                              ; preds = %250, %245
  %256 = load i32*, i32** %3, align 8
  %257 = load i32, i32* @TIFFTAG_IMAGEDESCRIPTION, align 4
  %258 = call i32 @TIFFGetField(i32* %256, i32 %257, i8** %9)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %260, label %265

260:                                              ; preds = %255
  %261 = load i32*, i32** %4, align 8
  %262 = load i32, i32* @TIFFTAG_IMAGEDESCRIPTION, align 4
  %263 = load i8*, i8** %9, align 8
  %264 = call i32 @TIFFSetField(i32* %261, i32 %262, i8* %263)
  br label %265

265:                                              ; preds = %260, %255
  %266 = load i32*, i32** %3, align 8
  %267 = load i32, i32* @TIFFTAG_MAKE, align 4
  %268 = call i32 @TIFFGetField(i32* %266, i32 %267, i8** %9)
  %269 = icmp ne i32 %268, 0
  br i1 %269, label %270, label %275

270:                                              ; preds = %265
  %271 = load i32*, i32** %4, align 8
  %272 = load i32, i32* @TIFFTAG_MAKE, align 4
  %273 = load i8*, i8** %9, align 8
  %274 = call i32 @TIFFSetField(i32* %271, i32 %272, i8* %273)
  br label %275

275:                                              ; preds = %270, %265
  %276 = load i32*, i32** %3, align 8
  %277 = load i32, i32* @TIFFTAG_MODEL, align 4
  %278 = call i32 @TIFFGetField(i32* %276, i32 %277, i8** %9)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %280, label %285

280:                                              ; preds = %275
  %281 = load i32*, i32** %4, align 8
  %282 = load i32, i32* @TIFFTAG_MODEL, align 4
  %283 = load i8*, i8** %9, align 8
  %284 = call i32 @TIFFSetField(i32* %281, i32 %282, i8* %283)
  br label %285

285:                                              ; preds = %280, %275
  %286 = load i32*, i32** %3, align 8
  %287 = load i32, i32* @TIFFTAG_DATETIME, align 4
  %288 = call i32 @TIFFGetField(i32* %286, i32 %287, i8** %9)
  %289 = icmp ne i32 %288, 0
  br i1 %289, label %290, label %295

290:                                              ; preds = %285
  %291 = load i32*, i32** %4, align 8
  %292 = load i32, i32* @TIFFTAG_DATETIME, align 4
  %293 = load i8*, i8** %9, align 8
  %294 = call i32 @TIFFSetField(i32* %291, i32 %292, i8* %293)
  br label %295

295:                                              ; preds = %290, %285
  %296 = load i32*, i32** %3, align 8
  %297 = load i32, i32* @TIFFTAG_HOSTCOMPUTER, align 4
  %298 = call i32 @TIFFGetField(i32* %296, i32 %297, i8** %9)
  %299 = icmp ne i32 %298, 0
  br i1 %299, label %300, label %305

300:                                              ; preds = %295
  %301 = load i32*, i32** %4, align 8
  %302 = load i32, i32* @TIFFTAG_HOSTCOMPUTER, align 4
  %303 = load i8*, i8** %9, align 8
  %304 = call i32 @TIFFSetField(i32* %301, i32 %302, i8* %303)
  br label %305

305:                                              ; preds = %300, %295
  %306 = load i32*, i32** %3, align 8
  %307 = load i32, i32* @TIFFTAG_PAGENAME, align 4
  %308 = call i32 @TIFFGetField(i32* %306, i32 %307, i8** %9)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %310, label %315

310:                                              ; preds = %305
  %311 = load i32*, i32** %4, align 8
  %312 = load i32, i32* @TIFFTAG_PAGENAME, align 4
  %313 = load i8*, i8** %9, align 8
  %314 = call i32 @TIFFSetField(i32* %311, i32 %312, i8* %313)
  br label %315

315:                                              ; preds = %310, %305
  %316 = load i32*, i32** %3, align 8
  %317 = load i32, i32* @TIFFTAG_DOCUMENTNAME, align 4
  %318 = call i32 @TIFFGetField(i32* %316, i32 %317, i8** %9)
  %319 = icmp ne i32 %318, 0
  br i1 %319, label %320, label %325

320:                                              ; preds = %315
  %321 = load i32*, i32** %4, align 8
  %322 = load i32, i32* @TIFFTAG_DOCUMENTNAME, align 4
  %323 = load i8*, i8** %9, align 8
  %324 = call i32 @TIFFSetField(i32* %321, i32 %322, i8* %323)
  br label %325

325:                                              ; preds = %320, %315
  ret void
}

declare dso_local i32 @TIFFGetField(i32*, i32, i8**) #1

declare dso_local i32 @TIFFSetField(i32*, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
