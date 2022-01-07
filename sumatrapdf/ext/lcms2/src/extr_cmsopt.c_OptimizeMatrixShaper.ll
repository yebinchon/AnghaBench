; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_OptimizeMatrixShaper.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsopt.c_OptimizeMatrixShaper.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32*, i64 }
%struct.TYPE_12__ = type { i32 }

@FALSE = common dso_local global i64 0, align 8
@cmsSigCurveSetElemType = common dso_local global i32 0, align 4
@cmsSigMatrixElemType = common dso_local global i32 0, align 4
@TRUE = common dso_local global i64 0, align 8
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@cmsAT_END = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*)* @OptimizeMatrixShaper to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @OptimizeMatrixShaper(i32 %0, %struct.TYPE_11__** %1, i32 %2, i32* %3, i32* %4, i32* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_11__*, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i32*, align 8
  %23 = alloca %struct.TYPE_13__*, align 8
  %24 = alloca %struct.TYPE_13__*, align 8
  %25 = alloca %struct.TYPE_13__*, align 8
  %26 = alloca %struct.TYPE_12__*, align 8
  %27 = alloca %struct.TYPE_12__*, align 8
  store i32 %0, i32* %8, align 4
  store %struct.TYPE_11__** %1, %struct.TYPE_11__*** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32* %3, i32** %11, align 8
  store i32* %4, i32** %12, align 8
  store i32* %5, i32** %13, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @T_CHANNELS(i32 %29)
  %31 = icmp ne i32 %30, 3
  br i1 %31, label %37, label %32

32:                                               ; preds = %6
  %33 = load i32*, i32** %12, align 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @T_CHANNELS(i32 %34)
  %36 = icmp ne i32 %35, 3
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %6
  %38 = load i64, i64* @FALSE, align 8
  store i64 %38, i64* %7, align 8
  br label %223

39:                                               ; preds = %32
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @_cmsFormatterIs8bit(i32 %41)
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %39
  %45 = load i64, i64* @FALSE, align 8
  store i64 %45, i64* %7, align 8
  br label %223

46:                                               ; preds = %39
  %47 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %47, align 8
  store %struct.TYPE_11__* %48, %struct.TYPE_11__** %21, align 8
  %49 = load i64, i64* @FALSE, align 8
  store i64 %49, i64* %19, align 8
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %52 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %53 = load i32, i32* @cmsSigMatrixElemType, align 4
  %54 = load i32, i32* @cmsSigMatrixElemType, align 4
  %55 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i32**
  %58 = call i64 (i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32**, i32**, i32**, ...) @cmsPipelineCheckAndRetreiveStages(i32 %50, %struct.TYPE_11__* %51, i32 4, i32 %52, i32 %53, i32 %54, i32** %57, i32** %14, i32** %16, i32** %17, i32** %15)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %98

60:                                               ; preds = %46
  %61 = load i32, i32* %8, align 4
  %62 = load i32*, i32** %16, align 8
  %63 = call i64 @cmsStageData(i32 %61, i32* %62)
  %64 = inttoptr i64 %63 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %64, %struct.TYPE_13__** %23, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32*, i32** %17, align 8
  %67 = call i64 @cmsStageData(i32 %65, i32* %66)
  %68 = inttoptr i64 %67 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %68, %struct.TYPE_13__** %24, align 8
  %69 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %70 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = icmp ne i32* %71, null
  br i1 %72, label %73, label %75

73:                                               ; preds = %60
  %74 = load i64, i64* @FALSE, align 8
  store i64 %74, i64* %7, align 8
  br label %223

75:                                               ; preds = %60
  %76 = load i32, i32* %8, align 4
  %77 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %77, i32 0, i32 1
  %79 = load i64, i64* %78, align 8
  %80 = inttoptr i64 %79 to i32*
  %81 = load %struct.TYPE_13__*, %struct.TYPE_13__** %23, align 8
  %82 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = inttoptr i64 %83 to i32*
  %85 = call i32 @_cmsMAT3per(i32 %76, i32* %18, i32* %80, i32* %84)
  %86 = load %struct.TYPE_13__*, %struct.TYPE_13__** %24, align 8
  %87 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  store i32* %88, i32** %22, align 8
  %89 = load i32, i32* %8, align 4
  %90 = call i64 @_cmsMAT3isIdentity(i32 %89, i32* %18)
  %91 = icmp ne i64 %90, 0
  br i1 %91, label %92, label %97

92:                                               ; preds = %75
  %93 = load i32*, i32** %22, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %95, label %97

95:                                               ; preds = %92
  %96 = load i64, i64* @TRUE, align 8
  store i64 %96, i64* %19, align 8
  br label %97

97:                                               ; preds = %95, %92, %75
  br label %130

98:                                               ; preds = %46
  %99 = load i32, i32* %8, align 4
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %101 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %102 = load i32, i32* @cmsSigMatrixElemType, align 4
  %103 = load i32, i32* @cmsSigCurveSetElemType, align 4
  %104 = call i64 (i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32**, i32**, i32**, ...) @cmsPipelineCheckAndRetreiveStages(i32 %99, %struct.TYPE_11__* %100, i32 3, i32 %101, i32 %102, i32 %103, i32** %14, i32** %16, i32** %15)
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %106, label %127

106:                                              ; preds = %98
  %107 = load i32, i32* %8, align 4
  %108 = load i32*, i32** %16, align 8
  %109 = call i64 @cmsStageData(i32 %107, i32* %108)
  %110 = inttoptr i64 %109 to %struct.TYPE_13__*
  store %struct.TYPE_13__* %110, %struct.TYPE_13__** %25, align 8
  %111 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %112 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = call i32 @memcpy(i32* %18, i64 %113, i32 4)
  %115 = load %struct.TYPE_13__*, %struct.TYPE_13__** %25, align 8
  %116 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  store i32* %117, i32** %22, align 8
  %118 = load i32, i32* %8, align 4
  %119 = call i64 @_cmsMAT3isIdentity(i32 %118, i32* %18)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %126

121:                                              ; preds = %106
  %122 = load i32*, i32** %22, align 8
  %123 = icmp eq i32* %122, null
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = load i64, i64* @TRUE, align 8
  store i64 %125, i64* %19, align 8
  br label %126

126:                                              ; preds = %124, %121, %106
  br label %129

127:                                              ; preds = %98
  %128 = load i64, i64* @FALSE, align 8
  store i64 %128, i64* %7, align 8
  br label %223

129:                                              ; preds = %126
  br label %130

130:                                              ; preds = %129, %97
  %131 = load i32, i32* %8, align 4
  %132 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %133 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %136 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 4
  %138 = call %struct.TYPE_11__* @cmsPipelineAlloc(i32 %131, i32 %134, i32 %137)
  store %struct.TYPE_11__* %138, %struct.TYPE_11__** %20, align 8
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %140 = icmp ne %struct.TYPE_11__* %139, null
  br i1 %140, label %143, label %141

141:                                              ; preds = %130
  %142 = load i64, i64* @FALSE, align 8
  store i64 %142, i64* %7, align 8
  br label %223

143:                                              ; preds = %130
  %144 = load i32, i32* %8, align 4
  %145 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %146 = load i32, i32* @cmsAT_BEGIN, align 4
  %147 = load i32, i32* %8, align 4
  %148 = load i32*, i32** %14, align 8
  %149 = call i32 @cmsStageDup(i32 %147, i32* %148)
  %150 = call i32 @cmsPipelineInsertStage(i32 %144, %struct.TYPE_11__* %145, i32 %146, i32 %149)
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %143
  br label %218

153:                                              ; preds = %143
  %154 = load i64, i64* %19, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %167, label %156

156:                                              ; preds = %153
  %157 = load i32, i32* %8, align 4
  %158 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %159 = load i32, i32* @cmsAT_END, align 4
  %160 = load i32, i32* %8, align 4
  %161 = load i32*, i32** %22, align 8
  %162 = call i32 @cmsStageAllocMatrix(i32 %160, i32 3, i32 3, i32* %18, i32* %161)
  %163 = call i32 @cmsPipelineInsertStage(i32 %157, %struct.TYPE_11__* %158, i32 %159, i32 %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %166, label %165

165:                                              ; preds = %156
  br label %218

166:                                              ; preds = %156
  br label %167

167:                                              ; preds = %166, %153
  %168 = load i32, i32* %8, align 4
  %169 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %170 = load i32, i32* @cmsAT_END, align 4
  %171 = load i32, i32* %8, align 4
  %172 = load i32*, i32** %15, align 8
  %173 = call i32 @cmsStageDup(i32 %171, i32* %172)
  %174 = call i32 @cmsPipelineInsertStage(i32 %168, %struct.TYPE_11__* %169, i32 %170, i32 %173)
  %175 = icmp ne i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %167
  br label %218

177:                                              ; preds = %167
  %178 = load i64, i64* %19, align 8
  %179 = icmp ne i64 %178, 0
  br i1 %179, label %180, label %187

180:                                              ; preds = %177
  %181 = load i32, i32* %8, align 4
  %182 = load i32, i32* %10, align 4
  %183 = load i32*, i32** %11, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = load i32*, i32** %13, align 8
  %186 = call i32 @OptimizeByJoiningCurves(i32 %181, %struct.TYPE_11__** %20, i32 %182, i32* %183, i32* %184, i32* %185)
  br label %211

187:                                              ; preds = %177
  %188 = load i32, i32* %8, align 4
  %189 = load i32*, i32** %14, align 8
  %190 = call i64 @cmsStageData(i32 %188, i32* %189)
  %191 = inttoptr i64 %190 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %191, %struct.TYPE_12__** %26, align 8
  %192 = load i32, i32* %8, align 4
  %193 = load i32*, i32** %15, align 8
  %194 = call i64 @cmsStageData(i32 %192, i32* %193)
  %195 = inttoptr i64 %194 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %195, %struct.TYPE_12__** %27, align 8
  %196 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %197 = load i32*, i32** %13, align 8
  %198 = load i32, i32* %197, align 4
  %199 = or i32 %198, %196
  store i32 %199, i32* %197, align 4
  %200 = load i32, i32* %8, align 4
  %201 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %202 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %203 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 4
  %205 = load i32*, i32** %22, align 8
  %206 = load %struct.TYPE_12__*, %struct.TYPE_12__** %27, align 8
  %207 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %206, i32 0, i32 0
  %208 = load i32, i32* %207, align 4
  %209 = load i32*, i32** %12, align 8
  %210 = call i32 @SetMatShaper(i32 %200, %struct.TYPE_11__* %201, i32 %204, i32* %18, i32* %205, i32 %208, i32* %209)
  br label %211

211:                                              ; preds = %187, %180
  %212 = load i32, i32* %8, align 4
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %214 = call i32 @cmsPipelineFree(i32 %212, %struct.TYPE_11__* %213)
  %215 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %216 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %215, %struct.TYPE_11__** %216, align 8
  %217 = load i64, i64* @TRUE, align 8
  store i64 %217, i64* %7, align 8
  br label %223

218:                                              ; preds = %176, %165, %152
  %219 = load i32, i32* %8, align 4
  %220 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %221 = call i32 @cmsPipelineFree(i32 %219, %struct.TYPE_11__* %220)
  %222 = load i64, i64* @FALSE, align 8
  store i64 %222, i64* %7, align 8
  br label %223

223:                                              ; preds = %218, %211, %141, %127, %73, %44, %37
  %224 = load i64, i64* %7, align 8
  ret i64 %224
}

declare dso_local i32 @T_CHANNELS(i32) #1

declare dso_local i32 @_cmsFormatterIs8bit(i32) #1

declare dso_local i64 @cmsPipelineCheckAndRetreiveStages(i32, %struct.TYPE_11__*, i32, i32, i32, i32, i32**, i32**, i32**, ...) #1

declare dso_local i64 @cmsStageData(i32, i32*) #1

declare dso_local i32 @_cmsMAT3per(i32, i32*, i32*, i32*) #1

declare dso_local i64 @_cmsMAT3isIdentity(i32, i32*) #1

declare dso_local i32 @memcpy(i32*, i64, i32) #1

declare dso_local %struct.TYPE_11__* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, %struct.TYPE_11__*, i32, i32) #1

declare dso_local i32 @cmsStageDup(i32, i32*) #1

declare dso_local i32 @cmsStageAllocMatrix(i32, i32, i32, i32*, i32*) #1

declare dso_local i32 @OptimizeByJoiningCurves(i32, %struct.TYPE_11__**, i32, i32*, i32*, i32*) #1

declare dso_local i32 @SetMatShaper(i32, %struct.TYPE_11__*, i32, i32*, i32*, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, %struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
