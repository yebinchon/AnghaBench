; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPE_Write.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_MPE_Write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_27__ = type { i64 (i32, %struct.TYPE_27__*)*, i32 (i32, %struct.TYPE_27__*, i64)* }
%struct.TYPE_26__ = type { %struct.TYPE_25__* }
%struct.TYPE_25__ = type { i64, %struct.TYPE_25__* }
%struct.TYPE_24__ = type { i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32)* }
%struct.TYPE_28__ = type { i32 }

@MPEPlugin = common dso_local global i32 0, align 4
@SupportedMPEtypes = common dso_local global i32 0, align 4
@cmsERROR_UNKNOWN_EXTENSION = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Found unknown MPE type '%s'\00", align 1
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_27__*, i8*, i64)* @Type_MPE_Write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @Type_MPE_Write(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_27__* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_27__*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64*, align 8
  %20 = alloca i64*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_26__*, align 8
  %24 = alloca %struct.TYPE_25__*, align 8
  %25 = alloca %struct.TYPE_24__*, align 8
  %26 = alloca %struct.TYPE_28__*, align 8
  %27 = alloca [5 x i8], align 1
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_27__* %2, %struct.TYPE_27__** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64* null, i64** %19, align 8
  store i64* null, i64** %20, align 8
  %28 = load i8*, i8** %10, align 8
  %29 = bitcast i8* %28 to %struct.TYPE_26__*
  store %struct.TYPE_26__* %29, %struct.TYPE_26__** %23, align 8
  %30 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %31 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %30, i32 0, i32 0
  %32 = load %struct.TYPE_25__*, %struct.TYPE_25__** %31, align 8
  store %struct.TYPE_25__* %32, %struct.TYPE_25__** %24, align 8
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MPEPlugin, align 4
  %35 = call i64 @_cmsContextGetClientChunk(i32 %33, i32 %34)
  %36 = inttoptr i64 %35 to %struct.TYPE_28__*
  store %struct.TYPE_28__* %36, %struct.TYPE_28__** %26, align 8
  %37 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %38 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %37, i32 0, i32 0
  %39 = load i64 (i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_27__*)** %38, align 8
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %42 = call i64 %39(i32 %40, %struct.TYPE_27__* %41)
  %43 = sub i64 %42, 4
  store i64 %43, i64* %13, align 8
  %44 = load i32, i32* %7, align 4
  %45 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %46 = call i64 @cmsPipelineInputChannels(i32 %44, %struct.TYPE_26__* %45)
  store i64 %46, i64* %16, align 8
  %47 = load i32, i32* %7, align 4
  %48 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %49 = call i64 @cmsPipelineOutputChannels(i32 %47, %struct.TYPE_26__* %48)
  store i64 %49, i64* %17, align 8
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_26__*, %struct.TYPE_26__** %23, align 8
  %52 = call i64 @cmsPipelineStageCount(i32 %50, %struct.TYPE_26__* %51)
  store i64 %52, i64* %18, align 8
  %53 = load i32, i32* %7, align 4
  %54 = load i64, i64* %18, align 8
  %55 = call i64 @_cmsCalloc(i32 %53, i64 %54, i32 8)
  %56 = inttoptr i64 %55 to i64*
  store i64* %56, i64** %19, align 8
  %57 = load i64*, i64** %19, align 8
  %58 = icmp eq i64* %57, null
  br i1 %58, label %59, label %60

59:                                               ; preds = %5
  br label %279

60:                                               ; preds = %5
  %61 = load i32, i32* %7, align 4
  %62 = load i64, i64* %18, align 8
  %63 = call i64 @_cmsCalloc(i32 %61, i64 %62, i32 8)
  %64 = inttoptr i64 %63 to i64*
  store i64* %64, i64** %20, align 8
  %65 = load i64*, i64** %20, align 8
  %66 = icmp eq i64* %65, null
  br i1 %66, label %67, label %68

67:                                               ; preds = %60
  br label %279

68:                                               ; preds = %60
  %69 = load i32, i32* %7, align 4
  %70 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %71 = load i64, i64* %16, align 8
  %72 = call i32 @_cmsWriteUInt16Number(i32 %69, %struct.TYPE_27__* %70, i64 %71)
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  br label %279

75:                                               ; preds = %68
  %76 = load i32, i32* %7, align 4
  %77 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %78 = load i64, i64* %17, align 8
  %79 = call i32 @_cmsWriteUInt16Number(i32 %76, %struct.TYPE_27__* %77, i64 %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %75
  br label %279

82:                                               ; preds = %75
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %85 = load i64, i64* %18, align 8
  %86 = call i32 @_cmsWriteUInt32Number(i32 %83, %struct.TYPE_27__* %84, i64 %85)
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %89, label %88

88:                                               ; preds = %82
  br label %279

89:                                               ; preds = %82
  %90 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %91 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %90, i32 0, i32 0
  %92 = load i64 (i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_27__*)** %91, align 8
  %93 = load i32, i32* %7, align 4
  %94 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %95 = call i64 %92(i32 %93, %struct.TYPE_27__* %94)
  store i64 %95, i64* %14, align 8
  store i64 0, i64* %12, align 8
  br label %96

96:                                               ; preds = %113, %89
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* %18, align 8
  %99 = icmp ult i64 %97, %98
  br i1 %99, label %100, label %116

100:                                              ; preds = %96
  %101 = load i32, i32* %7, align 4
  %102 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %103 = call i32 @_cmsWriteUInt32Number(i32 %101, %struct.TYPE_27__* %102, i64 0)
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %106, label %105

105:                                              ; preds = %100
  br label %279

106:                                              ; preds = %100
  %107 = load i32, i32* %7, align 4
  %108 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %109 = call i32 @_cmsWriteUInt32Number(i32 %107, %struct.TYPE_27__* %108, i64 0)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %106
  br label %279

112:                                              ; preds = %106
  br label %113

113:                                              ; preds = %112
  %114 = load i64, i64* %12, align 8
  %115 = add i64 %114, 1
  store i64 %115, i64* %12, align 8
  br label %96

116:                                              ; preds = %96
  store i64 0, i64* %12, align 8
  br label %117

117:                                              ; preds = %205, %116
  %118 = load i64, i64* %12, align 8
  %119 = load i64, i64* %18, align 8
  %120 = icmp ult i64 %118, %119
  br i1 %120, label %121, label %208

121:                                              ; preds = %117
  %122 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %123 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %122, i32 0, i32 0
  %124 = load i64 (i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_27__*)** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %127 = call i64 %124(i32 %125, %struct.TYPE_27__* %126)
  %128 = load i64, i64* %13, align 8
  %129 = sub i64 %127, %128
  %130 = load i64*, i64** %19, align 8
  %131 = load i64, i64* %12, align 8
  %132 = getelementptr inbounds i64, i64* %130, i64 %131
  store i64 %129, i64* %132, align 8
  %133 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %134 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  store i64 %135, i64* %22, align 8
  %136 = load i64, i64* %22, align 8
  %137 = trunc i64 %136 to i32
  %138 = load %struct.TYPE_28__*, %struct.TYPE_28__** %26, align 8
  %139 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* @SupportedMPEtypes, align 4
  %142 = call %struct.TYPE_24__* @GetHandler(i32 %137, i32 %140, i32 %141)
  store %struct.TYPE_24__* %142, %struct.TYPE_24__** %25, align 8
  %143 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %144 = icmp eq %struct.TYPE_24__* %143, null
  br i1 %144, label %145, label %154

145:                                              ; preds = %121
  %146 = getelementptr inbounds [5 x i8], [5 x i8]* %27, i64 0, i64 0
  %147 = load i64, i64* %22, align 8
  %148 = trunc i64 %147 to i32
  %149 = call i32 @_cmsTagSignature2String(i8* %146, i32 %148)
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* @cmsERROR_UNKNOWN_EXTENSION, align 4
  %152 = getelementptr inbounds [5 x i8], [5 x i8]* %27, i64 0, i64 0
  %153 = call i32 @cmsSignalError(i32 %150, i32 %151, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %152)
  br label %279

154:                                              ; preds = %121
  %155 = load i32, i32* %7, align 4
  %156 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %157 = load i64, i64* %22, align 8
  %158 = call i32 @_cmsWriteUInt32Number(i32 %155, %struct.TYPE_27__* %156, i64 %157)
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %161, label %160

160:                                              ; preds = %154
  br label %279

161:                                              ; preds = %154
  %162 = load i32, i32* %7, align 4
  %163 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %164 = call i32 @_cmsWriteUInt32Number(i32 %162, %struct.TYPE_27__* %163, i64 0)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %161
  br label %279

167:                                              ; preds = %161
  %168 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %169 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %168, i32 0, i32 0
  %170 = load i64 (i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_27__*)** %169, align 8
  %171 = load i32, i32* %7, align 4
  %172 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %173 = call i64 %170(i32 %171, %struct.TYPE_27__* %172)
  store i64 %173, i64* %21, align 8
  %174 = load %struct.TYPE_24__*, %struct.TYPE_24__** %25, align 8
  %175 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %174, i32 0, i32 0
  %176 = load i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32)*, i32 (i32, %struct._cms_typehandler_struct*, %struct.TYPE_27__*, %struct.TYPE_25__*, i32)** %175, align 8
  %177 = load i32, i32* %7, align 4
  %178 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %179 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %180 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %181 = call i32 %176(i32 %177, %struct._cms_typehandler_struct* %178, %struct.TYPE_27__* %179, %struct.TYPE_25__* %180, i32 1)
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %184, label %183

183:                                              ; preds = %167
  br label %279

184:                                              ; preds = %167
  %185 = load i32, i32* %7, align 4
  %186 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %187 = call i32 @_cmsWriteAlignment(i32 %185, %struct.TYPE_27__* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %190, label %189

189:                                              ; preds = %184
  br label %279

190:                                              ; preds = %184
  %191 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %192 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %191, i32 0, i32 0
  %193 = load i64 (i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_27__*)** %192, align 8
  %194 = load i32, i32* %7, align 4
  %195 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %196 = call i64 %193(i32 %194, %struct.TYPE_27__* %195)
  %197 = load i64, i64* %21, align 8
  %198 = sub i64 %196, %197
  %199 = load i64*, i64** %20, align 8
  %200 = load i64, i64* %12, align 8
  %201 = getelementptr inbounds i64, i64* %199, i64 %200
  store i64 %198, i64* %201, align 8
  %202 = load %struct.TYPE_25__*, %struct.TYPE_25__** %24, align 8
  %203 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %202, i32 0, i32 1
  %204 = load %struct.TYPE_25__*, %struct.TYPE_25__** %203, align 8
  store %struct.TYPE_25__* %204, %struct.TYPE_25__** %24, align 8
  br label %205

205:                                              ; preds = %190
  %206 = load i64, i64* %12, align 8
  %207 = add i64 %206, 1
  store i64 %207, i64* %12, align 8
  br label %117

208:                                              ; preds = %117
  %209 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %210 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %209, i32 0, i32 0
  %211 = load i64 (i32, %struct.TYPE_27__*)*, i64 (i32, %struct.TYPE_27__*)** %210, align 8
  %212 = load i32, i32* %7, align 4
  %213 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %214 = call i64 %211(i32 %212, %struct.TYPE_27__* %213)
  store i64 %214, i64* %15, align 8
  %215 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %216 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %215, i32 0, i32 1
  %217 = load i32 (i32, %struct.TYPE_27__*, i64)*, i32 (i32, %struct.TYPE_27__*, i64)** %216, align 8
  %218 = load i32, i32* %7, align 4
  %219 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %220 = load i64, i64* %14, align 8
  %221 = call i32 %217(i32 %218, %struct.TYPE_27__* %219, i64 %220)
  %222 = icmp ne i32 %221, 0
  br i1 %222, label %224, label %223

223:                                              ; preds = %208
  br label %279

224:                                              ; preds = %208
  store i64 0, i64* %12, align 8
  br label %225

225:                                              ; preds = %250, %224
  %226 = load i64, i64* %12, align 8
  %227 = load i64, i64* %18, align 8
  %228 = icmp ult i64 %226, %227
  br i1 %228, label %229, label %253

229:                                              ; preds = %225
  %230 = load i32, i32* %7, align 4
  %231 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %232 = load i64*, i64** %19, align 8
  %233 = load i64, i64* %12, align 8
  %234 = getelementptr inbounds i64, i64* %232, i64 %233
  %235 = load i64, i64* %234, align 8
  %236 = call i32 @_cmsWriteUInt32Number(i32 %230, %struct.TYPE_27__* %231, i64 %235)
  %237 = icmp ne i32 %236, 0
  br i1 %237, label %239, label %238

238:                                              ; preds = %229
  br label %279

239:                                              ; preds = %229
  %240 = load i32, i32* %7, align 4
  %241 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %242 = load i64*, i64** %20, align 8
  %243 = load i64, i64* %12, align 8
  %244 = getelementptr inbounds i64, i64* %242, i64 %243
  %245 = load i64, i64* %244, align 8
  %246 = call i32 @_cmsWriteUInt32Number(i32 %240, %struct.TYPE_27__* %241, i64 %245)
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %249, label %248

248:                                              ; preds = %239
  br label %279

249:                                              ; preds = %239
  br label %250

250:                                              ; preds = %249
  %251 = load i64, i64* %12, align 8
  %252 = add i64 %251, 1
  store i64 %252, i64* %12, align 8
  br label %225

253:                                              ; preds = %225
  %254 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %255 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %254, i32 0, i32 1
  %256 = load i32 (i32, %struct.TYPE_27__*, i64)*, i32 (i32, %struct.TYPE_27__*, i64)** %255, align 8
  %257 = load i32, i32* %7, align 4
  %258 = load %struct.TYPE_27__*, %struct.TYPE_27__** %9, align 8
  %259 = load i64, i64* %15, align 8
  %260 = call i32 %256(i32 %257, %struct.TYPE_27__* %258, i64 %259)
  %261 = icmp ne i32 %260, 0
  br i1 %261, label %263, label %262

262:                                              ; preds = %253
  br label %279

263:                                              ; preds = %253
  %264 = load i64*, i64** %19, align 8
  %265 = icmp ne i64* %264, null
  br i1 %265, label %266, label %270

266:                                              ; preds = %263
  %267 = load i32, i32* %7, align 4
  %268 = load i64*, i64** %19, align 8
  %269 = call i32 @_cmsFree(i32 %267, i64* %268)
  br label %270

270:                                              ; preds = %266, %263
  %271 = load i64*, i64** %20, align 8
  %272 = icmp ne i64* %271, null
  br i1 %272, label %273, label %277

273:                                              ; preds = %270
  %274 = load i32, i32* %7, align 4
  %275 = load i64*, i64** %20, align 8
  %276 = call i32 @_cmsFree(i32 %274, i64* %275)
  br label %277

277:                                              ; preds = %273, %270
  %278 = load i32, i32* @TRUE, align 4
  store i32 %278, i32* %6, align 4
  br label %295

279:                                              ; preds = %262, %248, %238, %223, %189, %183, %166, %160, %145, %111, %105, %88, %81, %74, %67, %59
  %280 = load i64*, i64** %19, align 8
  %281 = icmp ne i64* %280, null
  br i1 %281, label %282, label %286

282:                                              ; preds = %279
  %283 = load i32, i32* %7, align 4
  %284 = load i64*, i64** %19, align 8
  %285 = call i32 @_cmsFree(i32 %283, i64* %284)
  br label %286

286:                                              ; preds = %282, %279
  %287 = load i64*, i64** %20, align 8
  %288 = icmp ne i64* %287, null
  br i1 %288, label %289, label %293

289:                                              ; preds = %286
  %290 = load i32, i32* %7, align 4
  %291 = load i64*, i64** %20, align 8
  %292 = call i32 @_cmsFree(i32 %290, i64* %291)
  br label %293

293:                                              ; preds = %289, %286
  %294 = load i32, i32* @FALSE, align 4
  store i32 %294, i32* %6, align 4
  br label %295

295:                                              ; preds = %293, %277
  %296 = load i32, i32* %6, align 4
  ret i32 %296
}

declare dso_local i64 @_cmsContextGetClientChunk(i32, i32) #1

declare dso_local i64 @cmsPipelineInputChannels(i32, %struct.TYPE_26__*) #1

declare dso_local i64 @cmsPipelineOutputChannels(i32, %struct.TYPE_26__*) #1

declare dso_local i64 @cmsPipelineStageCount(i32, %struct.TYPE_26__*) #1

declare dso_local i64 @_cmsCalloc(i32, i64, i32) #1

declare dso_local i32 @_cmsWriteUInt16Number(i32, %struct.TYPE_27__*, i64) #1

declare dso_local i32 @_cmsWriteUInt32Number(i32, %struct.TYPE_27__*, i64) #1

declare dso_local %struct.TYPE_24__* @GetHandler(i32, i32, i32) #1

declare dso_local i32 @_cmsTagSignature2String(i8*, i32) #1

declare dso_local i32 @cmsSignalError(i32, i32, i8*, i8*) #1

declare dso_local i32 @_cmsWriteAlignment(i32, %struct.TYPE_27__*) #1

declare dso_local i32 @_cmsFree(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
