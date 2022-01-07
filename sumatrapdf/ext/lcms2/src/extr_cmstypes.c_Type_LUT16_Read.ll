; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT16_Read.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmstypes.c_Type_LUT16_Read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct._cms_typehandler_struct = type { i32 }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32, %struct._cms_typehandler_struct*, i32*, i64*, i64)* @Type_LUT16_Read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @Type_LUT16_Read(i32 %0, %struct._cms_typehandler_struct* %1, i32* %2, i64* %3, i64 %4) #0 {
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct._cms_typehandler_struct*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i64*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca [9 x i32], align 16
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  store i32 %0, i32* %7, align 4
  store %struct._cms_typehandler_struct* %1, %struct._cms_typehandler_struct** %8, align 8
  store i32* %2, i32** %9, align 8
  store i64* %3, i64** %10, align 8
  store i64 %4, i64* %11, align 8
  store i8* null, i8** %15, align 8
  %21 = load %struct._cms_typehandler_struct*, %struct._cms_typehandler_struct** %8, align 8
  %22 = ptrtoint %struct._cms_typehandler_struct* %21 to i64
  %23 = call i32 @cmsUNUSED_PARAMETER(i64 %22)
  %24 = load i64*, i64** %10, align 8
  store i64 0, i64* %24, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load i32*, i32** %9, align 8
  %27 = call i32 @_cmsReadUInt8Number(i32 %25, i32* %26, i32* %12)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %5
  store i8* null, i8** %6, align 8
  br label %256

30:                                               ; preds = %5
  %31 = load i32, i32* %7, align 4
  %32 = load i32*, i32** %9, align 8
  %33 = call i32 @_cmsReadUInt8Number(i32 %31, i32* %32, i32* %13)
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %30
  store i8* null, i8** %6, align 8
  br label %256

36:                                               ; preds = %30
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %9, align 8
  %39 = call i32 @_cmsReadUInt8Number(i32 %37, i32* %38, i32* %14)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36
  store i8* null, i8** %6, align 8
  br label %256

42:                                               ; preds = %36
  %43 = load i32, i32* %7, align 4
  %44 = load i32*, i32** %9, align 8
  %45 = call i32 @_cmsReadUInt8Number(i32 %43, i32* %44, i32* null)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %42
  store i8* null, i8** %6, align 8
  br label %256

48:                                               ; preds = %42
  %49 = load i32, i32* %12, align 4
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %12, align 4
  %53 = load i32, i32* @cmsMAXCHANNELS, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %51, %48
  br label %248

56:                                               ; preds = %51
  %57 = load i32, i32* %13, align 4
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %63, label %59

59:                                               ; preds = %56
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @cmsMAXCHANNELS, align 4
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %64

63:                                               ; preds = %59, %56
  br label %248

64:                                               ; preds = %59
  %65 = load i32, i32* %7, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %13, align 4
  %68 = call i8* @cmsPipelineAlloc(i32 %65, i32 %66, i32 %67)
  store i8* %68, i8** %15, align 8
  %69 = load i8*, i8** %15, align 8
  %70 = icmp eq i8* %69, null
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %248

72:                                               ; preds = %64
  %73 = load i32, i32* %7, align 4
  %74 = load i32*, i32** %9, align 8
  %75 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0
  %76 = call i32 @_cmsRead15Fixed16Number(i32 %73, i32* %74, i32* %75)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %72
  br label %248

79:                                               ; preds = %72
  %80 = load i32, i32* %7, align 4
  %81 = load i32*, i32** %9, align 8
  %82 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 1
  %83 = call i32 @_cmsRead15Fixed16Number(i32 %80, i32* %81, i32* %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %79
  br label %248

86:                                               ; preds = %79
  %87 = load i32, i32* %7, align 4
  %88 = load i32*, i32** %9, align 8
  %89 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 2
  %90 = call i32 @_cmsRead15Fixed16Number(i32 %87, i32* %88, i32* %89)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %93, label %92

92:                                               ; preds = %86
  br label %248

93:                                               ; preds = %86
  %94 = load i32, i32* %7, align 4
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 3
  %97 = call i32 @_cmsRead15Fixed16Number(i32 %94, i32* %95, i32* %96)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %93
  br label %248

100:                                              ; preds = %93
  %101 = load i32, i32* %7, align 4
  %102 = load i32*, i32** %9, align 8
  %103 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 4
  %104 = call i32 @_cmsRead15Fixed16Number(i32 %101, i32* %102, i32* %103)
  %105 = icmp ne i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %100
  br label %248

107:                                              ; preds = %100
  %108 = load i32, i32* %7, align 4
  %109 = load i32*, i32** %9, align 8
  %110 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 5
  %111 = call i32 @_cmsRead15Fixed16Number(i32 %108, i32* %109, i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %107
  br label %248

114:                                              ; preds = %107
  %115 = load i32, i32* %7, align 4
  %116 = load i32*, i32** %9, align 8
  %117 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 6
  %118 = call i32 @_cmsRead15Fixed16Number(i32 %115, i32* %116, i32* %117)
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %121, label %120

120:                                              ; preds = %114
  br label %248

121:                                              ; preds = %114
  %122 = load i32, i32* %7, align 4
  %123 = load i32*, i32** %9, align 8
  %124 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 7
  %125 = call i32 @_cmsRead15Fixed16Number(i32 %122, i32* %123, i32* %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %121
  br label %248

128:                                              ; preds = %121
  %129 = load i32, i32* %7, align 4
  %130 = load i32*, i32** %9, align 8
  %131 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 8
  %132 = call i32 @_cmsRead15Fixed16Number(i32 %129, i32* %130, i32* %131)
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %135, label %134

134:                                              ; preds = %128
  br label %248

135:                                              ; preds = %128
  %136 = load i32, i32* %12, align 4
  %137 = icmp eq i32 %136, 3
  br i1 %137, label %138, label %154

138:                                              ; preds = %135
  %139 = load i32, i32* %7, align 4
  %140 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0
  %141 = call i32 @_cmsMAT3isIdentity(i32 %139, i32* %140)
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %154, label %143

143:                                              ; preds = %138
  %144 = load i32, i32* %7, align 4
  %145 = load i8*, i8** %15, align 8
  %146 = load i32, i32* @cmsAT_END, align 4
  %147 = load i32, i32* %7, align 4
  %148 = getelementptr inbounds [9 x i32], [9 x i32]* %17, i64 0, i64 0
  %149 = call i32 @cmsStageAllocMatrix(i32 %147, i32 3, i32 3, i32* %148, i32* null)
  %150 = call i32 @cmsPipelineInsertStage(i32 %144, i8* %145, i32 %146, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %143
  br label %248

153:                                              ; preds = %143
  br label %154

154:                                              ; preds = %153, %138, %135
  %155 = load i32, i32* %7, align 4
  %156 = load i32*, i32** %9, align 8
  %157 = call i32 @_cmsReadUInt16Number(i32 %155, i32* %156, i32* %18)
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %160, label %159

159:                                              ; preds = %154
  br label %248

160:                                              ; preds = %154
  %161 = load i32, i32* %7, align 4
  %162 = load i32*, i32** %9, align 8
  %163 = call i32 @_cmsReadUInt16Number(i32 %161, i32* %162, i32* %19)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %160
  br label %248

166:                                              ; preds = %160
  %167 = load i32, i32* %18, align 4
  %168 = icmp sgt i32 %167, 32767
  br i1 %168, label %172, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %19, align 4
  %171 = icmp sgt i32 %170, 32767
  br i1 %171, label %172, label %173

172:                                              ; preds = %169, %166
  br label %248

173:                                              ; preds = %169
  %174 = load i32, i32* %14, align 4
  %175 = icmp eq i32 %174, 1
  br i1 %175, label %176, label %177

176:                                              ; preds = %173
  br label %248

177:                                              ; preds = %173
  %178 = load i32, i32* %7, align 4
  %179 = load i32*, i32** %9, align 8
  %180 = load i8*, i8** %15, align 8
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %18, align 4
  %183 = call i32 @Read16bitTables(i32 %178, i32* %179, i8* %180, i32 %181, i32 %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %177
  br label %248

186:                                              ; preds = %177
  %187 = load i32, i32* %13, align 4
  %188 = load i32, i32* %14, align 4
  %189 = load i32, i32* %12, align 4
  %190 = call i64 @uipow(i32 %187, i32 %188, i32 %189)
  store i64 %190, i64* %16, align 8
  %191 = load i64, i64* %16, align 8
  %192 = icmp eq i64 %191, -1
  br i1 %192, label %193, label %194

193:                                              ; preds = %186
  br label %248

194:                                              ; preds = %186
  %195 = load i64, i64* %16, align 8
  %196 = icmp sgt i64 %195, 0
  br i1 %196, label %197, label %236

197:                                              ; preds = %194
  %198 = load i32, i32* %7, align 4
  %199 = load i64, i64* %16, align 8
  %200 = call i64 @_cmsCalloc(i32 %198, i64 %199, i32 4)
  %201 = inttoptr i64 %200 to i32*
  store i32* %201, i32** %20, align 8
  %202 = load i32*, i32** %20, align 8
  %203 = icmp eq i32* %202, null
  br i1 %203, label %204, label %205

204:                                              ; preds = %197
  br label %248

205:                                              ; preds = %197
  %206 = load i32, i32* %7, align 4
  %207 = load i32*, i32** %9, align 8
  %208 = load i64, i64* %16, align 8
  %209 = load i32*, i32** %20, align 8
  %210 = call i32 @_cmsReadUInt16Array(i32 %206, i32* %207, i64 %208, i32* %209)
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %216, label %212

212:                                              ; preds = %205
  %213 = load i32, i32* %7, align 4
  %214 = load i32*, i32** %20, align 8
  %215 = call i32 @_cmsFree(i32 %213, i32* %214)
  br label %248

216:                                              ; preds = %205
  %217 = load i32, i32* %7, align 4
  %218 = load i8*, i8** %15, align 8
  %219 = load i32, i32* @cmsAT_END, align 4
  %220 = load i32, i32* %7, align 4
  %221 = load i32, i32* %14, align 4
  %222 = load i32, i32* %12, align 4
  %223 = load i32, i32* %13, align 4
  %224 = load i32*, i32** %20, align 8
  %225 = call i32 @cmsStageAllocCLut16bit(i32 %220, i32 %221, i32 %222, i32 %223, i32* %224)
  %226 = call i32 @cmsPipelineInsertStage(i32 %217, i8* %218, i32 %219, i32 %225)
  %227 = icmp ne i32 %226, 0
  br i1 %227, label %232, label %228

228:                                              ; preds = %216
  %229 = load i32, i32* %7, align 4
  %230 = load i32*, i32** %20, align 8
  %231 = call i32 @_cmsFree(i32 %229, i32* %230)
  br label %248

232:                                              ; preds = %216
  %233 = load i32, i32* %7, align 4
  %234 = load i32*, i32** %20, align 8
  %235 = call i32 @_cmsFree(i32 %233, i32* %234)
  br label %236

236:                                              ; preds = %232, %194
  %237 = load i32, i32* %7, align 4
  %238 = load i32*, i32** %9, align 8
  %239 = load i8*, i8** %15, align 8
  %240 = load i32, i32* %13, align 4
  %241 = load i32, i32* %19, align 4
  %242 = call i32 @Read16bitTables(i32 %237, i32* %238, i8* %239, i32 %240, i32 %241)
  %243 = icmp ne i32 %242, 0
  br i1 %243, label %245, label %244

244:                                              ; preds = %236
  br label %248

245:                                              ; preds = %236
  %246 = load i64*, i64** %10, align 8
  store i64 1, i64* %246, align 8
  %247 = load i8*, i8** %15, align 8
  store i8* %247, i8** %6, align 8
  br label %256

248:                                              ; preds = %244, %228, %212, %204, %193, %185, %176, %172, %165, %159, %152, %134, %127, %120, %113, %106, %99, %92, %85, %78, %71, %63, %55
  %249 = load i8*, i8** %15, align 8
  %250 = icmp ne i8* %249, null
  br i1 %250, label %251, label %255

251:                                              ; preds = %248
  %252 = load i32, i32* %7, align 4
  %253 = load i8*, i8** %15, align 8
  %254 = call i32 @cmsPipelineFree(i32 %252, i8* %253)
  br label %255

255:                                              ; preds = %251, %248
  store i8* null, i8** %6, align 8
  br label %256

256:                                              ; preds = %255, %245, %47, %41, %35, %29
  %257 = load i8*, i8** %6, align 8
  ret i8* %257
}

declare dso_local i32 @cmsUNUSED_PARAMETER(i64) #1

declare dso_local i32 @_cmsReadUInt8Number(i32, i32*, i32*) #1

declare dso_local i8* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @_cmsRead15Fixed16Number(i32, i32*, i32*) #1

declare dso_local i32 @_cmsMAT3isIdentity(i32, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i8*, i32, i32) #1

declare dso_local i32 @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @_cmsReadUInt16Number(i32, i32*, i32*) #1

declare dso_local i32 @Read16bitTables(i32, i32*, i8*, i32, i32) #1

declare dso_local i64 @uipow(i32, i32, i32) #1

declare dso_local i64 @_cmsCalloc(i32, i64, i32) #1

declare dso_local i32 @_cmsReadUInt16Array(i32, i32*, i64, i32*) #1

declare dso_local i32 @_cmsFree(i32, i32*) #1

declare dso_local i32 @cmsStageAllocCLut16bit(i32, i32, i32, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
