; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT16_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT16_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_16__ = type { %struct.TYPE_15__* }
%struct.TYPE_15__ = type { i64, %struct.TYPE_15__*, i64 }
%struct.TYPE_17__ = type { %struct.TYPE_13__** }
%struct.TYPE_13__ = type { i64 }
%struct.TYPE_18__ = type { i32* }
%struct.TYPE_19__ = type { %struct.TYPE_14__, %struct.TYPE_12__* }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_12__ = type { i64* }

@cmsSigMatrixElemType = common dso_local global i64 0, align 8
@cmsSigCurveSetElemType = common dso_local global i64 0, align 8
@cmsSigCLutElemType = common dso_local global i64 0, align 8
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"LUT is not suitable to be saved as LUT16\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i64)* @Type_LUT16_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_LUT16_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  %15 = alloca %struct.TYPE_17__*, align 8
  %16 = alloca %struct.TYPE_17__*, align 8
  %17 = alloca %struct.TYPE_18__*, align 8
  %18 = alloca %struct.TYPE_19__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = bitcast i8* %23 to %struct.TYPE_16__*
  store %struct.TYPE_16__* %24, %struct.TYPE_16__** %13, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %15, align 8
  store %struct.TYPE_17__* null, %struct.TYPE_17__** %16, align 8
  store %struct.TYPE_18__* null, %struct.TYPE_18__** %17, align 8
  store %struct.TYPE_19__* null, %struct.TYPE_19__** %18, align 8
  %25 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %26 = ptrtoint %struct._cms_typehandler_struct* %25 to i64
  %27 = call i32 @cmsUNUSED_PARAMETER(i64 %26)
  %28 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %29 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %28, i32 0, i32 0
  %30 = load %struct.TYPE_15__*, %struct.TYPE_15__** %29, align 8
  store %struct.TYPE_15__* %30, %struct.TYPE_15__** %14, align 8
  %31 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %32 = icmp ne %struct.TYPE_15__* %31, null
  br i1 %32, label %33, label %47

33:                                               ; preds = %5
  %34 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %35 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @cmsSigMatrixElemType, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %47

39:                                               ; preds = %33
  %40 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %41 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = inttoptr i64 %42 to %struct.TYPE_18__*
  store %struct.TYPE_18__* %43, %struct.TYPE_18__** %17, align 8
  %44 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %45 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %44, i32 0, i32 1
  %46 = load %struct.TYPE_15__*, %struct.TYPE_15__** %45, align 8
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %14, align 8
  br label %47

47:                                               ; preds = %39, %33, %5
  %48 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %49 = icmp ne %struct.TYPE_15__* %48, null
  br i1 %49, label %50, label %64

50:                                               ; preds = %47
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %52 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load i64, i64* @cmsSigCurveSetElemType, align 8
  %55 = icmp eq i64 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %58 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %57, i32 0, i32 2
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %60, %struct.TYPE_17__** %15, align 8
  %61 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %62 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_15__*, %struct.TYPE_15__** %62, align 8
  store %struct.TYPE_15__* %63, %struct.TYPE_15__** %14, align 8
  br label %64

64:                                               ; preds = %56, %50, %47
  %65 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %66 = icmp ne %struct.TYPE_15__* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %64
  %68 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %69 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @cmsSigCLutElemType, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %81

73:                                               ; preds = %67
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 2
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.TYPE_19__*
  store %struct.TYPE_19__* %77, %struct.TYPE_19__** %18, align 8
  %78 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %79 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %78, i32 0, i32 1
  %80 = load %struct.TYPE_15__*, %struct.TYPE_15__** %79, align 8
  store %struct.TYPE_15__* %80, %struct.TYPE_15__** %14, align 8
  br label %81

81:                                               ; preds = %73, %67, %64
  %82 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %83 = icmp ne %struct.TYPE_15__* %82, null
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %86 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @cmsSigCurveSetElemType, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %84
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 2
  %93 = load i64, i64* %92, align 8
  %94 = inttoptr i64 %93 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %94, %struct.TYPE_17__** %16, align 8
  %95 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %96 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %95, i32 0, i32 1
  %97 = load %struct.TYPE_15__*, %struct.TYPE_15__** %96, align 8
  store %struct.TYPE_15__* %97, %struct.TYPE_15__** %14, align 8
  br label %98

98:                                               ; preds = %90, %84, %81
  %99 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %100 = icmp ne %struct.TYPE_15__* %99, null
  br i1 %100, label %101, label %106

101:                                              ; preds = %98
  %102 = load i32, i32* %7, align 4
  %103 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %104 = call i32 @cmsSignalError(i32 %102, i32 %103, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %105 = load i32, i32* @FALSE, align 4
  store i32 %105, i32* %6, align 4
  br label %491

106:                                              ; preds = %98
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %109 = call i64 @cmsPipelineInputChannels(i32 %107, %struct.TYPE_16__* %108)
  store i64 %109, i64* %20, align 8
  %110 = load i32, i32* %7, align 4
  %111 = load %struct.TYPE_16__*, %struct.TYPE_16__** %13, align 8
  %112 = call i64 @cmsPipelineOutputChannels(i32 %110, %struct.TYPE_16__* %111)
  store i64 %112, i64* %21, align 8
  %113 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %114 = icmp eq %struct.TYPE_19__* %113, null
  br i1 %114, label %115, label %116

115:                                              ; preds = %106
  store i64 0, i64* %22, align 8
  br label %124

116:                                              ; preds = %106
  %117 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %118 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_12__*, %struct.TYPE_12__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 0
  %121 = load i64*, i64** %120, align 8
  %122 = getelementptr inbounds i64, i64* %121, i64 0
  %123 = load i64, i64* %122, align 8
  store i64 %123, i64* %22, align 8
  br label %124

124:                                              ; preds = %116, %115
  %125 = load i32, i32* %7, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load i64, i64* %20, align 8
  %128 = trunc i64 %127 to i32
  %129 = call i32 @_cmsWriteUInt8Number(i32 %125, i32* %126, i32 %128)
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %133, label %131

131:                                              ; preds = %124
  %132 = load i32, i32* @FALSE, align 4
  store i32 %132, i32* %6, align 4
  br label %491

133:                                              ; preds = %124
  %134 = load i32, i32* %7, align 4
  %135 = load i32*, i32** %9, align 8
  %136 = load i64, i64* %21, align 8
  %137 = trunc i64 %136 to i32
  %138 = call i32 @_cmsWriteUInt8Number(i32 %134, i32* %135, i32 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %133
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %6, align 4
  br label %491

142:                                              ; preds = %133
  %143 = load i32, i32* %7, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = load i64, i64* %22, align 8
  %146 = trunc i64 %145 to i32
  %147 = call i32 @_cmsWriteUInt8Number(i32 %143, i32* %144, i32 %146)
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %151, label %149

149:                                              ; preds = %142
  %150 = load i32, i32* @FALSE, align 4
  store i32 %150, i32* %6, align 4
  br label %491

151:                                              ; preds = %142
  %152 = load i32, i32* %7, align 4
  %153 = load i32*, i32** %9, align 8
  %154 = call i32 @_cmsWriteUInt8Number(i32 %152, i32* %153, i32 0)
  %155 = icmp ne i32 %154, 0
  br i1 %155, label %158, label %156

156:                                              ; preds = %151
  %157 = load i32, i32* @FALSE, align 4
  store i32 %157, i32* %6, align 4
  br label %491

158:                                              ; preds = %151
  %159 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %160 = icmp ne %struct.TYPE_18__* %159, null
  br i1 %160, label %161, label %270

161:                                              ; preds = %158
  %162 = load i32, i32* %7, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32*, i32** %165, align 8
  %167 = getelementptr inbounds i32, i32* %166, i64 0
  %168 = load i32, i32* %167, align 4
  %169 = call i32 @_cmsWrite15Fixed16Number(i32 %162, i32* %163, i32 %168)
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %173, label %171

171:                                              ; preds = %161
  %172 = load i32, i32* @FALSE, align 4
  store i32 %172, i32* %6, align 4
  br label %491

173:                                              ; preds = %161
  %174 = load i32, i32* %7, align 4
  %175 = load i32*, i32** %9, align 8
  %176 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %177 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = call i32 @_cmsWrite15Fixed16Number(i32 %174, i32* %175, i32 %180)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %185, label %183

183:                                              ; preds = %173
  %184 = load i32, i32* @FALSE, align 4
  store i32 %184, i32* %6, align 4
  br label %491

185:                                              ; preds = %173
  %186 = load i32, i32* %7, align 4
  %187 = load i32*, i32** %9, align 8
  %188 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %189 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %188, i32 0, i32 0
  %190 = load i32*, i32** %189, align 8
  %191 = getelementptr inbounds i32, i32* %190, i64 2
  %192 = load i32, i32* %191, align 4
  %193 = call i32 @_cmsWrite15Fixed16Number(i32 %186, i32* %187, i32 %192)
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %197, label %195

195:                                              ; preds = %185
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %6, align 4
  br label %491

197:                                              ; preds = %185
  %198 = load i32, i32* %7, align 4
  %199 = load i32*, i32** %9, align 8
  %200 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %201 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %200, i32 0, i32 0
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 3
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @_cmsWrite15Fixed16Number(i32 %198, i32* %199, i32 %204)
  %206 = icmp ne i32 %205, 0
  br i1 %206, label %209, label %207

207:                                              ; preds = %197
  %208 = load i32, i32* @FALSE, align 4
  store i32 %208, i32* %6, align 4
  br label %491

209:                                              ; preds = %197
  %210 = load i32, i32* %7, align 4
  %211 = load i32*, i32** %9, align 8
  %212 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %213 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %212, i32 0, i32 0
  %214 = load i32*, i32** %213, align 8
  %215 = getelementptr inbounds i32, i32* %214, i64 4
  %216 = load i32, i32* %215, align 4
  %217 = call i32 @_cmsWrite15Fixed16Number(i32 %210, i32* %211, i32 %216)
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %221, label %219

219:                                              ; preds = %209
  %220 = load i32, i32* @FALSE, align 4
  store i32 %220, i32* %6, align 4
  br label %491

221:                                              ; preds = %209
  %222 = load i32, i32* %7, align 4
  %223 = load i32*, i32** %9, align 8
  %224 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %225 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %224, i32 0, i32 0
  %226 = load i32*, i32** %225, align 8
  %227 = getelementptr inbounds i32, i32* %226, i64 5
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @_cmsWrite15Fixed16Number(i32 %222, i32* %223, i32 %228)
  %230 = icmp ne i32 %229, 0
  br i1 %230, label %233, label %231

231:                                              ; preds = %221
  %232 = load i32, i32* @FALSE, align 4
  store i32 %232, i32* %6, align 4
  br label %491

233:                                              ; preds = %221
  %234 = load i32, i32* %7, align 4
  %235 = load i32*, i32** %9, align 8
  %236 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %237 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %236, i32 0, i32 0
  %238 = load i32*, i32** %237, align 8
  %239 = getelementptr inbounds i32, i32* %238, i64 6
  %240 = load i32, i32* %239, align 4
  %241 = call i32 @_cmsWrite15Fixed16Number(i32 %234, i32* %235, i32 %240)
  %242 = icmp ne i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %233
  %244 = load i32, i32* @FALSE, align 4
  store i32 %244, i32* %6, align 4
  br label %491

245:                                              ; preds = %233
  %246 = load i32, i32* %7, align 4
  %247 = load i32*, i32** %9, align 8
  %248 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %249 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %248, i32 0, i32 0
  %250 = load i32*, i32** %249, align 8
  %251 = getelementptr inbounds i32, i32* %250, i64 7
  %252 = load i32, i32* %251, align 4
  %253 = call i32 @_cmsWrite15Fixed16Number(i32 %246, i32* %247, i32 %252)
  %254 = icmp ne i32 %253, 0
  br i1 %254, label %257, label %255

255:                                              ; preds = %245
  %256 = load i32, i32* @FALSE, align 4
  store i32 %256, i32* %6, align 4
  br label %491

257:                                              ; preds = %245
  %258 = load i32, i32* %7, align 4
  %259 = load i32*, i32** %9, align 8
  %260 = load %struct.TYPE_18__*, %struct.TYPE_18__** %17, align 8
  %261 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %260, i32 0, i32 0
  %262 = load i32*, i32** %261, align 8
  %263 = getelementptr inbounds i32, i32* %262, i64 8
  %264 = load i32, i32* %263, align 4
  %265 = call i32 @_cmsWrite15Fixed16Number(i32 %258, i32* %259, i32 %264)
  %266 = icmp ne i32 %265, 0
  br i1 %266, label %269, label %267

267:                                              ; preds = %257
  %268 = load i32, i32* @FALSE, align 4
  store i32 %268, i32* %6, align 4
  br label %491

269:                                              ; preds = %257
  br label %334

270:                                              ; preds = %158
  %271 = load i32, i32* %7, align 4
  %272 = load i32*, i32** %9, align 8
  %273 = call i32 @_cmsWrite15Fixed16Number(i32 %271, i32* %272, i32 1)
  %274 = icmp ne i32 %273, 0
  br i1 %274, label %277, label %275

275:                                              ; preds = %270
  %276 = load i32, i32* @FALSE, align 4
  store i32 %276, i32* %6, align 4
  br label %491

277:                                              ; preds = %270
  %278 = load i32, i32* %7, align 4
  %279 = load i32*, i32** %9, align 8
  %280 = call i32 @_cmsWrite15Fixed16Number(i32 %278, i32* %279, i32 0)
  %281 = icmp ne i32 %280, 0
  br i1 %281, label %284, label %282

282:                                              ; preds = %277
  %283 = load i32, i32* @FALSE, align 4
  store i32 %283, i32* %6, align 4
  br label %491

284:                                              ; preds = %277
  %285 = load i32, i32* %7, align 4
  %286 = load i32*, i32** %9, align 8
  %287 = call i32 @_cmsWrite15Fixed16Number(i32 %285, i32* %286, i32 0)
  %288 = icmp ne i32 %287, 0
  br i1 %288, label %291, label %289

289:                                              ; preds = %284
  %290 = load i32, i32* @FALSE, align 4
  store i32 %290, i32* %6, align 4
  br label %491

291:                                              ; preds = %284
  %292 = load i32, i32* %7, align 4
  %293 = load i32*, i32** %9, align 8
  %294 = call i32 @_cmsWrite15Fixed16Number(i32 %292, i32* %293, i32 0)
  %295 = icmp ne i32 %294, 0
  br i1 %295, label %298, label %296

296:                                              ; preds = %291
  %297 = load i32, i32* @FALSE, align 4
  store i32 %297, i32* %6, align 4
  br label %491

298:                                              ; preds = %291
  %299 = load i32, i32* %7, align 4
  %300 = load i32*, i32** %9, align 8
  %301 = call i32 @_cmsWrite15Fixed16Number(i32 %299, i32* %300, i32 1)
  %302 = icmp ne i32 %301, 0
  br i1 %302, label %305, label %303

303:                                              ; preds = %298
  %304 = load i32, i32* @FALSE, align 4
  store i32 %304, i32* %6, align 4
  br label %491

305:                                              ; preds = %298
  %306 = load i32, i32* %7, align 4
  %307 = load i32*, i32** %9, align 8
  %308 = call i32 @_cmsWrite15Fixed16Number(i32 %306, i32* %307, i32 0)
  %309 = icmp ne i32 %308, 0
  br i1 %309, label %312, label %310

310:                                              ; preds = %305
  %311 = load i32, i32* @FALSE, align 4
  store i32 %311, i32* %6, align 4
  br label %491

312:                                              ; preds = %305
  %313 = load i32, i32* %7, align 4
  %314 = load i32*, i32** %9, align 8
  %315 = call i32 @_cmsWrite15Fixed16Number(i32 %313, i32* %314, i32 0)
  %316 = icmp ne i32 %315, 0
  br i1 %316, label %319, label %317

317:                                              ; preds = %312
  %318 = load i32, i32* @FALSE, align 4
  store i32 %318, i32* %6, align 4
  br label %491

319:                                              ; preds = %312
  %320 = load i32, i32* %7, align 4
  %321 = load i32*, i32** %9, align 8
  %322 = call i32 @_cmsWrite15Fixed16Number(i32 %320, i32* %321, i32 0)
  %323 = icmp ne i32 %322, 0
  br i1 %323, label %326, label %324

324:                                              ; preds = %319
  %325 = load i32, i32* @FALSE, align 4
  store i32 %325, i32* %6, align 4
  br label %491

326:                                              ; preds = %319
  %327 = load i32, i32* %7, align 4
  %328 = load i32*, i32** %9, align 8
  %329 = call i32 @_cmsWrite15Fixed16Number(i32 %327, i32* %328, i32 1)
  %330 = icmp ne i32 %329, 0
  br i1 %330, label %333, label %331

331:                                              ; preds = %326
  %332 = load i32, i32* @FALSE, align 4
  store i32 %332, i32* %6, align 4
  br label %491

333:                                              ; preds = %326
  br label %334

334:                                              ; preds = %333, %269
  %335 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %336 = icmp ne %struct.TYPE_17__* %335, null
  br i1 %336, label %337, label %353

337:                                              ; preds = %334
  %338 = load i32, i32* %7, align 4
  %339 = load i32*, i32** %9, align 8
  %340 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %341 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %340, i32 0, i32 0
  %342 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %341, align 8
  %343 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %342, i64 0
  %344 = load %struct.TYPE_13__*, %struct.TYPE_13__** %343, align 8
  %345 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %344, i32 0, i32 0
  %346 = load i64, i64* %345, align 8
  %347 = trunc i64 %346 to i32
  %348 = call i32 @_cmsWriteUInt16Number(i32 %338, i32* %339, i32 %347)
  %349 = icmp ne i32 %348, 0
  br i1 %349, label %352, label %350

350:                                              ; preds = %337
  %351 = load i32, i32* @FALSE, align 4
  store i32 %351, i32* %6, align 4
  br label %491

352:                                              ; preds = %337
  br label %361

353:                                              ; preds = %334
  %354 = load i32, i32* %7, align 4
  %355 = load i32*, i32** %9, align 8
  %356 = call i32 @_cmsWriteUInt16Number(i32 %354, i32* %355, i32 2)
  %357 = icmp ne i32 %356, 0
  br i1 %357, label %360, label %358

358:                                              ; preds = %353
  %359 = load i32, i32* @FALSE, align 4
  store i32 %359, i32* %6, align 4
  br label %491

360:                                              ; preds = %353
  br label %361

361:                                              ; preds = %360, %352
  %362 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %363 = icmp ne %struct.TYPE_17__* %362, null
  br i1 %363, label %364, label %380

364:                                              ; preds = %361
  %365 = load i32, i32* %7, align 4
  %366 = load i32*, i32** %9, align 8
  %367 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %368 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %367, i32 0, i32 0
  %369 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %368, align 8
  %370 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %369, i64 0
  %371 = load %struct.TYPE_13__*, %struct.TYPE_13__** %370, align 8
  %372 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %371, i32 0, i32 0
  %373 = load i64, i64* %372, align 8
  %374 = trunc i64 %373 to i32
  %375 = call i32 @_cmsWriteUInt16Number(i32 %365, i32* %366, i32 %374)
  %376 = icmp ne i32 %375, 0
  br i1 %376, label %379, label %377

377:                                              ; preds = %364
  %378 = load i32, i32* @FALSE, align 4
  store i32 %378, i32* %6, align 4
  br label %491

379:                                              ; preds = %364
  br label %388

380:                                              ; preds = %361
  %381 = load i32, i32* %7, align 4
  %382 = load i32*, i32** %9, align 8
  %383 = call i32 @_cmsWriteUInt16Number(i32 %381, i32* %382, i32 2)
  %384 = icmp ne i32 %383, 0
  br i1 %384, label %387, label %385

385:                                              ; preds = %380
  %386 = load i32, i32* @FALSE, align 4
  store i32 %386, i32* %6, align 4
  br label %491

387:                                              ; preds = %380
  br label %388

388:                                              ; preds = %387, %379
  %389 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %390 = icmp ne %struct.TYPE_17__* %389, null
  br i1 %390, label %391, label %400

391:                                              ; preds = %388
  %392 = load i32, i32* %7, align 4
  %393 = load i32*, i32** %9, align 8
  %394 = load %struct.TYPE_17__*, %struct.TYPE_17__** %15, align 8
  %395 = call i32 @Write16bitTables(i32 %392, i32* %393, %struct.TYPE_17__* %394)
  %396 = icmp ne i32 %395, 0
  br i1 %396, label %399, label %397

397:                                              ; preds = %391
  %398 = load i32, i32* @FALSE, align 4
  store i32 %398, i32* %6, align 4
  br label %491

399:                                              ; preds = %391
  br label %424

400:                                              ; preds = %388
  store i64 0, i64* %19, align 8
  br label %401

401:                                              ; preds = %420, %400
  %402 = load i64, i64* %19, align 8
  %403 = load i64, i64* %20, align 8
  %404 = icmp slt i64 %402, %403
  br i1 %404, label %405, label %423

405:                                              ; preds = %401
  %406 = load i32, i32* %7, align 4
  %407 = load i32*, i32** %9, align 8
  %408 = call i32 @_cmsWriteUInt16Number(i32 %406, i32* %407, i32 0)
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %412, label %410

410:                                              ; preds = %405
  %411 = load i32, i32* @FALSE, align 4
  store i32 %411, i32* %6, align 4
  br label %491

412:                                              ; preds = %405
  %413 = load i32, i32* %7, align 4
  %414 = load i32*, i32** %9, align 8
  %415 = call i32 @_cmsWriteUInt16Number(i32 %413, i32* %414, i32 65535)
  %416 = icmp ne i32 %415, 0
  br i1 %416, label %419, label %417

417:                                              ; preds = %412
  %418 = load i32, i32* @FALSE, align 4
  store i32 %418, i32* %6, align 4
  br label %491

419:                                              ; preds = %412
  br label %420

420:                                              ; preds = %419
  %421 = load i64, i64* %19, align 8
  %422 = add nsw i64 %421, 1
  store i64 %422, i64* %19, align 8
  br label %401

423:                                              ; preds = %401
  br label %424

424:                                              ; preds = %423, %399
  %425 = load i64, i64* %21, align 8
  %426 = load i64, i64* %22, align 8
  %427 = load i64, i64* %20, align 8
  %428 = call i64 @uipow(i64 %425, i64 %426, i64 %427)
  store i64 %428, i64* %12, align 8
  %429 = load i64, i64* %12, align 8
  %430 = icmp eq i64 %429, -1
  br i1 %430, label %431, label %433

431:                                              ; preds = %424
  %432 = load i32, i32* @FALSE, align 4
  store i32 %432, i32* %6, align 4
  br label %491

433:                                              ; preds = %424
  %434 = load i64, i64* %12, align 8
  %435 = icmp sgt i64 %434, 0
  br i1 %435, label %436, label %453

436:                                              ; preds = %433
  %437 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %438 = icmp ne %struct.TYPE_19__* %437, null
  br i1 %438, label %439, label %452

439:                                              ; preds = %436
  %440 = load i32, i32* %7, align 4
  %441 = load i32*, i32** %9, align 8
  %442 = load i64, i64* %12, align 8
  %443 = load %struct.TYPE_19__*, %struct.TYPE_19__** %18, align 8
  %444 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %443, i32 0, i32 0
  %445 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %444, i32 0, i32 0
  %446 = load i32, i32* %445, align 8
  %447 = call i32 @_cmsWriteUInt16Array(i32 %440, i32* %441, i64 %442, i32 %446)
  %448 = icmp ne i32 %447, 0
  br i1 %448, label %451, label %449

449:                                              ; preds = %439
  %450 = load i32, i32* @FALSE, align 4
  store i32 %450, i32* %6, align 4
  br label %491

451:                                              ; preds = %439
  br label %452

452:                                              ; preds = %451, %436
  br label %453

453:                                              ; preds = %452, %433
  %454 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %455 = icmp ne %struct.TYPE_17__* %454, null
  br i1 %455, label %456, label %465

456:                                              ; preds = %453
  %457 = load i32, i32* %7, align 4
  %458 = load i32*, i32** %9, align 8
  %459 = load %struct.TYPE_17__*, %struct.TYPE_17__** %16, align 8
  %460 = call i32 @Write16bitTables(i32 %457, i32* %458, %struct.TYPE_17__* %459)
  %461 = icmp ne i32 %460, 0
  br i1 %461, label %464, label %462

462:                                              ; preds = %456
  %463 = load i32, i32* @FALSE, align 4
  store i32 %463, i32* %6, align 4
  br label %491

464:                                              ; preds = %456
  br label %489

465:                                              ; preds = %453
  store i64 0, i64* %19, align 8
  br label %466

466:                                              ; preds = %485, %465
  %467 = load i64, i64* %19, align 8
  %468 = load i64, i64* %21, align 8
  %469 = icmp slt i64 %467, %468
  br i1 %469, label %470, label %488

470:                                              ; preds = %466
  %471 = load i32, i32* %7, align 4
  %472 = load i32*, i32** %9, align 8
  %473 = call i32 @_cmsWriteUInt16Number(i32 %471, i32* %472, i32 0)
  %474 = icmp ne i32 %473, 0
  br i1 %474, label %477, label %475

475:                                              ; preds = %470
  %476 = load i32, i32* @FALSE, align 4
  store i32 %476, i32* %6, align 4
  br label %491

477:                                              ; preds = %470
  %478 = load i32, i32* %7, align 4
  %479 = load i32*, i32** %9, align 8
  %480 = call i32 @_cmsWriteUInt16Number(i32 %478, i32* %479, i32 65535)
  %481 = icmp ne i32 %480, 0
  br i1 %481, label %484, label %482

482:                                              ; preds = %477
  %483 = load i32, i32* @FALSE, align 4
  store i32 %483, i32* %6, align 4
  br label %491

484:                                              ; preds = %477
  br label %485

485:                                              ; preds = %484
  %486 = load i64, i64* %19, align 8
  %487 = add nsw i64 %486, 1
  store i64 %487, i64* %19, align 8
  br label %466

488:                                              ; preds = %466
  br label %489

489:                                              ; preds = %488, %464
  %490 = load i32, i32* @TRUE, align 4
  store i32 %490, i32* %6, align 4
  br label %491

491:                                              ; preds = %489, %482, %475, %462, %449, %431, %417, %410, %397, %385, %377, %358, %350, %331, %324, %317, %310, %303, %296, %289, %282, %275, %267, %255, %243, %231, %219, %207, %195, %183, %171, %156, %149, %140, %131, %101
  %492 = load i32, i32* %6, align 4
  ret i32 %492
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i64 @cmsPipelineInputChannels(i32, %struct.TYPE_16__*) #1

declare dso_local i64 @cmsPipelineOutputChannels(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @_cmsWriteUInt8Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWrite15Fixed16Number(i32, i32*, i32) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, i32*, i32) #1

declare dso_local i32 @Write16bitTables(i32, i32*, %struct.TYPE_17__*) #1

declare dso_local i64 @uipow(i64, i64, i64) #1

declare dso_local i32 @_cmsWriteUInt16Array(i32, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
