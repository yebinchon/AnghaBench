; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckInterp3DPlugin.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testplugin.c_CheckInterp3DPlugin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.CheckInterp3DPlugin.identity = private unnamed_addr constant [24 x i32] [i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 0, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 0, i32 65535, i32 0, i32 65535, i32 65535, i32 65535, i32 0, i32 65535, i32 65535, i32 65535], align 16
@.str = private unnamed_addr constant [22 x i8] c"Cannot create context\00", align 1
@InterpPluginSample = common dso_local global i32 0, align 4
@cmsAT_BEGIN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [2 x i8] c"0\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"2\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CheckInterp3DPlugin() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca [3 x i32], align 4
  %6 = alloca [3 x i32], align 4
  %7 = alloca [24 x i32], align 16
  %8 = bitcast [24 x i32]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 bitcast ([24 x i32]* @__const.CheckInterp3DPlugin.identity to i8*), i64 96, i1 false)
  %9 = call i32* @WatchDogContext(i32* null)
  store i32* %9, i32** %4, align 8
  %10 = load i32*, i32** %4, align 8
  %11 = icmp eq i32* %10, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %0
  %13 = call i32 @Fail(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %1, align 4
  br label %146

14:                                               ; preds = %0
  %15 = load i32*, i32** %4, align 8
  %16 = call i32 @cmsPlugin(i32* %15, i32* @InterpPluginSample)
  %17 = load i32*, i32** %4, align 8
  %18 = call i32* @cmsPipelineAlloc(i32* %17, i32 3, i32 3)
  store i32* %18, i32** %2, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 0
  %21 = call i32* @cmsStageAllocCLut16bit(i32* %19, i32 2, i32 3, i32 3, i32* %20)
  store i32* %21, i32** %3, align 8
  %22 = load i32*, i32** %4, align 8
  %23 = load i32*, i32** %2, align 8
  %24 = load i32, i32* @cmsAT_BEGIN, align 4
  %25 = load i32*, i32** %3, align 8
  %26 = call i32 @cmsPipelineInsertStage(i32* %22, i32* %23, i32 %24, i32* %25)
  %27 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %27, align 4
  %28 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %28, align 4
  %29 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %29, align 4
  %30 = load i32*, i32** %4, align 8
  %31 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %33 = load i32*, i32** %2, align 8
  %34 = call i32 @cmsPipelineEval16(i32* %30, i32* %31, i32* %32, i32* %33)
  %35 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 %36, i32 65535)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %14
  br label %143

40:                                               ; preds = %14
  %41 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 %42, i32 65535)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40
  br label %143

46:                                               ; preds = %40
  %47 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 %48, i32 65535)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %46
  br label %143

52:                                               ; preds = %46
  %53 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 4660, i32* %53, align 4
  %54 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 22136, i32* %54, align 4
  %55 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 39612, i32* %55, align 4
  %56 = load i32*, i32** %4, align 8
  %57 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %58 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %59 = load i32*, i32** %2, align 8
  %60 = call i32 @cmsPipelineEval16(i32* %56, i32* %57, i32* %58, i32* %59)
  %61 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 25923, i32 %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %52
  br label %143

66:                                               ; preds = %52
  %67 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 43399, i32 %68)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %66
  br label %143

72:                                               ; preds = %66
  %73 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 60875, i32 %74)
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %78, label %77

77:                                               ; preds = %72
  br label %143

78:                                               ; preds = %72
  %79 = load i32*, i32** %4, align 8
  %80 = load i32*, i32** %2, align 8
  %81 = call i32 @cmsPipelineFree(i32* %79, i32* %80)
  %82 = load i32*, i32** %4, align 8
  %83 = call i32 @cmsDeleteContext(i32* %82)
  %84 = call i32* @cmsPipelineAlloc(i32* null, i32 3, i32 3)
  store i32* %84, i32** %2, align 8
  %85 = getelementptr inbounds [24 x i32], [24 x i32]* %7, i64 0, i64 0
  %86 = call i32* @cmsStageAllocCLut16bit(i32* null, i32 2, i32 3, i32 3, i32* %85)
  store i32* %86, i32** %3, align 8
  %87 = load i32*, i32** %2, align 8
  %88 = load i32, i32* @cmsAT_BEGIN, align 4
  %89 = load i32*, i32** %3, align 8
  %90 = call i32 @cmsPipelineInsertStage(i32* null, i32* %87, i32 %88, i32* %89)
  %91 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 0, i32* %91, align 4
  %92 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 0, i32* %92, align 4
  %93 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 0, i32* %93, align 4
  %94 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %95 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %96 = load i32*, i32** %2, align 8
  %97 = call i32 @cmsPipelineEval16(i32* null, i32* %94, i32* %95, i32* %96)
  %98 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %99 = load i32, i32* %98, align 4
  %100 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %99)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %78
  br label %143

103:                                              ; preds = %78
  %104 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 0, i32 %105)
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %109, label %108

108:                                              ; preds = %103
  br label %143

109:                                              ; preds = %103
  %110 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %111 = load i32, i32* %110, align 4
  %112 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 0, i32 %111)
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %109
  br label %143

115:                                              ; preds = %109
  %116 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  store i32 4660, i32* %116, align 4
  %117 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 1
  store i32 22136, i32* %117, align 4
  %118 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 2
  store i32 39612, i32* %118, align 4
  %119 = getelementptr inbounds [3 x i32], [3 x i32]* %5, i64 0, i64 0
  %120 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %121 = load i32*, i32** %2, align 8
  %122 = call i32 @cmsPipelineEval16(i32* null, i32* %119, i32* %120, i32* %121)
  %123 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 0
  %124 = load i32, i32* %123, align 4
  %125 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0), i32 4660, i32 %124)
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %128, label %127

127:                                              ; preds = %115
  br label %143

128:                                              ; preds = %115
  %129 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0), i32 22136, i32 %130)
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %134, label %133

133:                                              ; preds = %128
  br label %143

134:                                              ; preds = %128
  %135 = getelementptr inbounds [3 x i32], [3 x i32]* %6, i64 0, i64 2
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @IsGoodWord(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0), i32 39612, i32 %136)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %134
  br label %143

140:                                              ; preds = %134
  %141 = load i32*, i32** %2, align 8
  %142 = call i32 @cmsPipelineFree(i32* null, i32* %141)
  store i32 1, i32* %1, align 4
  br label %146

143:                                              ; preds = %139, %133, %127, %114, %108, %102, %77, %71, %65, %51, %45, %39
  %144 = load i32*, i32** %2, align 8
  %145 = call i32 @cmsPipelineFree(i32* null, i32* %144)
  store i32 0, i32* %1, align 4
  br label %146

146:                                              ; preds = %143, %140, %12
  %147 = load i32, i32* %1, align 4
  ret i32 %147
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32* @WatchDogContext(i32*) #2

declare dso_local i32 @Fail(i8*) #2

declare dso_local i32 @cmsPlugin(i32*, i32*) #2

declare dso_local i32* @cmsPipelineAlloc(i32*, i32, i32) #2

declare dso_local i32* @cmsStageAllocCLut16bit(i32*, i32, i32, i32, i32*) #2

declare dso_local i32 @cmsPipelineInsertStage(i32*, i32*, i32, i32*) #2

declare dso_local i32 @cmsPipelineEval16(i32*, i32*, i32*, i32*) #2

declare dso_local i32 @IsGoodWord(i8*, i32, i32) #2

declare dso_local i32 @cmsPipelineFree(i32*, i32*) #2

declare dso_local i32 @cmsDeleteContext(i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
