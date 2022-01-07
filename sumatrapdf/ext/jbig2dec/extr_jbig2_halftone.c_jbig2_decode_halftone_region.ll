; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_halftone.c_jbig2_decode_halftone_region.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/jbig2dec/extr_jbig2_halftone.c_jbig2_decode_halftone_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_28__ = type { i32 }
%struct.TYPE_24__ = type { i32 }
%struct.TYPE_27__ = type { i32, i32, i32, i32, i32, i32, i64, i64, i32, i32, i32 }
%struct.TYPE_26__ = type { i32, i32, i64, i32 }
%struct.TYPE_25__ = type { i64, i64, i32, i32* }

@JBIG2_SEVERITY_WARNING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"no pattern dictionary found, skipping halftone image\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"failed to allocate skip image\00", align 1
@JBIG2_SEVERITY_FATAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [35 x i8] c"HBPP is larger than supported (%u)\00", align 1
@.str.3 = private unnamed_addr constant [60 x i8] c"unable to acquire gray-scale image, skipping halftone image\00", align 1
@.str.4 = private unnamed_addr constant [54 x i8] c"gray-scale index %d out of range, using largest index\00", align 1
@.str.5 = private unnamed_addr constant [48 x i8] c"failed to compose pattern with gray-scale image\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_28__*, %struct.TYPE_24__*, %struct.TYPE_27__*, i32*, i64, %struct.TYPE_26__*, i32*)* @jbig2_decode_halftone_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jbig2_decode_halftone_region(%struct.TYPE_28__* %0, %struct.TYPE_24__* %1, %struct.TYPE_27__* %2, i32* %3, i64 %4, %struct.TYPE_26__* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_28__*, align 8
  %10 = alloca %struct.TYPE_24__*, align 8
  %11 = alloca %struct.TYPE_27__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.TYPE_26__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32**, align 8
  %19 = alloca %struct.TYPE_26__*, align 8
  %20 = alloca %struct.TYPE_25__*, align 8
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  store %struct.TYPE_28__* %0, %struct.TYPE_28__** %9, align 8
  store %struct.TYPE_24__* %1, %struct.TYPE_24__** %10, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %11, align 8
  store i32* %3, i32** %12, align 8
  store i64 %4, i64* %13, align 8
  store %struct.TYPE_26__* %5, %struct.TYPE_26__** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32** null, i32*** %18, align 8
  store %struct.TYPE_26__* null, %struct.TYPE_26__** %19, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %29 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %30 = call %struct.TYPE_25__* @jbig2_decode_ht_region_get_hpats(%struct.TYPE_28__* %28, %struct.TYPE_24__* %29)
  store %struct.TYPE_25__* %30, %struct.TYPE_25__** %20, align 8
  %31 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %32 = icmp ne %struct.TYPE_25__* %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %7
  %34 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %35 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %36 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %37 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (%struct.TYPE_28__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_28__* %34, i32 %35, i32 %38, i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0))
  store i32 %39, i32* %27, align 4
  br label %337

40:                                               ; preds = %7
  %41 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %42 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %45 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %44, i32 0, i32 10
  %46 = load i32, i32* %45, align 8
  %47 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %48 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %51 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = mul nsw i32 %49, %52
  %54 = call i32 @memset(i32 %43, i32 %46, i32 %53)
  %55 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp eq i32 %57, 1
  br i1 %58, label %59, label %175

59:                                               ; preds = %40
  %60 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %61 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %62 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %65 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call %struct.TYPE_26__* @jbig2_image_new(%struct.TYPE_28__* %60, i32 %63, i32 %66)
  store %struct.TYPE_26__* %67, %struct.TYPE_26__** %19, align 8
  %68 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %69 = icmp eq %struct.TYPE_26__* %68, null
  br i1 %69, label %70, label %77

70:                                               ; preds = %59
  %71 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %72 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %73 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 (%struct.TYPE_28__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_28__* %71, i32 %72, i32 %75, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  store i32 %76, i32* %8, align 4
  br label %371

77:                                               ; preds = %59
  store i32 0, i32* %22, align 4
  br label %78

78:                                               ; preds = %171, %77
  %79 = load i32, i32* %22, align 4
  %80 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %81 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %174

84:                                               ; preds = %78
  store i32 0, i32* %23, align 4
  br label %85

85:                                               ; preds = %167, %84
  %86 = load i32, i32* %23, align 4
  %87 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %88 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = icmp slt i32 %86, %89
  br i1 %90, label %91, label %170

91:                                               ; preds = %85
  %92 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %92, i32 0, i32 3
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %22, align 4
  %96 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %97 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %96, i32 0, i32 6
  %98 = load i64, i64* %97, align 8
  %99 = trunc i64 %98 to i32
  %100 = mul nsw i32 %95, %99
  %101 = add nsw i32 %94, %100
  %102 = load i32, i32* %23, align 4
  %103 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %104 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %103, i32 0, i32 7
  %105 = load i64, i64* %104, align 8
  %106 = trunc i64 %105 to i32
  %107 = mul nsw i32 %102, %106
  %108 = add nsw i32 %101, %107
  %109 = ashr i32 %108, 8
  store i32 %109, i32* %24, align 4
  %110 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %110, i32 0, i32 4
  %112 = load i32, i32* %111, align 8
  %113 = load i32, i32* %22, align 4
  %114 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %114, i32 0, i32 7
  %116 = load i64, i64* %115, align 8
  %117 = trunc i64 %116 to i32
  %118 = mul nsw i32 %113, %117
  %119 = add nsw i32 %112, %118
  %120 = load i32, i32* %23, align 4
  %121 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %122 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %121, i32 0, i32 6
  %123 = load i64, i64* %122, align 8
  %124 = trunc i64 %123 to i32
  %125 = mul nsw i32 %120, %124
  %126 = sub nsw i32 %119, %125
  %127 = ashr i32 %126, 8
  store i32 %127, i32* %25, align 4
  %128 = load i32, i32* %24, align 4
  %129 = sext i32 %128 to i64
  %130 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %131 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %130, i32 0, i32 0
  %132 = load i64, i64* %131, align 8
  %133 = add nsw i64 %129, %132
  %134 = icmp sle i64 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %91
  %136 = load i32, i32* %24, align 4
  %137 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %137, i32 0, i32 2
  %139 = load i64, i64* %138, align 8
  %140 = trunc i64 %139 to i32
  %141 = icmp sge i32 %136, %140
  br i1 %141, label %156, label %142

142:                                              ; preds = %135
  %143 = load i32, i32* %25, align 4
  %144 = sext i32 %143 to i64
  %145 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %146 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %145, i32 0, i32 1
  %147 = load i64, i64* %146, align 8
  %148 = add nsw i64 %144, %147
  %149 = icmp sle i64 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %142
  %151 = load i32, i32* %25, align 4
  %152 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %153 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %152, i32 0, i32 1
  %154 = load i32, i32* %153, align 4
  %155 = icmp sge i32 %151, %154
  br i1 %155, label %156, label %161

156:                                              ; preds = %150, %142, %135, %91
  %157 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %158 = load i32, i32* %23, align 4
  %159 = load i32, i32* %22, align 4
  %160 = call i32 @jbig2_image_set_pixel(%struct.TYPE_26__* %157, i32 %158, i32 %159, i32 1)
  br label %166

161:                                              ; preds = %150
  %162 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %163 = load i32, i32* %23, align 4
  %164 = load i32, i32* %22, align 4
  %165 = call i32 @jbig2_image_set_pixel(%struct.TYPE_26__* %162, i32 %163, i32 %164, i32 0)
  br label %166

166:                                              ; preds = %161, %156
  br label %167

167:                                              ; preds = %166
  %168 = load i32, i32* %23, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %23, align 4
  br label %85

170:                                              ; preds = %85
  br label %171

171:                                              ; preds = %170
  %172 = load i32, i32* %22, align 4
  %173 = add nsw i32 %172, 1
  store i32 %173, i32* %22, align 4
  br label %78

174:                                              ; preds = %78
  br label %175

175:                                              ; preds = %174, %40
  %176 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %177 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %176, i32 0, i32 2
  %178 = load i32, i32* %177, align 8
  store i32 %178, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %179

179:                                              ; preds = %185, %175
  %180 = load i32, i32* %17, align 4
  %181 = load i32, i32* %16, align 4
  %182 = add nsw i32 %181, 1
  store i32 %182, i32* %16, align 4
  %183 = shl i32 1, %182
  %184 = icmp ugt i32 %180, %183
  br i1 %184, label %185, label %186

185:                                              ; preds = %179
  br label %179

186:                                              ; preds = %179
  %187 = load i32, i32* %16, align 4
  %188 = icmp sgt i32 %187, 16
  br i1 %188, label %189, label %197

189:                                              ; preds = %186
  %190 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %191 = load i32, i32* @JBIG2_SEVERITY_FATAL, align 4
  %192 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %193 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %192, i32 0, i32 0
  %194 = load i32, i32* %193, align 4
  %195 = load i32, i32* %16, align 4
  %196 = call i32 (%struct.TYPE_28__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_28__* %190, i32 %191, i32 %194, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i32 %195)
  store i32 %196, i32* %27, align 4
  br label %337

197:                                              ; preds = %186
  %198 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %199 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %200 = load i32*, i32** %12, align 8
  %201 = load i64, i64* %13, align 8
  %202 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %203 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %202, i32 0, i32 9
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %206 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %205, i32 0, i32 1
  %207 = load i32, i32* %206, align 4
  %208 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %209 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %208, i32 0, i32 2
  %210 = load i32, i32* %209, align 8
  %211 = load i32, i32* %16, align 4
  %212 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %213 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 8
  %215 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %216 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %217 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %216, i32 0, i32 8
  %218 = load i32, i32* %217, align 8
  %219 = load i32*, i32** %15, align 8
  %220 = call i32** @jbig2_decode_gray_scale_image(%struct.TYPE_28__* %198, %struct.TYPE_24__* %199, i32* %200, i64 %201, i32 %204, i32 %207, i32 %210, i32 %211, i32 %214, %struct.TYPE_26__* %215, i32 %218, i32* %219)
  store i32** %220, i32*** %18, align 8
  %221 = load i32**, i32*** %18, align 8
  %222 = icmp ne i32** %221, null
  br i1 %222, label %230, label %223

223:                                              ; preds = %197
  %224 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %225 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %226 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %227 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %226, i32 0, i32 0
  %228 = load i32, i32* %227, align 4
  %229 = call i32 (%struct.TYPE_28__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_28__* %224, i32 %225, i32 %228, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.3, i64 0, i64 0))
  store i32 %229, i32* %27, align 4
  br label %337

230:                                              ; preds = %197
  store i32 0, i32* %22, align 4
  br label %231

231:                                              ; preds = %333, %230
  %232 = load i32, i32* %22, align 4
  %233 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %234 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = icmp slt i32 %232, %235
  br i1 %236, label %237, label %336

237:                                              ; preds = %231
  store i32 0, i32* %23, align 4
  br label %238

238:                                              ; preds = %329, %237
  %239 = load i32, i32* %23, align 4
  %240 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %241 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %240, i32 0, i32 1
  %242 = load i32, i32* %241, align 4
  %243 = icmp slt i32 %239, %242
  br i1 %243, label %244, label %332

244:                                              ; preds = %238
  %245 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %246 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %245, i32 0, i32 3
  %247 = load i32, i32* %246, align 4
  %248 = load i32, i32* %22, align 4
  %249 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %250 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %249, i32 0, i32 6
  %251 = load i64, i64* %250, align 8
  %252 = trunc i64 %251 to i32
  %253 = mul nsw i32 %248, %252
  %254 = add nsw i32 %247, %253
  %255 = load i32, i32* %23, align 4
  %256 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %257 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %256, i32 0, i32 7
  %258 = load i64, i64* %257, align 8
  %259 = trunc i64 %258 to i32
  %260 = mul nsw i32 %255, %259
  %261 = add nsw i32 %254, %260
  %262 = ashr i32 %261, 8
  store i32 %262, i32* %24, align 4
  %263 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %264 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %263, i32 0, i32 4
  %265 = load i32, i32* %264, align 8
  %266 = load i32, i32* %22, align 4
  %267 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %268 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %267, i32 0, i32 7
  %269 = load i64, i64* %268, align 8
  %270 = trunc i64 %269 to i32
  %271 = mul nsw i32 %266, %270
  %272 = add nsw i32 %265, %271
  %273 = load i32, i32* %23, align 4
  %274 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %275 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %274, i32 0, i32 6
  %276 = load i64, i64* %275, align 8
  %277 = trunc i64 %276 to i32
  %278 = mul nsw i32 %273, %277
  %279 = sub nsw i32 %272, %278
  %280 = ashr i32 %279, 8
  store i32 %280, i32* %25, align 4
  %281 = load i32**, i32*** %18, align 8
  %282 = load i32, i32* %23, align 4
  %283 = sext i32 %282 to i64
  %284 = getelementptr inbounds i32*, i32** %281, i64 %283
  %285 = load i32*, i32** %284, align 8
  %286 = load i32, i32* %22, align 4
  %287 = sext i32 %286 to i64
  %288 = getelementptr inbounds i32, i32* %285, i64 %287
  %289 = load i32, i32* %288, align 4
  store i32 %289, i32* %26, align 4
  %290 = load i32, i32* %26, align 4
  %291 = load i32, i32* %17, align 4
  %292 = icmp sge i32 %290, %291
  br i1 %292, label %293, label %303

293:                                              ; preds = %244
  %294 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %295 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %296 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %297 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %296, i32 0, i32 0
  %298 = load i32, i32* %297, align 4
  %299 = load i32, i32* %26, align 4
  %300 = call i32 (%struct.TYPE_28__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_28__* %294, i32 %295, i32 %298, i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.4, i64 0, i64 0), i32 %299)
  %301 = load i32, i32* %17, align 4
  %302 = sub nsw i32 %301, 1
  store i32 %302, i32* %26, align 4
  br label %303

303:                                              ; preds = %293, %244
  %304 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %305 = load %struct.TYPE_26__*, %struct.TYPE_26__** %14, align 8
  %306 = load %struct.TYPE_25__*, %struct.TYPE_25__** %20, align 8
  %307 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %306, i32 0, i32 3
  %308 = load i32*, i32** %307, align 8
  %309 = load i32, i32* %26, align 4
  %310 = sext i32 %309 to i64
  %311 = getelementptr inbounds i32, i32* %308, i64 %310
  %312 = load i32, i32* %311, align 4
  %313 = load i32, i32* %24, align 4
  %314 = load i32, i32* %25, align 4
  %315 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %316 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %315, i32 0, i32 5
  %317 = load i32, i32* %316, align 4
  %318 = call i32 @jbig2_image_compose(%struct.TYPE_28__* %304, %struct.TYPE_26__* %305, i32 %312, i32 %313, i32 %314, i32 %317)
  store i32 %318, i32* %27, align 4
  %319 = load i32, i32* %27, align 4
  %320 = icmp slt i32 %319, 0
  br i1 %320, label %321, label %328

321:                                              ; preds = %303
  %322 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %323 = load i32, i32* @JBIG2_SEVERITY_WARNING, align 4
  %324 = load %struct.TYPE_24__*, %struct.TYPE_24__** %10, align 8
  %325 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %324, i32 0, i32 0
  %326 = load i32, i32* %325, align 4
  %327 = call i32 (%struct.TYPE_28__*, i32, i32, i8*, ...) @jbig2_error(%struct.TYPE_28__* %322, i32 %323, i32 %326, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.5, i64 0, i64 0))
  store i32 %327, i32* %27, align 4
  br label %337

328:                                              ; preds = %303
  br label %329

329:                                              ; preds = %328
  %330 = load i32, i32* %23, align 4
  %331 = add nsw i32 %330, 1
  store i32 %331, i32* %23, align 4
  br label %238

332:                                              ; preds = %238
  br label %333

333:                                              ; preds = %332
  %334 = load i32, i32* %22, align 4
  %335 = add nsw i32 %334, 1
  store i32 %335, i32* %22, align 4
  br label %231

336:                                              ; preds = %231
  br label %337

337:                                              ; preds = %336, %321, %223, %189, %33
  %338 = load i32**, i32*** %18, align 8
  %339 = icmp ne i32** %338, null
  br i1 %339, label %340, label %361

340:                                              ; preds = %337
  store i32 0, i32* %21, align 4
  br label %341

341:                                              ; preds = %357, %340
  %342 = load i32, i32* %21, align 4
  %343 = load %struct.TYPE_27__*, %struct.TYPE_27__** %11, align 8
  %344 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %343, i32 0, i32 1
  %345 = load i32, i32* %344, align 4
  %346 = icmp slt i32 %342, %345
  br i1 %346, label %347, label %360

347:                                              ; preds = %341
  %348 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %349 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %348, i32 0, i32 0
  %350 = load i32, i32* %349, align 4
  %351 = load i32**, i32*** %18, align 8
  %352 = load i32, i32* %21, align 4
  %353 = sext i32 %352 to i64
  %354 = getelementptr inbounds i32*, i32** %351, i64 %353
  %355 = load i32*, i32** %354, align 8
  %356 = call i32 (i32, ...) @jbig2_free(i32 %350, i32* %355)
  br label %357

357:                                              ; preds = %347
  %358 = load i32, i32* %21, align 4
  %359 = add nsw i32 %358, 1
  store i32 %359, i32* %21, align 4
  br label %341

360:                                              ; preds = %341
  br label %361

361:                                              ; preds = %360, %337
  %362 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %363 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = load i32**, i32*** %18, align 8
  %366 = call i32 (i32, ...) @jbig2_free(i32 %364, i32** %365)
  %367 = load %struct.TYPE_28__*, %struct.TYPE_28__** %9, align 8
  %368 = load %struct.TYPE_26__*, %struct.TYPE_26__** %19, align 8
  %369 = call i32 @jbig2_image_release(%struct.TYPE_28__* %367, %struct.TYPE_26__* %368)
  %370 = load i32, i32* %27, align 4
  store i32 %370, i32* %8, align 4
  br label %371

371:                                              ; preds = %361, %70
  %372 = load i32, i32* %8, align 4
  ret i32 %372
}

declare dso_local %struct.TYPE_25__* @jbig2_decode_ht_region_get_hpats(%struct.TYPE_28__*, %struct.TYPE_24__*) #1

declare dso_local i32 @jbig2_error(%struct.TYPE_28__*, i32, i32, i8*, ...) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_26__* @jbig2_image_new(%struct.TYPE_28__*, i32, i32) #1

declare dso_local i32 @jbig2_image_set_pixel(%struct.TYPE_26__*, i32, i32, i32) #1

declare dso_local i32** @jbig2_decode_gray_scale_image(%struct.TYPE_28__*, %struct.TYPE_24__*, i32*, i64, i32, i32, i32, i32, i32, %struct.TYPE_26__*, i32, i32*) #1

declare dso_local i32 @jbig2_image_compose(%struct.TYPE_28__*, %struct.TYPE_26__*, i32, i32, i32, i32) #1

declare dso_local i32 @jbig2_free(i32, ...) #1

declare dso_local i32 @jbig2_image_release(%struct.TYPE_28__*, %struct.TYPE_26__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
