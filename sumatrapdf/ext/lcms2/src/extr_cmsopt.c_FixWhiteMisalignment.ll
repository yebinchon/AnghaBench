; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_FixWhiteMisalignment.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_FixWhiteMisalignment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i64 }

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@cmsSigCurveSetElemType = common dso_local global i32 0, align 4
@cmsSigCLutElemType = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.TYPE_5__*, i32, i32)* @FixWhiteMisalignment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FixWhiteMisalignment(i32 %0, %struct.TYPE_5__* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i32*, align 8
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i32**, align 8
  %24 = alloca i32**, align 8
  %25 = alloca i32*, align 8
  store i32 %0, i32* %6, align 4
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %26 = load i32, i32* @cmsMAXCHANNELS, align 4
  %27 = zext i32 %26 to i64
  %28 = call i8* @llvm.stacksave()
  store i8* %28, i8** %12, align 8
  %29 = alloca i32, i64 %27, align 16
  store i64 %27, i64* %13, align 8
  %30 = load i32, i32* @cmsMAXCHANNELS, align 4
  %31 = zext i32 %30 to i64
  %32 = alloca i32, i64 %31, align 16
  store i64 %31, i64* %14, align 8
  %33 = load i32, i32* @cmsMAXCHANNELS, align 4
  %34 = zext i32 %33 to i64
  %35 = alloca i32, i64 %34, align 16
  store i64 %34, i64* %15, align 8
  store i32* null, i32** %19, align 8
  store i32* null, i32** %20, align 8
  store i32* null, i32** %21, align 8
  %36 = load i32, i32* %8, align 4
  %37 = call i32 @_cmsEndPointsBySpace(i32 %36, i32** %10, i32* null, i64* %18)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %4
  %40 = load i32, i32* @FALSE, align 4
  store i32 %40, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %223

41:                                               ; preds = %4
  %42 = load i32, i32* %9, align 4
  %43 = call i32 @_cmsEndPointsBySpace(i32 %42, i32** %11, i32* null, i64* %17)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %47, label %45

45:                                               ; preds = %41
  %46 = load i32, i32* @FALSE, align 4
  store i32 %46, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %223

47:                                               ; preds = %41
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* %18, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load i32, i32* @FALSE, align 4
  store i32 %54, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %223

55:                                               ; preds = %47
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* %17, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %63

61:                                               ; preds = %55
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %223

63:                                               ; preds = %55
  %64 = load i32, i32* %6, align 4
  %65 = load i32*, i32** %10, align 8
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %67 = call i32 @cmsPipelineEval16(i32 %64, i32* %65, i32* %35, %struct.TYPE_5__* %66)
  %68 = load i64, i64* %17, align 8
  %69 = load i32*, i32** %11, align 8
  %70 = call i64 @WhitesAreEqual(i64 %68, i32* %69, i32* %35)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %63
  %73 = load i32, i32* @TRUE, align 4
  store i32 %73, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %223

74:                                               ; preds = %63
  %75 = load i32, i32* %6, align 4
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %77 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %78 = load i32, i32* @cmsSigCLutElemType, align 4
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i32**
  %81 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %82 = call i32 (i32, %struct.TYPE_5__*, i32, i32, i32**, ...) @cmsPipelineCheckAndRetreiveStages(i32 %75, %struct.TYPE_5__* %76, i32 3, i32 %77, i32** %80, i32 %81, i32** %19, i32** %20, i32** %21)
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %113, label %84

84:                                               ; preds = %74
  %85 = load i32, i32* %6, align 4
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %87 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %88 = load i32, i32* @cmsSigCLutElemType, align 4
  %89 = sext i32 %88 to i64
  %90 = inttoptr i64 %89 to i32**
  %91 = call i32 (i32, %struct.TYPE_5__*, i32, i32, i32**, ...) @cmsPipelineCheckAndRetreiveStages(i32 %85, %struct.TYPE_5__* %86, i32 2, i32 %87, i32** %90, i32** %19, i32** %20)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %112, label %93

93:                                               ; preds = %84
  %94 = load i32, i32* %6, align 4
  %95 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %96 = load i32, i32* @cmsSigCLutElemType, align 4
  %97 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %98 = sext i32 %97 to i64
  %99 = inttoptr i64 %98 to i32**
  %100 = call i32 (i32, %struct.TYPE_5__*, i32, i32, i32**, ...) @cmsPipelineCheckAndRetreiveStages(i32 %94, %struct.TYPE_5__* %95, i32 2, i32 %96, i32** %99, i32** %20, i32** %21)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %93
  %103 = load i32, i32* %6, align 4
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %7, align 8
  %105 = load i32, i32* @cmsSigCLutElemType, align 4
  %106 = call i32 (i32, %struct.TYPE_5__*, i32, i32, i32**, ...) @cmsPipelineCheckAndRetreiveStages(i32 %103, %struct.TYPE_5__* %104, i32 1, i32 %105, i32** %20)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %102
  %109 = load i32, i32* @FALSE, align 4
  store i32 %109, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %223

110:                                              ; preds = %102
  br label %111

111:                                              ; preds = %110, %93
  br label %112

112:                                              ; preds = %111, %84
  br label %113

113:                                              ; preds = %112, %74
  %114 = load i32*, i32** %19, align 8
  %115 = icmp ne i32* %114, null
  br i1 %115, label %116, label %140

116:                                              ; preds = %113
  %117 = load i32*, i32** %19, align 8
  %118 = call i32** @_cmsStageGetPtrToCurveSet(i32* %117)
  store i32** %118, i32*** %23, align 8
  store i64 0, i64* %16, align 8
  br label %119

119:                                              ; preds = %136, %116
  %120 = load i64, i64* %16, align 8
  %121 = load i64, i64* %18, align 8
  %122 = icmp slt i64 %120, %121
  br i1 %122, label %123, label %139

123:                                              ; preds = %119
  %124 = load i32, i32* %6, align 4
  %125 = load i32**, i32*** %23, align 8
  %126 = load i64, i64* %16, align 8
  %127 = getelementptr inbounds i32*, i32** %125, i64 %126
  %128 = load i32*, i32** %127, align 8
  %129 = load i32*, i32** %10, align 8
  %130 = load i64, i64* %16, align 8
  %131 = getelementptr inbounds i32, i32* %129, i64 %130
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @cmsEvalToneCurve16(i32 %124, i32* %128, i32 %132)
  %134 = load i64, i64* %16, align 8
  %135 = getelementptr inbounds i32, i32* %29, i64 %134
  store i32 %133, i32* %135, align 4
  br label %136

136:                                              ; preds = %123
  %137 = load i64, i64* %16, align 8
  %138 = add nsw i64 %137, 1
  store i64 %138, i64* %16, align 8
  br label %119

139:                                              ; preds = %119
  br label %156

140:                                              ; preds = %113
  store i64 0, i64* %16, align 8
  br label %141

141:                                              ; preds = %152, %140
  %142 = load i64, i64* %16, align 8
  %143 = load i64, i64* %18, align 8
  %144 = icmp slt i64 %142, %143
  br i1 %144, label %145, label %155

145:                                              ; preds = %141
  %146 = load i32*, i32** %10, align 8
  %147 = load i64, i64* %16, align 8
  %148 = getelementptr inbounds i32, i32* %146, i64 %147
  %149 = load i32, i32* %148, align 4
  %150 = load i64, i64* %16, align 8
  %151 = getelementptr inbounds i32, i32* %29, i64 %150
  store i32 %149, i32* %151, align 4
  br label %152

152:                                              ; preds = %145
  %153 = load i64, i64* %16, align 8
  %154 = add nsw i64 %153, 1
  store i64 %154, i64* %16, align 8
  br label %141

155:                                              ; preds = %141
  br label %156

156:                                              ; preds = %155, %139
  %157 = load i32*, i32** %21, align 8
  %158 = icmp ne i32* %157, null
  br i1 %158, label %159, label %200

159:                                              ; preds = %156
  %160 = load i32*, i32** %21, align 8
  %161 = call i32** @_cmsStageGetPtrToCurveSet(i32* %160)
  store i32** %161, i32*** %24, align 8
  store i64 0, i64* %16, align 8
  br label %162

162:                                              ; preds = %196, %159
  %163 = load i64, i64* %16, align 8
  %164 = load i64, i64* %17, align 8
  %165 = icmp slt i64 %163, %164
  br i1 %165, label %166, label %199

166:                                              ; preds = %162
  %167 = load i32, i32* %6, align 4
  %168 = load i32**, i32*** %24, align 8
  %169 = load i64, i64* %16, align 8
  %170 = getelementptr inbounds i32*, i32** %168, i64 %169
  %171 = load i32*, i32** %170, align 8
  %172 = call i32* @cmsReverseToneCurve(i32 %167, i32* %171)
  store i32* %172, i32** %25, align 8
  %173 = load i32*, i32** %25, align 8
  %174 = icmp eq i32* %173, null
  br i1 %174, label %175, label %182

175:                                              ; preds = %166
  %176 = load i32*, i32** %11, align 8
  %177 = load i64, i64* %16, align 8
  %178 = getelementptr inbounds i32, i32* %176, i64 %177
  %179 = load i32, i32* %178, align 4
  %180 = load i64, i64* %16, align 8
  %181 = getelementptr inbounds i32, i32* %32, i64 %180
  store i32 %179, i32* %181, align 4
  br label %195

182:                                              ; preds = %166
  %183 = load i32, i32* %6, align 4
  %184 = load i32*, i32** %25, align 8
  %185 = load i32*, i32** %11, align 8
  %186 = load i64, i64* %16, align 8
  %187 = getelementptr inbounds i32, i32* %185, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = call i32 @cmsEvalToneCurve16(i32 %183, i32* %184, i32 %188)
  %190 = load i64, i64* %16, align 8
  %191 = getelementptr inbounds i32, i32* %32, i64 %190
  store i32 %189, i32* %191, align 4
  %192 = load i32, i32* %6, align 4
  %193 = load i32*, i32** %25, align 8
  %194 = call i32 @cmsFreeToneCurve(i32 %192, i32* %193)
  br label %195

195:                                              ; preds = %182, %175
  br label %196

196:                                              ; preds = %195
  %197 = load i64, i64* %16, align 8
  %198 = add nsw i64 %197, 1
  store i64 %198, i64* %16, align 8
  br label %162

199:                                              ; preds = %162
  br label %216

200:                                              ; preds = %156
  store i64 0, i64* %16, align 8
  br label %201

201:                                              ; preds = %212, %200
  %202 = load i64, i64* %16, align 8
  %203 = load i64, i64* %17, align 8
  %204 = icmp slt i64 %202, %203
  br i1 %204, label %205, label %215

205:                                              ; preds = %201
  %206 = load i32*, i32** %11, align 8
  %207 = load i64, i64* %16, align 8
  %208 = getelementptr inbounds i32, i32* %206, i64 %207
  %209 = load i32, i32* %208, align 4
  %210 = load i64, i64* %16, align 8
  %211 = getelementptr inbounds i32, i32* %32, i64 %210
  store i32 %209, i32* %211, align 4
  br label %212

212:                                              ; preds = %205
  %213 = load i64, i64* %16, align 8
  %214 = add nsw i64 %213, 1
  store i64 %214, i64* %16, align 8
  br label %201

215:                                              ; preds = %201
  br label %216

216:                                              ; preds = %215, %199
  %217 = load i32, i32* %6, align 4
  %218 = load i32*, i32** %20, align 8
  %219 = load i64, i64* %17, align 8
  %220 = load i64, i64* %18, align 8
  %221 = call i32 @PatchLUT(i32 %217, i32* %218, i32* %29, i32* %32, i64 %219, i64 %220)
  %222 = load i32, i32* @TRUE, align 4
  store i32 %222, i32* %5, align 4
  store i32 1, i32* %22, align 4
  br label %223

223:                                              ; preds = %216, %108, %72, %61, %53, %45, %39
  %224 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %224)
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @_cmsEndPointsBySpace(i32, i32**, i32*, i64*) #2

declare dso_local i32 @cmsPipelineEval16(i32, i32*, i32*, %struct.TYPE_5__*) #2

declare dso_local i64 @WhitesAreEqual(i64, i32*, i32*) #2

declare dso_local i32 @cmsPipelineCheckAndRetreiveStages(i32, %struct.TYPE_5__*, i32, i32, i32**, ...) #2

declare dso_local i32** @_cmsStageGetPtrToCurveSet(i32*) #2

declare dso_local i32 @cmsEvalToneCurve16(i32, i32*, i32) #2

declare dso_local i32* @cmsReverseToneCurve(i32, i32*) #2

declare dso_local i32 @cmsFreeToneCurve(i32, i32*) #2

declare dso_local i32 @PatchLUT(i32, i32*, i32*, i32*, i64, i64) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
