; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteNamedColorCRD.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteNamedColorCRD.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsMAX_PATH = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@TYPE_NAMED_COLOR_INDEX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"(colorlistcomment) (%s) \0A\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"Named profile\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"(Prefix) [ (Pantone ) (PANTONE ) ]\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"(Suffix) [ ( CV) ( CVC) ( C) ]\0A\00", align 1
@cmsMAXCHANNELS = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"  (%s) [ %s ]\0A\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"   >>\00", align 1
@cmsFLAGS_NODEFAULTRESOURCEDEF = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [48 x i8] c" /Current exch /HPSpotTable defineresource pop\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i64, i64)* @WriteNamedColorCRD to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteNamedColorCRD(i32 %0, i32* %1, i32 %2, i64 %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i64, align 8
  %19 = alloca [128 x i8], align 16
  %20 = alloca i32*, align 8
  %21 = alloca i32, align 4
  %22 = alloca [1 x i64], align 8
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  %25 = load i32, i32* @cmsMAX_PATH, align 4
  %26 = zext i32 %25 to i64
  %27 = call i8* @llvm.stacksave()
  store i8* %27, i8** %17, align 8
  %28 = alloca i8, i64 %26, align 16
  store i64 %26, i64* %18, align 8
  %29 = load i32, i32* %7, align 4
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @FALSE, align 4
  %32 = call i64 @cmsFormatterForColorspaceOfProfile(i32 %29, i32 %30, i32 2, i32 %31)
  store i64 %32, i64* %16, align 8
  %33 = load i64, i64* %16, align 8
  %34 = call i64 @T_CHANNELS(i64 %33)
  store i64 %34, i64* %15, align 8
  %35 = load i32, i32* %7, align 4
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @TYPE_NAMED_COLOR_INDEX, align 4
  %38 = load i64, i64* %16, align 8
  %39 = load i64, i64* %10, align 8
  %40 = load i64, i64* %11, align 8
  %41 = call i32* @cmsCreateTransform(i32 %35, i32 %36, i32 %37, i32* null, i64 %38, i64 %39, i64 %40)
  store i32* %41, i32** %12, align 8
  %42 = load i32*, i32** %12, align 8
  %43 = icmp eq i32* %42, null
  br i1 %43, label %44, label %45

44:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %119

45:                                               ; preds = %5
  %46 = load i32*, i32** %12, align 8
  %47 = call i32* @cmsGetNamedColorList(i32* %46)
  store i32* %47, i32** %20, align 8
  %48 = load i32*, i32** %20, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %45
  store i32 0, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %119

51:                                               ; preds = %45
  %52 = load i32, i32* %7, align 4
  %53 = load i32*, i32** %8, align 8
  %54 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %52, i32* %53, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %55 = load i32, i32* %7, align 4
  %56 = load i32*, i32** %8, align 8
  %57 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %55, i32* %56, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0))
  %58 = load i32, i32* %7, align 4
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %58, i32* %59, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %61 = load i32, i32* %7, align 4
  %62 = load i32*, i32** %8, align 8
  %63 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %61, i32* %62, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %64 = load i32, i32* %7, align 4
  %65 = load i32*, i32** %20, align 8
  %66 = call i64 @cmsNamedColorCount(i32 %64, i32* %65)
  store i64 %66, i64* %14, align 8
  store i64 0, i64* %13, align 8
  br label %67

67:                                               ; preds = %100, %51
  %68 = load i64, i64* %13, align 8
  %69 = load i64, i64* %14, align 8
  %70 = icmp slt i64 %68, %69
  br i1 %70, label %71, label %103

71:                                               ; preds = %67
  %72 = load i32, i32* @cmsMAXCHANNELS, align 4
  %73 = zext i32 %72 to i64
  %74 = call i8* @llvm.stacksave()
  store i8* %74, i8** %23, align 8
  %75 = alloca i64, i64 %73, align 16
  store i64 %73, i64* %24, align 8
  %76 = load i64, i64* %13, align 8
  %77 = getelementptr inbounds [1 x i64], [1 x i64]* %22, i64 0, i64 0
  store i64 %76, i64* %77, align 8
  %78 = load i32, i32* %7, align 4
  %79 = load i32*, i32** %20, align 8
  %80 = load i64, i64* %13, align 8
  %81 = call i32 @cmsNamedColorInfo(i32 %78, i32* %79, i64 %80, i8* %28, i32* null, i32* null, i32* null, i32* null)
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %71
  store i32 4, i32* %21, align 4
  br label %96

84:                                               ; preds = %71
  %85 = load i32, i32* %7, align 4
  %86 = load i32*, i32** %12, align 8
  %87 = getelementptr inbounds [1 x i64], [1 x i64]* %22, i64 0, i64 0
  %88 = call i32 @cmsDoTransform(i32 %85, i32* %86, i64* %87, i64* %75, i32 1)
  %89 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %90 = load i64, i64* %15, align 8
  %91 = call i32 @BuildColorantList(i8* %89, i64 %90, i64* %75)
  %92 = load i32, i32* %7, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds [128 x i8], [128 x i8]* %19, i64 0, i64 0
  %95 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %92, i32* %93, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0), i8* %28, i8* %94)
  store i32 0, i32* %21, align 4
  br label %96

96:                                               ; preds = %84, %83
  %97 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %97)
  %98 = load i32, i32* %21, align 4
  switch i32 %98, label %122 [
    i32 0, label %99
    i32 4, label %100
  ]

99:                                               ; preds = %96
  br label %100

100:                                              ; preds = %99, %96
  %101 = load i64, i64* %13, align 8
  %102 = add nsw i64 %101, 1
  store i64 %102, i64* %13, align 8
  br label %67

103:                                              ; preds = %67
  %104 = load i32, i32* %7, align 4
  %105 = load i32*, i32** %8, align 8
  %106 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %104, i32* %105, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %107 = load i64, i64* %11, align 8
  %108 = load i64, i64* @cmsFLAGS_NODEFAULTRESOURCEDEF, align 8
  %109 = and i64 %107, %108
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %103
  %112 = load i32, i32* %7, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %112, i32* %113, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.7, i64 0, i64 0))
  br label %115

115:                                              ; preds = %111, %103
  %116 = load i32, i32* %7, align 4
  %117 = load i32*, i32** %12, align 8
  %118 = call i32 @cmsDeleteTransform(i32 %116, i32* %117)
  store i32 1, i32* %6, align 4
  store i32 1, i32* %21, align 4
  br label %119

119:                                              ; preds = %115, %50, %44
  %120 = load i8*, i8** %17, align 8
  call void @llvm.stackrestore(i8* %120)
  %121 = load i32, i32* %6, align 4
  ret i32 %121

122:                                              ; preds = %96
  unreachable
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i64 @cmsFormatterForColorspaceOfProfile(i32, i32, i32, i32) #2

declare dso_local i64 @T_CHANNELS(i64) #2

declare dso_local i32* @cmsCreateTransform(i32, i32, i32, i32*, i64, i64, i64) #2

declare dso_local i32* @cmsGetNamedColorList(i32*) #2

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #2

declare dso_local i64 @cmsNamedColorCount(i32, i32*) #2

declare dso_local i32 @cmsNamedColorInfo(i32, i32*, i64, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @cmsDoTransform(i32, i32*, i64*, i64*, i32) #2

declare dso_local i32 @BuildColorantList(i8*, i64, i64*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
