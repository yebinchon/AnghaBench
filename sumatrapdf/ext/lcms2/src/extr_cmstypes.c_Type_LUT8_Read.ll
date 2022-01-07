; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT8_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT8_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }
%struct.TYPE_7__ = type { i32 (i32, %struct.TYPE_7__*, i32*, i64, i32)* }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, %struct.TYPE_7__*, i64*, i64)* @Type_LUT8_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_LUT8_Read(i32 %0, %struct._cms_typehandler_struct* %1, %struct.TYPE_7__* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca [9 x i32], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store %struct.TYPE_7__* %2, %struct.TYPE_7__** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i32* null, i32** %15, align 8
  store i8* null, i8** %16, align 8
  %22 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %23 = ptrtoint %struct._cms_typehandler_struct* %22 to i64
  %24 = call i32 @cmsUNUSED_PARAMETER(i64 %23)
  %25 = load i64*, i64** %10, align 8
  store i64 0, i64* %25, align 8
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %28 = call i32 @_cmsReadUInt8Number(i32 %26, %struct.TYPE_7__* %27, i32* %12)
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %5
  br label %264

31:                                               ; preds = %5
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %34 = call i32 @_cmsReadUInt8Number(i32 %32, %struct.TYPE_7__* %33, i32* %13)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %264

37:                                               ; preds = %31
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %40 = call i32 @_cmsReadUInt8Number(i32 %38, %struct.TYPE_7__* %39, i32* %14)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %37
  br label %264

43:                                               ; preds = %37
  %44 = load i32, i32* %14, align 4
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  br label %264

47:                                               ; preds = %43
  %48 = load i32, i32* %7, align 4
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %50 = call i32 @_cmsReadUInt8Number(i32 %48, %struct.TYPE_7__* %49, i32* null)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %47
  br label %264

53:                                               ; preds = %47
  %54 = load i32, i32* %12, align 4
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = load i32, i32* %12, align 4
  %58 = load i32, i32* @cmsMAXCHANNELS, align 4
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %61

60:                                               ; preds = %56, %53
  br label %264

61:                                               ; preds = %56
  %62 = load i32, i32* %13, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %68, label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %13, align 4
  %66 = load i32, i32* @cmsMAXCHANNELS, align 4
  %67 = icmp sgt i32 %65, %66
  br i1 %67, label %68, label %69

68:                                               ; preds = %64, %61
  br label %264

69:                                               ; preds = %64
  %70 = load i32, i32* %7, align 4
  %71 = load i32, i32* %12, align 4
  %72 = load i32, i32* %13, align 4
  %73 = call i8* @cmsPipelineAlloc(i32 %70, i32 %71, i32 %72)
  store i8* %73, i8** %16, align 8
  %74 = load i8*, i8** %16, align 8
  %75 = icmp eq i8* %74, null
  br i1 %75, label %76, label %77

76:                                               ; preds = %69
  br label %264

77:                                               ; preds = %69
  %78 = load i32, i32* %7, align 4
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %80 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %81 = call i32 @_cmsRead15Fixed16Number(i32 %78, %struct.TYPE_7__* %79, i32* %80)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %77
  br label %264

84:                                               ; preds = %77
  %85 = load i32, i32* %7, align 4
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %87 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 1
  %88 = call i32 @_cmsRead15Fixed16Number(i32 %85, %struct.TYPE_7__* %86, i32* %87)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %91, label %90

90:                                               ; preds = %84
  br label %264

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %94 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 2
  %95 = call i32 @_cmsRead15Fixed16Number(i32 %92, %struct.TYPE_7__* %93, i32* %94)
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  br label %264

98:                                               ; preds = %91
  %99 = load i32, i32* %7, align 4
  %100 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %101 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 3
  %102 = call i32 @_cmsRead15Fixed16Number(i32 %99, %struct.TYPE_7__* %100, i32* %101)
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %105, label %104

104:                                              ; preds = %98
  br label %264

105:                                              ; preds = %98
  %106 = load i32, i32* %7, align 4
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %108 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 4
  %109 = call i32 @_cmsRead15Fixed16Number(i32 %106, %struct.TYPE_7__* %107, i32* %108)
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %112, label %111

111:                                              ; preds = %105
  br label %264

112:                                              ; preds = %105
  %113 = load i32, i32* %7, align 4
  %114 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %115 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 5
  %116 = call i32 @_cmsRead15Fixed16Number(i32 %113, %struct.TYPE_7__* %114, i32* %115)
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %119, label %118

118:                                              ; preds = %112
  br label %264

119:                                              ; preds = %112
  %120 = load i32, i32* %7, align 4
  %121 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %122 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 6
  %123 = call i32 @_cmsRead15Fixed16Number(i32 %120, %struct.TYPE_7__* %121, i32* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %126, label %125

125:                                              ; preds = %119
  br label %264

126:                                              ; preds = %119
  %127 = load i32, i32* %7, align 4
  %128 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %129 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 7
  %130 = call i32 @_cmsRead15Fixed16Number(i32 %127, %struct.TYPE_7__* %128, i32* %129)
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %133, label %132

132:                                              ; preds = %126
  br label %264

133:                                              ; preds = %126
  %134 = load i32, i32* %7, align 4
  %135 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %136 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 8
  %137 = call i32 @_cmsRead15Fixed16Number(i32 %134, %struct.TYPE_7__* %135, i32* %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %133
  br label %264

140:                                              ; preds = %133
  %141 = load i32, i32* %12, align 4
  %142 = icmp eq i32 %141, 3
  br i1 %142, label %143, label %159

143:                                              ; preds = %140
  %144 = load i32, i32* %7, align 4
  %145 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %146 = call i32 @_cmsMAT3isIdentity(i32 %144, i32* %145)
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %159, label %148

148:                                              ; preds = %143
  %149 = load i32, i32* %7, align 4
  %150 = load i8*, i8** %16, align 8
  %151 = load i32, i32* @cmsAT_BEGIN, align 4
  %152 = load i32, i32* %7, align 4
  %153 = getelementptr inbounds [9 x i32], [9 x i32]* %19, i64 0, i64 0
  %154 = call i32 @cmsStageAllocMatrix(i32 %152, i32 3, i32 3, i32* %153, i32* null)
  %155 = call i32 @cmsPipelineInsertStage(i32 %149, i8* %150, i32 %151, i32 %154)
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %158, label %157

157:                                              ; preds = %148
  br label %264

158:                                              ; preds = %148
  br label %159

159:                                              ; preds = %158, %143, %140
  %160 = load i32, i32* %7, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %162 = load i8*, i8** %16, align 8
  %163 = load i32, i32* %12, align 4
  %164 = call i32 @Read8bitTables(i32 %160, %struct.TYPE_7__* %161, i8* %162, i32 %163)
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %167, label %166

166:                                              ; preds = %159
  br label %264

167:                                              ; preds = %159
  %168 = load i32, i32* %13, align 4
  %169 = load i32, i32* %14, align 4
  %170 = load i32, i32* %12, align 4
  %171 = call i64 @uipow(i32 %168, i32 %169, i32 %170)
  store i64 %171, i64* %17, align 8
  %172 = load i64, i64* %17, align 8
  %173 = icmp eq i64 %172, -1
  br i1 %173, label %174, label %175

174:                                              ; preds = %167
  br label %264

175:                                              ; preds = %167
  %176 = load i64, i64* %17, align 8
  %177 = icmp sgt i64 %176, 0
  br i1 %177, label %178, label %253

178:                                              ; preds = %175
  %179 = load i32, i32* %7, align 4
  %180 = load i64, i64* %17, align 8
  %181 = call i64 @_cmsCalloc(i32 %179, i64 %180, i32 4)
  %182 = inttoptr i64 %181 to i32*
  store i32* %182, i32** %21, align 8
  store i32* %182, i32** %20, align 8
  %183 = load i32*, i32** %21, align 8
  %184 = icmp eq i32* %183, null
  br i1 %184, label %185, label %186

185:                                              ; preds = %178
  br label %264

186:                                              ; preds = %178
  %187 = load i32, i32* %7, align 4
  %188 = load i64, i64* %17, align 8
  %189 = call i64 @_cmsMalloc(i32 %187, i64 %188)
  %190 = inttoptr i64 %189 to i32*
  store i32* %190, i32** %15, align 8
  %191 = load i32*, i32** %15, align 8
  %192 = icmp eq i32* %191, null
  br i1 %192, label %193, label %197

193:                                              ; preds = %186
  %194 = load i32, i32* %7, align 4
  %195 = load i32*, i32** %21, align 8
  %196 = call i32 @_cmsFree(i32 %194, i32* %195)
  br label %264

197:                                              ; preds = %186
  %198 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %199 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %198, i32 0, i32 0
  %200 = load i32 (i32, %struct.TYPE_7__*, i32*, i64, i32)*, i32 (i32, %struct.TYPE_7__*, i32*, i64, i32)** %199, align 8
  %201 = load i32, i32* %7, align 4
  %202 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %203 = load i32*, i32** %15, align 8
  %204 = load i64, i64* %17, align 8
  %205 = call i32 %200(i32 %201, %struct.TYPE_7__* %202, i32* %203, i64 %204, i32 1)
  %206 = icmp ne i32 %205, 1
  br i1 %206, label %207, label %214

207:                                              ; preds = %197
  %208 = load i32, i32* %7, align 4
  %209 = load i32*, i32** %21, align 8
  %210 = call i32 @_cmsFree(i32 %208, i32* %209)
  %211 = load i32, i32* %7, align 4
  %212 = load i32*, i32** %15, align 8
  %213 = call i32 @_cmsFree(i32 %211, i32* %212)
  br label %264

214:                                              ; preds = %197
  store i64 0, i64* %18, align 8
  br label %215

215:                                              ; preds = %227, %214
  %216 = load i64, i64* %18, align 8
  %217 = load i64, i64* %17, align 8
  %218 = icmp slt i64 %216, %217
  br i1 %218, label %219, label %230

219:                                              ; preds = %215
  %220 = load i32*, i32** %15, align 8
  %221 = load i64, i64* %18, align 8
  %222 = getelementptr inbounds i32, i32* %220, i64 %221
  %223 = load i32, i32* %222, align 4
  %224 = call i32 @FROM_8_TO_16(i32 %223)
  %225 = load i32*, i32** %20, align 8
  %226 = getelementptr inbounds i32, i32* %225, i32 1
  store i32* %226, i32** %20, align 8
  store i32 %224, i32* %225, align 4
  br label %227

227:                                              ; preds = %219
  %228 = load i64, i64* %18, align 8
  %229 = add nsw i64 %228, 1
  store i64 %229, i64* %18, align 8
  br label %215

230:                                              ; preds = %215
  %231 = load i32, i32* %7, align 4
  %232 = load i32*, i32** %15, align 8
  %233 = call i32 @_cmsFree(i32 %231, i32* %232)
  store i32* null, i32** %15, align 8
  %234 = load i32, i32* %7, align 4
  %235 = load i8*, i8** %16, align 8
  %236 = load i32, i32* @cmsAT_END, align 4
  %237 = load i32, i32* %7, align 4
  %238 = load i32, i32* %14, align 4
  %239 = load i32, i32* %12, align 4
  %240 = load i32, i32* %13, align 4
  %241 = load i32*, i32** %21, align 8
  %242 = call i32 @cmsStageAllocCLut16bit(i32 %237, i32 %238, i32 %239, i32 %240, i32* %241)
  %243 = call i32 @cmsPipelineInsertStage(i32 %234, i8* %235, i32 %236, i32 %242)
  %244 = icmp ne i32 %243, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %230
  %246 = load i32, i32* %7, align 4
  %247 = load i32*, i32** %21, align 8
  %248 = call i32 @_cmsFree(i32 %246, i32* %247)
  br label %264

249:                                              ; preds = %230
  %250 = load i32, i32* %7, align 4
  %251 = load i32*, i32** %21, align 8
  %252 = call i32 @_cmsFree(i32 %250, i32* %251)
  br label %253

253:                                              ; preds = %249, %175
  %254 = load i32, i32* %7, align 4
  %255 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %256 = load i8*, i8** %16, align 8
  %257 = load i32, i32* %13, align 4
  %258 = call i32 @Read8bitTables(i32 %254, %struct.TYPE_7__* %255, i8* %256, i32 %257)
  %259 = icmp ne i32 %258, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %253
  br label %264

261:                                              ; preds = %253
  %262 = load i64*, i64** %10, align 8
  store i64 1, i64* %262, align 8
  %263 = load i8*, i8** %16, align 8
  store i8* %263, i8** %6, align 8
  br label %272

264:                                              ; preds = %260, %245, %207, %193, %185, %174, %166, %157, %139, %132, %125, %118, %111, %104, %97, %90, %83, %76, %68, %60, %52, %46, %42, %36, %30
  %265 = load i8*, i8** %16, align 8
  %266 = icmp ne i8* %265, null
  br i1 %266, label %267, label %271

267:                                              ; preds = %264
  %268 = load i32, i32* %7, align 4
  %269 = load i8*, i8** %16, align 8
  %270 = call i32 @cmsPipelineFree(i32 %268, i8* %269)
  br label %271

271:                                              ; preds = %267, %264
  store i8* null, i8** %6, align 8
  br label %272

272:                                              ; preds = %271, %261
  %273 = load i8*, i8** %6, align 8
  ret i8* %273
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @_cmsReadUInt8Number(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i8* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @_cmsRead15Fixed16Number(i32, %struct.TYPE_7__*, i32*) #1

declare dso_local i32 @_cmsMAT3isIdentity(i32, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i8*, i32, i32) #1

declare dso_local i32 @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @Read8bitTables(i32, %struct.TYPE_7__*, i8*, i32) #1

declare dso_local i64 @uipow(i32, i32, i32) #1

declare dso_local i64 @_cmsCalloc(i32, i64, i32) #1

declare dso_local i64 @_cmsMalloc(i32, i64) #1

declare dso_local i32 @_cmsFree(i32, i32*) #1

declare dso_local i32 @FROM_8_TO_16(i32) #1

declare dso_local i32 @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
