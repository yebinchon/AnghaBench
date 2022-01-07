; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckNamedColorLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckNamedColorLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"pre\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"post\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"#%d\00", align 1
@cmsAT_END = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckNamedColorLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckNamedColorLUT() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [3 x i32], align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca [255 x i8], align 16
  %12 = alloca [3 x i32], align 4
  %13 = alloca [3 x i32], align 4
  %14 = alloca i32, align 4
  %15 = call i32 (...) @DbgThread()
  %16 = call i32* @cmsPipelineAlloc(i32 %15, i32 3, i32 3)
  store i32* %16, i32** %2, align 8
  store i32 1, i32* %6, align 4
  %17 = load i32, i32* @cmsMAXCHANNELS, align 4
  %18 = zext i32 %17 to i64
  %19 = call i8* @llvm.stacksave()
  store i8* %19, i8** %9, align 8
  %20 = alloca i32, i64 %18, align 16
  store i64 %18, i64* %10, align 8
  %21 = call i32 (...) @DbgThread()
  %22 = call i32* @cmsAllocNamedColorList(i32 %21, i32 256, i32 3, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  store i32* %22, i32** %3, align 8
  %23 = load i32*, i32** %3, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %26

25:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %109

26:                                               ; preds = %0
  store i32 0, i32* %4, align 4
  br label %27

27:                                               ; preds = %51, %26
  %28 = load i32, i32* %4, align 4
  %29 = icmp slt i32 %28, 256
  br i1 %29, label %30, label %54

30:                                               ; preds = %27
  %31 = load i32, i32* %4, align 4
  %32 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 2
  store i32 %31, i32* %32, align 4
  %33 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 1
  store i32 %31, i32* %33, align 4
  %34 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  store i32 %31, i32* %34, align 4
  %35 = load i32, i32* %4, align 4
  %36 = getelementptr inbounds i32, i32* %20, i64 3
  store i32 %35, i32* %36, align 4
  %37 = getelementptr inbounds i32, i32* %20, i64 2
  store i32 %35, i32* %37, align 8
  %38 = getelementptr inbounds i32, i32* %20, i64 1
  store i32 %35, i32* %38, align 4
  %39 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %35, i32* %39, align 16
  %40 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %41 = load i32, i32* %4, align 4
  %42 = call i32 @sprintf(i8* %40, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = call i32 (...) @DbgThread()
  %44 = load i32*, i32** %3, align 8
  %45 = getelementptr inbounds [255 x i8], [255 x i8]* %11, i64 0, i64 0
  %46 = getelementptr inbounds [3 x i32], [3 x i32]* %8, i64 0, i64 0
  %47 = call i32 @cmsAppendNamedColor(i32 %43, i32* %44, i8* %45, i32* %46, i32* %20)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %30
  store i32 0, i32* %6, align 4
  br label %54

50:                                               ; preds = %30
  br label %51

51:                                               ; preds = %50
  %52 = load i32, i32* %4, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %4, align 4
  br label %27

54:                                               ; preds = %49, %27
  %55 = call i32 (...) @DbgThread()
  %56 = load i32*, i32** %2, align 8
  %57 = load i32, i32* @cmsAT_END, align 4
  %58 = call i32 (...) @DbgThread()
  %59 = load i32*, i32** %3, align 8
  %60 = load i32, i32* @FALSE, align 4
  %61 = call i32 @_cmsStageAllocNamedColor(i32 %58, i32* %59, i32 %60)
  %62 = call i32 @cmsPipelineInsertStage(i32 %55, i32* %56, i32 %57, i32 %61)
  %63 = call i32 (...) @DbgThread()
  %64 = load i32*, i32** %3, align 8
  %65 = call i32 @cmsFreeNamedColorList(i32 %63, i32* %64)
  %66 = load i32, i32* %6, align 4
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %69

68:                                               ; preds = %54
  store i32 0, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %109

69:                                               ; preds = %54
  store i32 0, i32* %7, align 4
  store i32 0, i32* %5, align 4
  br label %70

70:                                               ; preds = %99, %69
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 256
  br i1 %72, label %73, label %102

73:                                               ; preds = %70
  %74 = load i32, i32* %5, align 4
  %75 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  store i32 %74, i32* %75, align 4
  %76 = call i32 (...) @DbgThread()
  %77 = getelementptr inbounds [3 x i32], [3 x i32]* %12, i64 0, i64 0
  %78 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 0
  %79 = load i32*, i32** %2, align 8
  %80 = call i32 @cmsPipelineEval16(i32 %76, i32* %77, i32* %78, i32* %79)
  store i32 0, i32* %4, align 4
  br label %81

81:                                               ; preds = %95, %73
  %82 = load i32, i32* %4, align 4
  %83 = icmp slt i32 %82, 3
  br i1 %83, label %84, label %98

84:                                               ; preds = %81
  %85 = load i32, i32* %4, align 4
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [3 x i32], [3 x i32]* %13, i64 0, i64 %86
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* %5, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %94

91:                                               ; preds = %84
  %92 = load i32, i32* %7, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %7, align 4
  br label %94

94:                                               ; preds = %91, %84
  br label %95

95:                                               ; preds = %94
  %96 = load i32, i32* %4, align 4
  %97 = add nsw i32 %96, 1
  store i32 %97, i32* %4, align 4
  br label %81

98:                                               ; preds = %81
  br label %99

99:                                               ; preds = %98
  %100 = load i32, i32* %5, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %5, align 4
  br label %70

102:                                              ; preds = %70
  %103 = call i32 (...) @DbgThread()
  %104 = load i32*, i32** %2, align 8
  %105 = call i32 @cmsPipelineFree(i32 %103, i32* %104)
  %106 = load i32, i32* %7, align 4
  %107 = icmp eq i32 %106, 0
  %108 = zext i1 %107 to i32
  store i32 %108, i32* %1, align 4
  store i32 1, i32* %14, align 4
  br label %109

109:                                              ; preds = %102, %68, %25
  %110 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %110)
  %111 = load i32, i32* %1, align 4
  ret i32 %111
}

declare dso_local i32* @cmsPipelineAlloc(i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @cmsAllocNamedColorList(i32, i32, i32, i8*, i8*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @cmsAppendNamedColor(i32, i32*, i8*, i32*, i32*) #1

declare dso_local i32 @cmsPipelineInsertStage(i32, i32*, i32, i32) #1

declare dso_local i32 @_cmsStageAllocNamedColor(i32, i32*, i32) #1

declare dso_local i32 @cmsFreeNamedColorList(i32, i32*) #1

declare dso_local i32 @cmsPipelineEval16(i32, i32*, i32*, i32*) #1

declare dso_local i32 @cmsPipelineFree(i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
