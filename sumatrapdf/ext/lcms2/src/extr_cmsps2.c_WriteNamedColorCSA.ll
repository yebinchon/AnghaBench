; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteNamedColorCSA.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteNamedColorCSA.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@cmsMAX_PATH = common dso_local global i32 0, align 4
@TYPE_NAMED_COLOR_INDEX = common dso_local global i32 0, align 4
@TYPE_Lab_DBL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"<<\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"(colorlistcomment) (%s)\0A\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"Named color CSA\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"(Prefix) [ (Pantone ) (PANTONE ) ]\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"(Suffix) [ ( CV) ( CVC) ( C) ]\0A\00", align 1
@.str.5 = private unnamed_addr constant [27 x i8] c"  (%s) [ %.3f %.3f %.3f ]\0A\00", align 1
@.str.6 = private unnamed_addr constant [4 x i8] c">>\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32, i64)* @WriteNamedColorCSA to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @WriteNamedColorCSA(i32 %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca [1 x i64], align 8
  %19 = alloca %struct.TYPE_3__, align 4
  store i32 %0, i32* %6, align 4
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %20 = load i32, i32* @cmsMAX_PATH, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %14, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %15, align 8
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @cmsCreateLab4Profile(i32 %24, i32* null)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %6, align 4
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @TYPE_NAMED_COLOR_INDEX, align 4
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @TYPE_Lab_DBL, align 4
  %31 = load i64, i64* %9, align 8
  %32 = call i32* @cmsCreateTransform(i32 %26, i32 %27, i32 %28, i32 %29, i32 %30, i64 %31, i32 0)
  store i32* %32, i32** %10, align 8
  %33 = load i32*, i32** %10, align 8
  %34 = icmp eq i32* %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %98

36:                                               ; preds = %4
  %37 = load i32*, i32** %10, align 8
  %38 = call i32* @cmsGetNamedColorList(i32* %37)
  store i32* %38, i32** %16, align 8
  %39 = load i32*, i32** %16, align 8
  %40 = icmp eq i32* %39, null
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %98

42:                                               ; preds = %36
  %43 = load i32, i32* %6, align 4
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %43, i32* %44, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %46 = load i32, i32* %6, align 4
  %47 = load i32*, i32** %7, align 8
  %48 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %46, i32* %47, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  %49 = load i32, i32* %6, align 4
  %50 = load i32*, i32** %7, align 8
  %51 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %49, i32* %50, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0))
  %52 = load i32, i32* %6, align 4
  %53 = load i32*, i32** %7, align 8
  %54 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %52, i32* %53, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0))
  %55 = load i32, i32* %6, align 4
  %56 = load i32*, i32** %16, align 8
  %57 = call i64 @cmsNamedColorCount(i32 %55, i32* %56)
  store i64 %57, i64* %13, align 8
  store i64 0, i64* %12, align 8
  br label %58

58:                                               ; preds = %85, %42
  %59 = load i64, i64* %12, align 8
  %60 = load i64, i64* %13, align 8
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %62, label %88

62:                                               ; preds = %58
  %63 = load i64, i64* %12, align 8
  %64 = getelementptr inbounds [1 x i64], [1 x i64]* %18, i64 0, i64 0
  store i64 %63, i64* %64, align 8
  %65 = load i32, i32* %6, align 4
  %66 = load i32*, i32** %16, align 8
  %67 = load i64, i64* %12, align 8
  %68 = call i32 @cmsNamedColorInfo(i32 %65, i32* %66, i64 %67, i8* %23, i32* null, i32* null, i32* null, i32* null)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %62
  br label %85

71:                                               ; preds = %62
  %72 = load i32, i32* %6, align 4
  %73 = load i32*, i32** %10, align 8
  %74 = getelementptr inbounds [1 x i64], [1 x i64]* %18, i64 0, i64 0
  %75 = call i32 @cmsDoTransform(i32 %72, i32* %73, i64* %74, %struct.TYPE_3__* %19, i32 1)
  %76 = load i32, i32* %6, align 4
  %77 = load i32*, i32** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 2
  %79 = load i32, i32* %78, align 4
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %76, i32* %77, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i8* %23, i32 %79, i32 %81, i32 %83)
  br label %85

85:                                               ; preds = %71, %70
  %86 = load i64, i64* %12, align 8
  %87 = add nsw i64 %86, 1
  store i64 %87, i64* %12, align 8
  br label %58

88:                                               ; preds = %58
  %89 = load i32, i32* %6, align 4
  %90 = load i32*, i32** %7, align 8
  %91 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %89, i32* %90, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.6, i64 0, i64 0))
  %92 = load i32, i32* %6, align 4
  %93 = load i32*, i32** %10, align 8
  %94 = call i32 @cmsDeleteTransform(i32 %92, i32* %93)
  %95 = load i32, i32* %6, align 4
  %96 = load i32, i32* %11, align 4
  %97 = call i32 @cmsCloseProfile(i32 %95, i32 %96)
  store i32 1, i32* %5, align 4
  store i32 1, i32* %17, align 4
  br label %98

98:                                               ; preds = %88, %41, %35
  %99 = load i8*, i8** %14, align 8
  call void @llvm.stackrestore(i8* %99)
  %100 = load i32, i32* %5, align 4
  ret i32 %100
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @cmsCreateLab4Profile(i32, i32*) #2

declare dso_local i32* @cmsCreateTransform(i32, i32, i32, i32, i32, i64, i32) #2

declare dso_local i32* @cmsGetNamedColorList(i32*) #2

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #2

declare dso_local i64 @cmsNamedColorCount(i32, i32*) #2

declare dso_local i32 @cmsNamedColorInfo(i32, i32*, i64, i8*, i32*, i32*, i32*, i32*) #2

declare dso_local i32 @cmsDoTransform(i32, i32*, i64*, %struct.TYPE_3__*, i32) #2

declare dso_local i32 @cmsDeleteTransform(i32, i32*) #2

declare dso_local i32 @cmsCloseProfile(i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
