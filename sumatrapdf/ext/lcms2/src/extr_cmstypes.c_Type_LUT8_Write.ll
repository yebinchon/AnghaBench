; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT8_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT8_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_10__ = type { i64, i64, %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i64, %struct.TYPE_9__*, i64 }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_12__ = type { %struct.TYPE_8__, %struct.TYPE_7__* }
%struct.TYPE_8__ = type { i32* }
%struct.TYPE_7__ = type { i64* }

@cmsSigMatrixElemType = common dso_local global i64 0, align 8
@cmsSigCurveSetElemType = common dso_local global i64 0, align 8
@cmsSigCLutElemType = common dso_local global i64 0, align 8
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"LUT is not suitable to be saved as LUT8\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, i32*, i8*, i64)* @Type_LUT8_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_LUT8_Write(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_10__*, align 8
  %16 = alloca %struct.TYPE_9__*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32*, align 8
  %19 = alloca %struct.TYPE_11__*, align 8
  %20 = alloca %struct.TYPE_12__*, align 8
  %21 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %22 = load i8*, i8** %10, align 8
  %23 = bitcast i8* %22 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %23, %struct.TYPE_10__** %15, align 8
  store i32* null, i32** %17, align 8
  store i32* null, i32** %18, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %19, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %20, align 8
  %24 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %25 = ptrtoint %struct._cms_typehandler_struct* %24 to i64
  %26 = call i32 @cmsUNUSED_PARAMETER(i64 %25)
  %27 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 2
  %29 = load %struct.TYPE_9__*, %struct.TYPE_9__** %28, align 8
  store %struct.TYPE_9__* %29, %struct.TYPE_9__** %16, align 8
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @cmsSigMatrixElemType, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %43

35:                                               ; preds = %5
  %36 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 2
  %38 = load i64, i64* %37, align 8
  %39 = inttoptr i64 %38 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %39, %struct.TYPE_11__** %19, align 8
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 1
  %42 = load %struct.TYPE_9__*, %struct.TYPE_9__** %41, align 8
  store %struct.TYPE_9__* %42, %struct.TYPE_9__** %16, align 8
  br label %43

43:                                               ; preds = %35, %5
  %44 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %45 = icmp ne %struct.TYPE_9__* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %43
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = load i64, i64* @cmsSigCurveSetElemType, align 8
  %51 = icmp eq i64 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %46
  %53 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %54 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %53, i32 0, i32 2
  %55 = load i64, i64* %54, align 8
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %17, align 8
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %58 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %57, i32 0, i32 1
  %59 = load %struct.TYPE_9__*, %struct.TYPE_9__** %58, align 8
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %16, align 8
  br label %60

60:                                               ; preds = %52, %46, %43
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %62 = icmp ne %struct.TYPE_9__* %61, null
  br i1 %62, label %63, label %77

63:                                               ; preds = %60
  %64 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %65 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @cmsSigCLutElemType, align 8
  %68 = icmp eq i64 %66, %67
  br i1 %68, label %69, label %77

69:                                               ; preds = %63
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %73, %struct.TYPE_12__** %20, align 8
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_9__*, %struct.TYPE_9__** %75, align 8
  store %struct.TYPE_9__* %76, %struct.TYPE_9__** %16, align 8
  br label %77

77:                                               ; preds = %69, %63, %60
  %78 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %79 = icmp ne %struct.TYPE_9__* %78, null
  br i1 %79, label %80, label %94

80:                                               ; preds = %77
  %81 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %82 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @cmsSigCurveSetElemType, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %80
  %87 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %88 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to i32*
  store i32* %90, i32** %18, align 8
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 1
  %93 = load %struct.TYPE_9__*, %struct.TYPE_9__** %92, align 8
  store %struct.TYPE_9__* %93, %struct.TYPE_9__** %16, align 8
  br label %94

94:                                               ; preds = %86, %80, %77
  %95 = load %struct.TYPE_9__*, %struct.TYPE_9__** %16, align 8
  %96 = icmp ne %struct.TYPE_9__* %95, null
  br i1 %96, label %97, label %102

97:                                               ; preds = %94
  %98 = load i32, i32* %7, align 4
  %99 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %100 = call i32 @cmsSignalError(i32 %98, i32 %99, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %101 = load i32, i32* @FALSE, align 4
  store i32 %101, i32* %6, align 4
  br label %395

102:                                              ; preds = %94
  %103 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %104 = icmp eq %struct.TYPE_12__* %103, null
  br i1 %104, label %105, label %106

105:                                              ; preds = %102
  store i64 0, i64* %21, align 8
  br label %114

106:                                              ; preds = %102
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_7__*, %struct.TYPE_7__** %108, align 8
  %110 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %109, i32 0, i32 0
  %111 = load i64*, i64** %110, align 8
  %112 = getelementptr inbounds i64, i64* %111, i64 0
  %113 = load i64, i64* %112, align 8
  store i64 %113, i64* %21, align 8
  br label %114

114:                                              ; preds = %106, %105
  %115 = load i32, i32* %7, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %118 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = call i32 @_cmsWriteUInt8Number(i32 %115, i32* %116, i64 %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %114
  %123 = load i32, i32* @FALSE, align 4
  store i32 %123, i32* %6, align 4
  br label %395

124:                                              ; preds = %114
  %125 = load i32, i32* %7, align 4
  %126 = load i32*, i32** %9, align 8
  %127 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %128 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %127, i32 0, i32 0
  %129 = load i64, i64* %128, align 8
  %130 = call i32 @_cmsWriteUInt8Number(i32 %125, i32* %126, i64 %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %134, label %132

132:                                              ; preds = %124
  %133 = load i32, i32* @FALSE, align 4
  store i32 %133, i32* %6, align 4
  br label %395

134:                                              ; preds = %124
  %135 = load i32, i32* %7, align 4
  %136 = load i32*, i32** %9, align 8
  %137 = load i64, i64* %21, align 8
  %138 = call i32 @_cmsWriteUInt8Number(i32 %135, i32* %136, i64 %137)
  %139 = icmp ne i32 %138, 0
  br i1 %139, label %142, label %140

140:                                              ; preds = %134
  %141 = load i32, i32* @FALSE, align 4
  store i32 %141, i32* %6, align 4
  br label %395

142:                                              ; preds = %134
  %143 = load i32, i32* %7, align 4
  %144 = load i32*, i32** %9, align 8
  %145 = call i32 @_cmsWriteUInt8Number(i32 %143, i32* %144, i64 0)
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %149, label %147

147:                                              ; preds = %142
  %148 = load i32, i32* @FALSE, align 4
  store i32 %148, i32* %6, align 4
  br label %395

149:                                              ; preds = %142
  %150 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %151 = icmp ne %struct.TYPE_11__* %150, null
  br i1 %151, label %152, label %261

152:                                              ; preds = %149
  %153 = load i32, i32* %7, align 4
  %154 = load i32*, i32** %9, align 8
  %155 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %156 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = getelementptr inbounds i32, i32* %157, i64 0
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @_cmsWrite15Fixed16Number(i32 %153, i32* %154, i32 %159)
  %161 = icmp ne i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %152
  %163 = load i32, i32* @FALSE, align 4
  store i32 %163, i32* %6, align 4
  br label %395

164:                                              ; preds = %152
  %165 = load i32, i32* %7, align 4
  %166 = load i32*, i32** %9, align 8
  %167 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %168 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = call i32 @_cmsWrite15Fixed16Number(i32 %165, i32* %166, i32 %171)
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %176, label %174

174:                                              ; preds = %164
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %6, align 4
  br label %395

176:                                              ; preds = %164
  %177 = load i32, i32* %7, align 4
  %178 = load i32*, i32** %9, align 8
  %179 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32*, i32** %180, align 8
  %182 = getelementptr inbounds i32, i32* %181, i64 2
  %183 = load i32, i32* %182, align 4
  %184 = call i32 @_cmsWrite15Fixed16Number(i32 %177, i32* %178, i32 %183)
  %185 = icmp ne i32 %184, 0
  br i1 %185, label %188, label %186

186:                                              ; preds = %176
  %187 = load i32, i32* @FALSE, align 4
  store i32 %187, i32* %6, align 4
  br label %395

188:                                              ; preds = %176
  %189 = load i32, i32* %7, align 4
  %190 = load i32*, i32** %9, align 8
  %191 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %192 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %191, i32 0, i32 0
  %193 = load i32*, i32** %192, align 8
  %194 = getelementptr inbounds i32, i32* %193, i64 3
  %195 = load i32, i32* %194, align 4
  %196 = call i32 @_cmsWrite15Fixed16Number(i32 %189, i32* %190, i32 %195)
  %197 = icmp ne i32 %196, 0
  br i1 %197, label %200, label %198

198:                                              ; preds = %188
  %199 = load i32, i32* @FALSE, align 4
  store i32 %199, i32* %6, align 4
  br label %395

200:                                              ; preds = %188
  %201 = load i32, i32* %7, align 4
  %202 = load i32*, i32** %9, align 8
  %203 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %204 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %203, i32 0, i32 0
  %205 = load i32*, i32** %204, align 8
  %206 = getelementptr inbounds i32, i32* %205, i64 4
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @_cmsWrite15Fixed16Number(i32 %201, i32* %202, i32 %207)
  %209 = icmp ne i32 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %200
  %211 = load i32, i32* @FALSE, align 4
  store i32 %211, i32* %6, align 4
  br label %395

212:                                              ; preds = %200
  %213 = load i32, i32* %7, align 4
  %214 = load i32*, i32** %9, align 8
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %216 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 5
  %219 = load i32, i32* %218, align 4
  %220 = call i32 @_cmsWrite15Fixed16Number(i32 %213, i32* %214, i32 %219)
  %221 = icmp ne i32 %220, 0
  br i1 %221, label %224, label %222

222:                                              ; preds = %212
  %223 = load i32, i32* @FALSE, align 4
  store i32 %223, i32* %6, align 4
  br label %395

224:                                              ; preds = %212
  %225 = load i32, i32* %7, align 4
  %226 = load i32*, i32** %9, align 8
  %227 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %228 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %227, i32 0, i32 0
  %229 = load i32*, i32** %228, align 8
  %230 = getelementptr inbounds i32, i32* %229, i64 6
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @_cmsWrite15Fixed16Number(i32 %225, i32* %226, i32 %231)
  %233 = icmp ne i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %224
  %235 = load i32, i32* @FALSE, align 4
  store i32 %235, i32* %6, align 4
  br label %395

236:                                              ; preds = %224
  %237 = load i32, i32* %7, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %240 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %239, i32 0, i32 0
  %241 = load i32*, i32** %240, align 8
  %242 = getelementptr inbounds i32, i32* %241, i64 7
  %243 = load i32, i32* %242, align 4
  %244 = call i32 @_cmsWrite15Fixed16Number(i32 %237, i32* %238, i32 %243)
  %245 = icmp ne i32 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %236
  %247 = load i32, i32* @FALSE, align 4
  store i32 %247, i32* %6, align 4
  br label %395

248:                                              ; preds = %236
  %249 = load i32, i32* %7, align 4
  %250 = load i32*, i32** %9, align 8
  %251 = load %struct.TYPE_11__*, %struct.TYPE_11__** %19, align 8
  %252 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %251, i32 0, i32 0
  %253 = load i32*, i32** %252, align 8
  %254 = getelementptr inbounds i32, i32* %253, i64 8
  %255 = load i32, i32* %254, align 4
  %256 = call i32 @_cmsWrite15Fixed16Number(i32 %249, i32* %250, i32 %255)
  %257 = icmp ne i32 %256, 0
  br i1 %257, label %260, label %258

258:                                              ; preds = %248
  %259 = load i32, i32* @FALSE, align 4
  store i32 %259, i32* %6, align 4
  br label %395

260:                                              ; preds = %248
  br label %325

261:                                              ; preds = %149
  %262 = load i32, i32* %7, align 4
  %263 = load i32*, i32** %9, align 8
  %264 = call i32 @_cmsWrite15Fixed16Number(i32 %262, i32* %263, i32 1)
  %265 = icmp ne i32 %264, 0
  br i1 %265, label %268, label %266

266:                                              ; preds = %261
  %267 = load i32, i32* @FALSE, align 4
  store i32 %267, i32* %6, align 4
  br label %395

268:                                              ; preds = %261
  %269 = load i32, i32* %7, align 4
  %270 = load i32*, i32** %9, align 8
  %271 = call i32 @_cmsWrite15Fixed16Number(i32 %269, i32* %270, i32 0)
  %272 = icmp ne i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %268
  %274 = load i32, i32* @FALSE, align 4
  store i32 %274, i32* %6, align 4
  br label %395

275:                                              ; preds = %268
  %276 = load i32, i32* %7, align 4
  %277 = load i32*, i32** %9, align 8
  %278 = call i32 @_cmsWrite15Fixed16Number(i32 %276, i32* %277, i32 0)
  %279 = icmp ne i32 %278, 0
  br i1 %279, label %282, label %280

280:                                              ; preds = %275
  %281 = load i32, i32* @FALSE, align 4
  store i32 %281, i32* %6, align 4
  br label %395

282:                                              ; preds = %275
  %283 = load i32, i32* %7, align 4
  %284 = load i32*, i32** %9, align 8
  %285 = call i32 @_cmsWrite15Fixed16Number(i32 %283, i32* %284, i32 0)
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %282
  %288 = load i32, i32* @FALSE, align 4
  store i32 %288, i32* %6, align 4
  br label %395

289:                                              ; preds = %282
  %290 = load i32, i32* %7, align 4
  %291 = load i32*, i32** %9, align 8
  %292 = call i32 @_cmsWrite15Fixed16Number(i32 %290, i32* %291, i32 1)
  %293 = icmp ne i32 %292, 0
  br i1 %293, label %296, label %294

294:                                              ; preds = %289
  %295 = load i32, i32* @FALSE, align 4
  store i32 %295, i32* %6, align 4
  br label %395

296:                                              ; preds = %289
  %297 = load i32, i32* %7, align 4
  %298 = load i32*, i32** %9, align 8
  %299 = call i32 @_cmsWrite15Fixed16Number(i32 %297, i32* %298, i32 0)
  %300 = icmp ne i32 %299, 0
  br i1 %300, label %303, label %301

301:                                              ; preds = %296
  %302 = load i32, i32* @FALSE, align 4
  store i32 %302, i32* %6, align 4
  br label %395

303:                                              ; preds = %296
  %304 = load i32, i32* %7, align 4
  %305 = load i32*, i32** %9, align 8
  %306 = call i32 @_cmsWrite15Fixed16Number(i32 %304, i32* %305, i32 0)
  %307 = icmp ne i32 %306, 0
  br i1 %307, label %310, label %308

308:                                              ; preds = %303
  %309 = load i32, i32* @FALSE, align 4
  store i32 %309, i32* %6, align 4
  br label %395

310:                                              ; preds = %303
  %311 = load i32, i32* %7, align 4
  %312 = load i32*, i32** %9, align 8
  %313 = call i32 @_cmsWrite15Fixed16Number(i32 %311, i32* %312, i32 0)
  %314 = icmp ne i32 %313, 0
  br i1 %314, label %317, label %315

315:                                              ; preds = %310
  %316 = load i32, i32* @FALSE, align 4
  store i32 %316, i32* %6, align 4
  br label %395

317:                                              ; preds = %310
  %318 = load i32, i32* %7, align 4
  %319 = load i32*, i32** %9, align 8
  %320 = call i32 @_cmsWrite15Fixed16Number(i32 %318, i32* %319, i32 1)
  %321 = icmp ne i32 %320, 0
  br i1 %321, label %324, label %322

322:                                              ; preds = %317
  %323 = load i32, i32* @FALSE, align 4
  store i32 %323, i32* %6, align 4
  br label %395

324:                                              ; preds = %317
  br label %325

325:                                              ; preds = %324, %260
  %326 = load i32, i32* %7, align 4
  %327 = load i32*, i32** %9, align 8
  %328 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %329 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %328, i32 0, i32 1
  %330 = load i64, i64* %329, align 8
  %331 = load i32*, i32** %17, align 8
  %332 = call i32 @Write8bitTables(i32 %326, i32* %327, i64 %330, i32* %331)
  %333 = icmp ne i32 %332, 0
  br i1 %333, label %336, label %334

334:                                              ; preds = %325
  %335 = load i32, i32* @FALSE, align 4
  store i32 %335, i32* %6, align 4
  br label %395

336:                                              ; preds = %325
  %337 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %338 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %337, i32 0, i32 0
  %339 = load i64, i64* %338, align 8
  %340 = load i64, i64* %21, align 8
  %341 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %342 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %341, i32 0, i32 1
  %343 = load i64, i64* %342, align 8
  %344 = call i64 @uipow(i64 %339, i64 %340, i64 %343)
  store i64 %344, i64* %13, align 8
  %345 = load i64, i64* %13, align 8
  %346 = icmp eq i64 %345, -1
  br i1 %346, label %347, label %349

347:                                              ; preds = %336
  %348 = load i32, i32* @FALSE, align 4
  store i32 %348, i32* %6, align 4
  br label %395

349:                                              ; preds = %336
  %350 = load i64, i64* %13, align 8
  %351 = icmp sgt i64 %350, 0
  br i1 %351, label %352, label %382

352:                                              ; preds = %349
  %353 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %354 = icmp ne %struct.TYPE_12__* %353, null
  br i1 %354, label %355, label %381

355:                                              ; preds = %352
  store i64 0, i64* %12, align 8
  br label %356

356:                                              ; preds = %377, %355
  %357 = load i64, i64* %12, align 8
  %358 = load i64, i64* %13, align 8
  %359 = icmp slt i64 %357, %358
  br i1 %359, label %360, label %380

360:                                              ; preds = %356
  %361 = load %struct.TYPE_12__*, %struct.TYPE_12__** %20, align 8
  %362 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %361, i32 0, i32 0
  %363 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %362, i32 0, i32 0
  %364 = load i32*, i32** %363, align 8
  %365 = load i64, i64* %12, align 8
  %366 = getelementptr inbounds i32, i32* %364, i64 %365
  %367 = load i32, i32* %366, align 4
  %368 = call i64 @FROM_16_TO_8(i32 %367)
  store i64 %368, i64* %14, align 8
  %369 = load i32, i32* %7, align 4
  %370 = load i32*, i32** %9, align 8
  %371 = load i64, i64* %14, align 8
  %372 = call i32 @_cmsWriteUInt8Number(i32 %369, i32* %370, i64 %371)
  %373 = icmp ne i32 %372, 0
  br i1 %373, label %376, label %374

374:                                              ; preds = %360
  %375 = load i32, i32* @FALSE, align 4
  store i32 %375, i32* %6, align 4
  br label %395

376:                                              ; preds = %360
  br label %377

377:                                              ; preds = %376
  %378 = load i64, i64* %12, align 8
  %379 = add nsw i64 %378, 1
  store i64 %379, i64* %12, align 8
  br label %356

380:                                              ; preds = %356
  br label %381

381:                                              ; preds = %380, %352
  br label %382

382:                                              ; preds = %381, %349
  %383 = load i32, i32* %7, align 4
  %384 = load i32*, i32** %9, align 8
  %385 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %386 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %385, i32 0, i32 0
  %387 = load i64, i64* %386, align 8
  %388 = load i32*, i32** %18, align 8
  %389 = call i32 @Write8bitTables(i32 %383, i32* %384, i64 %387, i32* %388)
  %390 = icmp ne i32 %389, 0
  br i1 %390, label %393, label %391

391:                                              ; preds = %382
  %392 = load i32, i32* @FALSE, align 4
  store i32 %392, i32* %6, align 4
  br label %395

393:                                              ; preds = %382
  %394 = load i32, i32* @TRUE, align 4
  store i32 %394, i32* %6, align 4
  br label %395

395:                                              ; preds = %393, %391, %374, %347, %334, %322, %315, %308, %301, %294, %287, %280, %273, %266, %258, %246, %234, %222, %210, %198, %186, %174, %162, %147, %140, %132, %122, %97
  %396 = load i32, i32* %6, align 4
  ret i32 %396
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*) #1

declare dso_local i32 @_cmsWriteUInt8Number(i32, i32*, i64) #1

declare dso_local i32 @_cmsWrite15Fixed16Number(i32, i32*, i32) #1

declare dso_local i32 @Write8bitTables(i32, i32*, i64, i32*) #1

declare dso_local i64 @uipow(i64, i64, i64) #1

declare dso_local i64 @FROM_16_TO_8(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
