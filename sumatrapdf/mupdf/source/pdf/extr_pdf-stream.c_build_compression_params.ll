; ModuleID = '/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-stream.c_build_compression_params.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/mupdf/source/pdf/extr_pdf-stream.c_build_compression_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_15__ = type { %struct.TYPE_14__, i32 }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32, i32, i32, i32, i32 }
%struct.TYPE_11__ = type { i32, i32, i32, i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32, i32, i32, i32, i32, i32, i32 }

@Predictor = common dso_local global i32 0, align 4
@Columns = common dso_local global i32 0, align 4
@Colors = common dso_local global i32 0, align 4
@BitsPerComponent = common dso_local global i32 0, align 4
@FZ_IMAGE_RAW = common dso_local global i32 0, align 4
@CCITTFaxDecode = common dso_local global i32 0, align 4
@CCF = common dso_local global i32 0, align 4
@K = common dso_local global i32 0, align 4
@EndOfLine = common dso_local global i32 0, align 4
@EncodedByteAlign = common dso_local global i32 0, align 4
@Rows = common dso_local global i32 0, align 4
@EndOfBlock = common dso_local global i32 0, align 4
@BlackIs1 = common dso_local global i32 0, align 4
@FZ_IMAGE_FAX = common dso_local global i32 0, align 4
@DCTDecode = common dso_local global i32 0, align 4
@DCT = common dso_local global i32 0, align 4
@ColorTransform = common dso_local global i32 0, align 4
@FZ_IMAGE_JPEG = common dso_local global i32 0, align 4
@RunLengthDecode = common dso_local global i32 0, align 4
@RL = common dso_local global i32 0, align 4
@FZ_IMAGE_RLD = common dso_local global i32 0, align 4
@FlateDecode = common dso_local global i32 0, align 4
@Fl = common dso_local global i32 0, align 4
@FZ_IMAGE_FLATE = common dso_local global i32 0, align 4
@LZWDecode = common dso_local global i32 0, align 4
@LZW = common dso_local global i32 0, align 4
@EarlyChange = common dso_local global i32 0, align 4
@FZ_IMAGE_LZW = common dso_local global i32 0, align 4
@JBIG2Decode = common dso_local global i32 0, align 4
@JBIG2Globals = common dso_local global i32 0, align 4
@FZ_IMAGE_JBIG2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"jbig2 globals is not a stream, skipping globals\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32*, i32*, %struct.TYPE_15__*)* @build_compression_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @build_compression_params(i32* %0, i32* %1, i32* %2, %struct.TYPE_15__* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_15__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32*, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store %struct.TYPE_15__* %3, %struct.TYPE_15__** %8, align 8
  %23 = load i32*, i32** %5, align 8
  %24 = load i32*, i32** %7, align 8
  %25 = load i32, i32* @Predictor, align 4
  %26 = call i32 @PDF_NAME(i32 %25)
  %27 = call i32 @pdf_dict_get_int(i32* %23, i32* %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @Columns, align 4
  %31 = call i32 @PDF_NAME(i32 %30)
  %32 = call i32* @pdf_dict_get(i32* %28, i32* %29, i32 %31)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %10, align 8
  %35 = call i32 @pdf_to_int(i32* %33, i32* %34)
  store i32 %35, i32* %11, align 4
  %36 = load i32*, i32** %5, align 8
  %37 = load i32*, i32** %7, align 8
  %38 = load i32, i32* @Colors, align 4
  %39 = call i32 @PDF_NAME(i32 %38)
  %40 = call i32 @pdf_dict_get_int(i32* %36, i32* %37, i32 %39)
  store i32 %40, i32* %12, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = load i32*, i32** %7, align 8
  %43 = load i32, i32* @BitsPerComponent, align 4
  %44 = call i32 @PDF_NAME(i32 %43)
  %45 = call i32 @pdf_dict_get_int(i32* %41, i32* %42, i32 %44)
  store i32 %45, i32* %13, align 4
  %46 = load i32, i32* @FZ_IMAGE_RAW, align 4
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %48 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  %49 = load i32*, i32** %5, align 8
  %50 = load i32*, i32** %6, align 8
  %51 = load i32, i32* @CCITTFaxDecode, align 4
  %52 = call i32 @PDF_NAME(i32 %51)
  %53 = call i64 @pdf_name_eq(i32* %49, i32* %50, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %62, label %55

55:                                               ; preds = %4
  %56 = load i32*, i32** %5, align 8
  %57 = load i32*, i32** %6, align 8
  %58 = load i32, i32* @CCF, align 4
  %59 = call i32 @PDF_NAME(i32 %58)
  %60 = call i64 @pdf_name_eq(i32* %56, i32* %57, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %185

62:                                               ; preds = %55, %4
  %63 = load i32*, i32** %5, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* @K, align 4
  %66 = call i32 @PDF_NAME(i32 %65)
  %67 = call i32* @pdf_dict_get(i32* %63, i32* %64, i32 %66)
  store i32* %67, i32** %14, align 8
  %68 = load i32*, i32** %5, align 8
  %69 = load i32*, i32** %7, align 8
  %70 = load i32, i32* @EndOfLine, align 4
  %71 = call i32 @PDF_NAME(i32 %70)
  %72 = call i32* @pdf_dict_get(i32* %68, i32* %69, i32 %71)
  store i32* %72, i32** %15, align 8
  %73 = load i32*, i32** %5, align 8
  %74 = load i32*, i32** %7, align 8
  %75 = load i32, i32* @EncodedByteAlign, align 4
  %76 = call i32 @PDF_NAME(i32 %75)
  %77 = call i32* @pdf_dict_get(i32* %73, i32* %74, i32 %76)
  store i32* %77, i32** %16, align 8
  %78 = load i32*, i32** %5, align 8
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* @Rows, align 4
  %81 = call i32 @PDF_NAME(i32 %80)
  %82 = call i32* @pdf_dict_get(i32* %78, i32* %79, i32 %81)
  store i32* %82, i32** %17, align 8
  %83 = load i32*, i32** %5, align 8
  %84 = load i32*, i32** %7, align 8
  %85 = load i32, i32* @EndOfBlock, align 4
  %86 = call i32 @PDF_NAME(i32 %85)
  %87 = call i32* @pdf_dict_get(i32* %83, i32* %84, i32 %86)
  store i32* %87, i32** %18, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = load i32*, i32** %7, align 8
  %90 = load i32, i32* @BlackIs1, align 4
  %91 = call i32 @PDF_NAME(i32 %90)
  %92 = call i32* @pdf_dict_get(i32* %88, i32* %89, i32 %91)
  store i32* %92, i32** %19, align 8
  %93 = load i32, i32* @FZ_IMAGE_FAX, align 4
  %94 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %95 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %94, i32 0, i32 1
  store i32 %93, i32* %95, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %102

98:                                               ; preds = %62
  %99 = load i32*, i32** %5, align 8
  %100 = load i32*, i32** %14, align 8
  %101 = call i32 @pdf_to_int(i32* %99, i32* %100)
  br label %103

102:                                              ; preds = %62
  br label %103

103:                                              ; preds = %102, %98
  %104 = phi i32 [ %101, %98 ], [ 0, %102 ]
  %105 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %106 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %105, i32 0, i32 0
  %107 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %106, i32 0, i32 4
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load i32*, i32** %15, align 8
  %110 = icmp ne i32* %109, null
  br i1 %110, label %111, label %115

111:                                              ; preds = %103
  %112 = load i32*, i32** %5, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = call i32 @pdf_to_bool(i32* %112, i32* %113)
  br label %116

115:                                              ; preds = %103
  br label %116

116:                                              ; preds = %115, %111
  %117 = phi i32 [ %114, %111 ], [ 0, %115 ]
  %118 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %119 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %119, i32 0, i32 4
  %121 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %120, i32 0, i32 1
  store i32 %117, i32* %121, align 4
  %122 = load i32*, i32** %16, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %124, label %128

124:                                              ; preds = %116
  %125 = load i32*, i32** %5, align 8
  %126 = load i32*, i32** %16, align 8
  %127 = call i32 @pdf_to_bool(i32* %125, i32* %126)
  br label %129

128:                                              ; preds = %116
  br label %129

129:                                              ; preds = %128, %124
  %130 = phi i32 [ %127, %124 ], [ 0, %128 ]
  %131 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %132 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %131, i32 0, i32 0
  %133 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %132, i32 0, i32 4
  %134 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %133, i32 0, i32 2
  store i32 %130, i32* %134, align 8
  %135 = load i32*, i32** %10, align 8
  %136 = icmp ne i32* %135, null
  br i1 %136, label %137, label %139

137:                                              ; preds = %129
  %138 = load i32, i32* %11, align 4
  br label %140

139:                                              ; preds = %129
  br label %140

140:                                              ; preds = %139, %137
  %141 = phi i32 [ %138, %137 ], [ 1728, %139 ]
  %142 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %143 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %144, i32 0, i32 3
  store i32 %141, i32* %145, align 4
  %146 = load i32*, i32** %17, align 8
  %147 = icmp ne i32* %146, null
  br i1 %147, label %148, label %152

148:                                              ; preds = %140
  %149 = load i32*, i32** %5, align 8
  %150 = load i32*, i32** %17, align 8
  %151 = call i32 @pdf_to_int(i32* %149, i32* %150)
  br label %153

152:                                              ; preds = %140
  br label %153

153:                                              ; preds = %152, %148
  %154 = phi i32 [ %151, %148 ], [ 0, %152 ]
  %155 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %157, i32 0, i32 4
  store i32 %154, i32* %158, align 8
  %159 = load i32*, i32** %18, align 8
  %160 = icmp ne i32* %159, null
  br i1 %160, label %161, label %165

161:                                              ; preds = %153
  %162 = load i32*, i32** %5, align 8
  %163 = load i32*, i32** %18, align 8
  %164 = call i32 @pdf_to_bool(i32* %162, i32* %163)
  br label %166

165:                                              ; preds = %153
  br label %166

166:                                              ; preds = %165, %161
  %167 = phi i32 [ %164, %161 ], [ 1, %165 ]
  %168 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %169 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %168, i32 0, i32 0
  %170 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %170, i32 0, i32 5
  store i32 %167, i32* %171, align 4
  %172 = load i32*, i32** %19, align 8
  %173 = icmp ne i32* %172, null
  br i1 %173, label %174, label %178

174:                                              ; preds = %166
  %175 = load i32*, i32** %5, align 8
  %176 = load i32*, i32** %19, align 8
  %177 = call i32 @pdf_to_bool(i32* %175, i32* %176)
  br label %179

178:                                              ; preds = %166
  br label %179

179:                                              ; preds = %178, %174
  %180 = phi i32 [ %177, %174 ], [ 0, %178 ]
  %181 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %182 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %181, i32 0, i32 0
  %183 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %182, i32 0, i32 4
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 6
  store i32 %180, i32* %184, align 8
  br label %378

185:                                              ; preds = %55
  %186 = load i32*, i32** %5, align 8
  %187 = load i32*, i32** %6, align 8
  %188 = load i32, i32* @DCTDecode, align 4
  %189 = call i32 @PDF_NAME(i32 %188)
  %190 = call i64 @pdf_name_eq(i32* %186, i32* %187, i32 %189)
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %199, label %192

192:                                              ; preds = %185
  %193 = load i32*, i32** %5, align 8
  %194 = load i32*, i32** %6, align 8
  %195 = load i32, i32* @DCT, align 4
  %196 = call i32 @PDF_NAME(i32 %195)
  %197 = call i64 @pdf_name_eq(i32* %193, i32* %194, i32 %196)
  %198 = icmp ne i64 %197, 0
  br i1 %198, label %199, label %221

199:                                              ; preds = %192, %185
  %200 = load i32*, i32** %5, align 8
  %201 = load i32*, i32** %7, align 8
  %202 = load i32, i32* @ColorTransform, align 4
  %203 = call i32 @PDF_NAME(i32 %202)
  %204 = call i32* @pdf_dict_get(i32* %200, i32* %201, i32 %203)
  store i32* %204, i32** %20, align 8
  %205 = load i32, i32* @FZ_IMAGE_JPEG, align 4
  %206 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %207 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %206, i32 0, i32 1
  store i32 %205, i32* %207, align 8
  %208 = load i32*, i32** %20, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %214

210:                                              ; preds = %199
  %211 = load i32*, i32** %5, align 8
  %212 = load i32*, i32** %20, align 8
  %213 = call i32 @pdf_to_int(i32* %211, i32* %212)
  br label %215

214:                                              ; preds = %199
  br label %215

215:                                              ; preds = %214, %210
  %216 = phi i32 [ %213, %210 ], [ -1, %214 ]
  %217 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 0
  %219 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %218, i32 0, i32 3
  %220 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %219, i32 0, i32 0
  store i32 %216, i32* %220, align 4
  br label %377

221:                                              ; preds = %192
  %222 = load i32*, i32** %5, align 8
  %223 = load i32*, i32** %6, align 8
  %224 = load i32, i32* @RunLengthDecode, align 4
  %225 = call i32 @PDF_NAME(i32 %224)
  %226 = call i64 @pdf_name_eq(i32* %222, i32* %223, i32 %225)
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %235, label %228

228:                                              ; preds = %221
  %229 = load i32*, i32** %5, align 8
  %230 = load i32*, i32** %6, align 8
  %231 = load i32, i32* @RL, align 4
  %232 = call i32 @PDF_NAME(i32 %231)
  %233 = call i64 @pdf_name_eq(i32* %229, i32* %230, i32 %232)
  %234 = icmp ne i64 %233, 0
  br i1 %234, label %235, label %239

235:                                              ; preds = %228, %221
  %236 = load i32, i32* @FZ_IMAGE_RLD, align 4
  %237 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %238 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %237, i32 0, i32 1
  store i32 %236, i32* %238, align 8
  br label %376

239:                                              ; preds = %228
  %240 = load i32*, i32** %5, align 8
  %241 = load i32*, i32** %6, align 8
  %242 = load i32, i32* @FlateDecode, align 4
  %243 = call i32 @PDF_NAME(i32 %242)
  %244 = call i64 @pdf_name_eq(i32* %240, i32* %241, i32 %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %253, label %246

246:                                              ; preds = %239
  %247 = load i32*, i32** %5, align 8
  %248 = load i32*, i32** %6, align 8
  %249 = load i32, i32* @Fl, align 4
  %250 = call i32 @PDF_NAME(i32 %249)
  %251 = call i64 @pdf_name_eq(i32* %247, i32* %248, i32 %250)
  %252 = icmp ne i64 %251, 0
  br i1 %252, label %253, label %277

253:                                              ; preds = %246, %239
  %254 = load i32, i32* @FZ_IMAGE_FLATE, align 4
  %255 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %256 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %255, i32 0, i32 1
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* %9, align 4
  %258 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %259 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %258, i32 0, i32 0
  %260 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %259, i32 0, i32 2
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  store i32 %257, i32* %261, align 4
  %262 = load i32, i32* %11, align 4
  %263 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %264 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %263, i32 0, i32 0
  %265 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %264, i32 0, i32 2
  %266 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %265, i32 0, i32 1
  store i32 %262, i32* %266, align 4
  %267 = load i32, i32* %12, align 4
  %268 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %269 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %268, i32 0, i32 0
  %270 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %269, i32 0, i32 2
  %271 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %270, i32 0, i32 2
  store i32 %267, i32* %271, align 4
  %272 = load i32, i32* %13, align 4
  %273 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %274 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %273, i32 0, i32 0
  %275 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %274, i32 0, i32 2
  %276 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %275, i32 0, i32 3
  store i32 %272, i32* %276, align 4
  br label %375

277:                                              ; preds = %246
  %278 = load i32*, i32** %5, align 8
  %279 = load i32*, i32** %6, align 8
  %280 = load i32, i32* @LZWDecode, align 4
  %281 = call i32 @PDF_NAME(i32 %280)
  %282 = call i64 @pdf_name_eq(i32* %278, i32* %279, i32 %281)
  %283 = icmp ne i64 %282, 0
  br i1 %283, label %291, label %284

284:                                              ; preds = %277
  %285 = load i32*, i32** %5, align 8
  %286 = load i32*, i32** %6, align 8
  %287 = load i32, i32* @LZW, align 4
  %288 = call i32 @PDF_NAME(i32 %287)
  %289 = call i64 @pdf_name_eq(i32* %285, i32* %286, i32 %288)
  %290 = icmp ne i64 %289, 0
  br i1 %290, label %291, label %333

291:                                              ; preds = %284, %277
  %292 = load i32*, i32** %5, align 8
  %293 = load i32*, i32** %7, align 8
  %294 = load i32, i32* @EarlyChange, align 4
  %295 = call i32 @PDF_NAME(i32 %294)
  %296 = call i32* @pdf_dict_get(i32* %292, i32* %293, i32 %295)
  store i32* %296, i32** %21, align 8
  %297 = load i32, i32* @FZ_IMAGE_LZW, align 4
  %298 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %299 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %298, i32 0, i32 1
  store i32 %297, i32* %299, align 8
  %300 = load i32, i32* %9, align 4
  %301 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %302 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %301, i32 0, i32 0
  %303 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %302, i32 0, i32 1
  %304 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %303, i32 0, i32 0
  store i32 %300, i32* %304, align 8
  %305 = load i32, i32* %11, align 4
  %306 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %307 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %306, i32 0, i32 0
  %308 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %307, i32 0, i32 1
  %309 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %308, i32 0, i32 1
  store i32 %305, i32* %309, align 4
  %310 = load i32, i32* %12, align 4
  %311 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %312 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %311, i32 0, i32 0
  %313 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %312, i32 0, i32 1
  %314 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %313, i32 0, i32 2
  store i32 %310, i32* %314, align 8
  %315 = load i32, i32* %13, align 4
  %316 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %317 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %316, i32 0, i32 0
  %318 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %317, i32 0, i32 1
  %319 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %318, i32 0, i32 3
  store i32 %315, i32* %319, align 4
  %320 = load i32*, i32** %21, align 8
  %321 = icmp ne i32* %320, null
  br i1 %321, label %322, label %326

322:                                              ; preds = %291
  %323 = load i32*, i32** %5, align 8
  %324 = load i32*, i32** %21, align 8
  %325 = call i32 @pdf_to_int(i32* %323, i32* %324)
  br label %327

326:                                              ; preds = %291
  br label %327

327:                                              ; preds = %326, %322
  %328 = phi i32 [ %325, %322 ], [ 1, %326 ]
  %329 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %330 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %329, i32 0, i32 0
  %331 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %330, i32 0, i32 1
  %332 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %331, i32 0, i32 4
  store i32 %328, i32* %332, align 8
  br label %374

333:                                              ; preds = %284
  %334 = load i32*, i32** %5, align 8
  %335 = load i32*, i32** %6, align 8
  %336 = load i32, i32* @JBIG2Decode, align 4
  %337 = call i32 @PDF_NAME(i32 %336)
  %338 = call i64 @pdf_name_eq(i32* %334, i32* %335, i32 %337)
  %339 = icmp ne i64 %338, 0
  br i1 %339, label %340, label %373

340:                                              ; preds = %333
  %341 = load i32*, i32** %5, align 8
  %342 = load i32*, i32** %7, align 8
  %343 = load i32, i32* @JBIG2Globals, align 4
  %344 = call i32 @PDF_NAME(i32 %343)
  %345 = call i32* @pdf_dict_get(i32* %341, i32* %342, i32 %344)
  store i32* %345, i32** %22, align 8
  %346 = load i32, i32* @FZ_IMAGE_JBIG2, align 4
  %347 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %348 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %347, i32 0, i32 1
  store i32 %346, i32* %348, align 8
  %349 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %350 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %349, i32 0, i32 0
  %351 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %350, i32 0, i32 0
  %352 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %351, i32 0, i32 0
  store i32* null, i32** %352, align 8
  %353 = load i32*, i32** %22, align 8
  %354 = icmp ne i32* %353, null
  br i1 %354, label %355, label %372

355:                                              ; preds = %340
  %356 = load i32*, i32** %5, align 8
  %357 = load i32*, i32** %22, align 8
  %358 = call i32 @pdf_is_stream(i32* %356, i32* %357)
  %359 = icmp ne i32 %358, 0
  br i1 %359, label %363, label %360

360:                                              ; preds = %355
  %361 = load i32*, i32** %5, align 8
  %362 = call i32 @fz_warn(i32* %361, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0))
  br label %371

363:                                              ; preds = %355
  %364 = load i32*, i32** %5, align 8
  %365 = load i32*, i32** %22, align 8
  %366 = call i32* @pdf_load_jbig2_globals(i32* %364, i32* %365)
  %367 = load %struct.TYPE_15__*, %struct.TYPE_15__** %8, align 8
  %368 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %367, i32 0, i32 0
  %369 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %368, i32 0, i32 0
  %370 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %369, i32 0, i32 0
  store i32* %366, i32** %370, align 8
  br label %371

371:                                              ; preds = %363, %360
  br label %372

372:                                              ; preds = %371, %340
  br label %373

373:                                              ; preds = %372, %333
  br label %374

374:                                              ; preds = %373, %327
  br label %375

375:                                              ; preds = %374, %253
  br label %376

376:                                              ; preds = %375, %235
  br label %377

377:                                              ; preds = %376, %215
  br label %378

378:                                              ; preds = %377, %179
  ret void
}

declare dso_local i32 @pdf_dict_get_int(i32*, i32*, i32) #1

declare dso_local i32 @PDF_NAME(i32) #1

declare dso_local i32* @pdf_dict_get(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_int(i32*, i32*) #1

declare dso_local i64 @pdf_name_eq(i32*, i32*, i32) #1

declare dso_local i32 @pdf_to_bool(i32*, i32*) #1

declare dso_local i32 @pdf_is_stream(i32*, i32*) #1

declare dso_local i32 @fz_warn(i32*, i8*) #1

declare dso_local i32* @pdf_load_jbig2_globals(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
