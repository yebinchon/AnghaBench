; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckMPEPlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckMPEPlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MPEPluginSample = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Create placeholder failed\00", align 1
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"Pipeline failed\00", align 1
@cmsSigDToB3Tag = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Plug-in failed\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Fetch mem size failed\00", align 1
@.str.7 = private unnamed_addr constant [18 x i8] c"malloc failed ?!?\00", align 1
@.str.8 = private unnamed_addr constant [19 x i8] c"Save to mem failed\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Open profile failed\00", align 1
@.str.10 = private unnamed_addr constant [34 x i8] c"read tag/context switching failed\00", align 1
@.str.11 = private unnamed_addr constant [29 x i8] c"Open profile from mem failed\00", align 1
@.str.12 = private unnamed_addr constant [37 x i8] c"Read tag/conext switching failed (2)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckMPEPlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca [3 x double], align 16
  %10 = alloca [3 x double], align 16
  %11 = alloca i32*, align 8
  store i32* null, i32** %2, align 8
  store i32* null, i32** %3, align 8
  store i32* null, i32** %4, align 8
  store i32 1234, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i8* null, i8** %7, align 8
  store i32 0, i32* %8, align 4
  %12 = call i32* @WatchDogContext(i32* null)
  store i32* %12, i32** %2, align 8
  %13 = load i32*, i32** %2, align 8
  %14 = call i32 @cmsPlugin(i32* %13, i32* @MPEPluginSample)
  %15 = load i32*, i32** %2, align 8
  %16 = call i32* @DupContext(i32* %15, i32* null)
  store i32* %16, i32** %3, align 8
  %17 = load i32*, i32** %3, align 8
  %18 = call i32* @cmsCreateProfilePlaceholder(i32* %17)
  store i32* %18, i32** %4, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %0
  %22 = call i32 @Fail(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  br label %200

23:                                               ; preds = %0
  %24 = load i32*, i32** %3, align 8
  %25 = call i32* @cmsPipelineAlloc(i32* %24, i32 3, i32 3)
  store i32* %25, i32** %11, align 8
  %26 = load i32*, i32** %3, align 8
  %27 = load i32*, i32** %11, align 8
  %28 = load i32, i32* @cmsAT_BEGIN, align 4
  %29 = load i32*, i32** %3, align 8
  %30 = call i32 @StageAllocNegate(i32* %29)
  %31 = call i32 @cmsPipelineInsertStage(i32* %26, i32* %27, i32 %28, i32 %30)
  %32 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  store double 0x3FD3333340000000, double* %32, align 16
  %33 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  store double 0x3FC99999A0000000, double* %33, align 8
  %34 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  store double 0x3FECCCCCC0000000, double* %34, align 16
  %35 = load i32*, i32** %3, align 8
  %36 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %37 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  %38 = load i32*, i32** %11, align 8
  %39 = call i32 @cmsPipelineEvalFloat(i32* %35, double* %36, double* %37, i32* %38)
  %40 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  %41 = load double, double* %40, align 16
  %42 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %43 = load double, double* %42, align 16
  %44 = fsub double 1.000000e+00, %43
  %45 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), double %41, double %44, double 1.000000e-03)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %63

47:                                               ; preds = %23
  %48 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 1
  %49 = load double, double* %48, align 8
  %50 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  %51 = load double, double* %50, align 8
  %52 = fsub double 1.000000e+00, %51
  %53 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), double %49, double %52, double 1.000000e-03)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %63

55:                                               ; preds = %47
  %56 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 2
  %57 = load double, double* %56, align 16
  %58 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  %59 = load double, double* %58, align 16
  %60 = fsub double 1.000000e+00, %59
  %61 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), double %57, double %60, double 1.000000e-03)
  %62 = icmp ne i64 %61, 0
  br label %63

63:                                               ; preds = %55, %47, %23
  %64 = phi i1 [ false, %47 ], [ false, %23 ], [ %62, %55 ]
  %65 = zext i1 %64 to i32
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %70, label %68

68:                                               ; preds = %63
  %69 = call i32 @Fail(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0))
  br label %200

70:                                               ; preds = %63
  %71 = load i32*, i32** %3, align 8
  %72 = load i32*, i32** %4, align 8
  %73 = load i32, i32* @cmsSigDToB3Tag, align 4
  %74 = load i32*, i32** %11, align 8
  %75 = call i32 @cmsWriteTag(i32* %71, i32* %72, i32 %73, i32* %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %79, label %77

77:                                               ; preds = %70
  %78 = call i32 @Fail(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  br label %200

79:                                               ; preds = %70
  %80 = load i32*, i32** %3, align 8
  %81 = load i32*, i32** %11, align 8
  %82 = call i32 @cmsPipelineFree(i32* %80, i32* %81)
  %83 = load i32*, i32** %3, align 8
  %84 = load i32*, i32** %4, align 8
  %85 = call i32 @cmsSaveProfileToMem(i32* %83, i32* %84, i8* null, i32* %8)
  store i32 %85, i32* %6, align 4
  %86 = load i32, i32* %6, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %90, label %88

88:                                               ; preds = %79
  %89 = call i32 @Fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  br label %200

90:                                               ; preds = %79
  %91 = load i32, i32* %8, align 4
  %92 = call i64 @malloc(i32 %91)
  %93 = inttoptr i64 %92 to i8*
  store i8* %93, i8** %7, align 8
  %94 = load i8*, i8** %7, align 8
  %95 = icmp eq i8* %94, null
  br i1 %95, label %96, label %98

96:                                               ; preds = %90
  %97 = call i32 @Fail(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.7, i64 0, i64 0))
  br label %200

98:                                               ; preds = %90
  %99 = load i32*, i32** %3, align 8
  %100 = load i32*, i32** %4, align 8
  %101 = load i8*, i8** %7, align 8
  %102 = call i32 @cmsSaveProfileToMem(i32* %99, i32* %100, i8* %101, i32* %8)
  store i32 %102, i32* %6, align 4
  %103 = load i32, i32* %6, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %107, label %105

105:                                              ; preds = %98
  %106 = call i32 @Fail(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.8, i64 0, i64 0))
  br label %200

107:                                              ; preds = %98
  %108 = load i32*, i32** %3, align 8
  %109 = load i32*, i32** %4, align 8
  %110 = call i32 @cmsCloseProfile(i32* %108, i32* %109)
  %111 = load i32*, i32** %3, align 8
  %112 = call i32 @cmsSetLogErrorHandler(i32* %111, i32* null)
  %113 = load i32*, i32** %3, align 8
  %114 = load i8*, i8** %7, align 8
  %115 = load i32, i32* %8, align 4
  %116 = call i32* @cmsOpenProfileFromMem(i32* %113, i8* %114, i32 %115)
  store i32* %116, i32** %4, align 8
  %117 = load i32*, i32** %4, align 8
  %118 = icmp eq i32* %117, null
  br i1 %118, label %119, label %121

119:                                              ; preds = %107
  %120 = call i32 @Fail(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0))
  br label %200

121:                                              ; preds = %107
  %122 = load i32*, i32** %3, align 8
  %123 = load i32*, i32** %4, align 8
  %124 = load i32, i32* @cmsSigDToB3Tag, align 4
  %125 = call i64 @cmsReadTag(i32* %122, i32* %123, i32 %124)
  %126 = inttoptr i64 %125 to i32*
  store i32* %126, i32** %11, align 8
  %127 = load i32*, i32** %11, align 8
  %128 = icmp ne i32* %127, null
  br i1 %128, label %129, label %131

129:                                              ; preds = %121
  %130 = call i32 @Fail(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.10, i64 0, i64 0))
  br label %200

131:                                              ; preds = %121
  %132 = load i32*, i32** %3, align 8
  %133 = load i32*, i32** %4, align 8
  %134 = call i32 @cmsCloseProfile(i32* %132, i32* %133)
  %135 = load i32*, i32** %3, align 8
  %136 = call i32 @ResetFatalError(i32* %135)
  %137 = load i32*, i32** %3, align 8
  %138 = load i8*, i8** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = call i32* @cmsOpenProfileFromMem(i32* %137, i8* %138, i32 %139)
  store i32* %140, i32** %4, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = icmp eq i32* %141, null
  br i1 %142, label %143, label %145

143:                                              ; preds = %131
  %144 = call i32 @Fail(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.11, i64 0, i64 0))
  br label %200

145:                                              ; preds = %131
  %146 = load i8*, i8** %7, align 8
  %147 = call i32 @free(i8* %146)
  store i8* null, i8** %7, align 8
  %148 = load i32*, i32** %3, align 8
  %149 = load i32*, i32** %4, align 8
  %150 = load i32, i32* @cmsSigDToB3Tag, align 4
  %151 = call i64 @cmsReadTag(i32* %148, i32* %149, i32 %150)
  %152 = inttoptr i64 %151 to i32*
  store i32* %152, i32** %11, align 8
  %153 = load i32*, i32** %11, align 8
  %154 = icmp eq i32* %153, null
  br i1 %154, label %155, label %157

155:                                              ; preds = %145
  %156 = call i32 @Fail(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.12, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %226

157:                                              ; preds = %145
  %158 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  store double 0x3FD3333340000000, double* %158, align 16
  %159 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  store double 0x3FC99999A0000000, double* %159, align 8
  %160 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  store double 0x3FECCCCCC0000000, double* %160, align 16
  %161 = load i32*, i32** %3, align 8
  %162 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %163 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  %164 = load i32*, i32** %11, align 8
  %165 = call i32 @cmsPipelineEvalFloat(i32* %161, double* %162, double* %163, i32* %164)
  %166 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 0
  %167 = load double, double* %166, align 16
  %168 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 0
  %169 = load double, double* %168, align 16
  %170 = fsub double 1.000000e+00, %169
  %171 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), double %167, double %170, double 1.000000e-03)
  %172 = icmp ne i64 %171, 0
  br i1 %172, label %173, label %189

173:                                              ; preds = %157
  %174 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 1
  %175 = load double, double* %174, align 8
  %176 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 1
  %177 = load double, double* %176, align 8
  %178 = fsub double 1.000000e+00, %177
  %179 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), double %175, double %178, double 1.000000e-03)
  %180 = icmp ne i64 %179, 0
  br i1 %180, label %181, label %189

181:                                              ; preds = %173
  %182 = getelementptr inbounds [3 x double], [3 x double]* %10, i64 0, i64 2
  %183 = load double, double* %182, align 16
  %184 = getelementptr inbounds [3 x double], [3 x double]* %9, i64 0, i64 2
  %185 = load double, double* %184, align 16
  %186 = fsub double 1.000000e+00, %185
  %187 = call i64 @IsGoodVal(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), double %183, double %186, double 1.000000e-03)
  %188 = icmp ne i64 %187, 0
  br label %189

189:                                              ; preds = %181, %173, %157
  %190 = phi i1 [ false, %173 ], [ false, %157 ], [ %188, %181 ]
  %191 = zext i1 %190 to i32
  store i32 %191, i32* %6, align 4
  %192 = load i32*, i32** %3, align 8
  %193 = load i32*, i32** %4, align 8
  %194 = call i32 @cmsCloseProfile(i32* %192, i32* %193)
  %195 = load i32*, i32** %2, align 8
  %196 = call i32 @cmsDeleteContext(i32* %195)
  %197 = load i32*, i32** %3, align 8
  %198 = call i32 @cmsDeleteContext(i32* %197)
  %199 = load i32, i32* %6, align 4
  store i32 %199, i32* %1, align 4
  br label %226

200:                                              ; preds = %143, %129, %119, %105, %96, %88, %77, %68, %21
  %201 = load i32*, i32** %4, align 8
  %202 = icmp ne i32* %201, null
  br i1 %202, label %203, label %207

203:                                              ; preds = %200
  %204 = load i32*, i32** %2, align 8
  %205 = load i32*, i32** %4, align 8
  %206 = call i32 @cmsCloseProfile(i32* %204, i32* %205)
  br label %207

207:                                              ; preds = %203, %200
  %208 = load i32*, i32** %2, align 8
  %209 = icmp ne i32* %208, null
  br i1 %209, label %210, label %213

210:                                              ; preds = %207
  %211 = load i32*, i32** %2, align 8
  %212 = call i32 @cmsDeleteContext(i32* %211)
  br label %213

213:                                              ; preds = %210, %207
  %214 = load i32*, i32** %3, align 8
  %215 = icmp ne i32* %214, null
  br i1 %215, label %216, label %219

216:                                              ; preds = %213
  %217 = load i32*, i32** %3, align 8
  %218 = call i32 @cmsDeleteContext(i32* %217)
  br label %219

219:                                              ; preds = %216, %213
  %220 = load i8*, i8** %7, align 8
  %221 = icmp ne i8* %220, null
  br i1 %221, label %222, label %225

222:                                              ; preds = %219
  %223 = load i8*, i8** %7, align 8
  %224 = call i32 @free(i8* %223)
  br label %225

225:                                              ; preds = %222, %219
  store i32 0, i32* %1, align 4
  br label %226

226:                                              ; preds = %225, %189, %155
  %227 = load i32, i32* %1, align 4
  ret i32 %227
}

declare dso_local i32* @WatchDogContext(i32*) #1

declare dso_local i32 @cmsPlugin(i32*, i32*) #1

declare dso_local i32* @DupContext(i32*, i32*) #1

declare dso_local i32* @cmsCreateProfilePlaceholder(i32*) #1

declare dso_local i32 @Fail(i8*) #1

declare dso_local i32* @cmsPipelineAlloc(i32*, i32, i32) #1

declare dso_local i32 @cmsPipelineInsertStage(i32*, i32*, i32, i32) #1

declare dso_local i32 @StageAllocNegate(i32*) #1

declare dso_local i32 @cmsPipelineEvalFloat(i32*, double*, double*, i32*) #1

declare dso_local i64 @IsGoodVal(i8*, double, double, double) #1

declare dso_local i32 @cmsWriteTag(i32*, i32*, i32, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32*, i32*) #1

declare dso_local i32 @cmsSaveProfileToMem(i32*, i32*, i8*, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @cmsCloseProfile(i32*, i32*) #1

declare dso_local i32 @cmsSetLogErrorHandler(i32*, i32*) #1

declare dso_local i32* @cmsOpenProfileFromMem(i32*, i8*, i32) #1

declare dso_local i64 @cmsReadTag(i32*, i32*, i32) #1

declare dso_local i32 @ResetFatalError(i32*) #1

declare dso_local i32 @free(i8*) #1

declare dso_local i32 @cmsDeleteContext(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
