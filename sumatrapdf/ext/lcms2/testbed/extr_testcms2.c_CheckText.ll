; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckText.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckText.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsNoLanguage = common dso_local global i8* null, align 8
@cmsNoCountry = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [10 x i8] c"Test test\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"1 1 1 1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"es\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"ES\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"2 2 2 2\00", align 1
@.str.7 = private unnamed_addr constant [3 x i8] c"ct\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"3 3 3 3\00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.10 = private unnamed_addr constant [10 x i8] c"444444444\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckText to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckText(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %105 [
    i32 1, label %13
    i32 2, label %42
  ]

13:                                               ; preds = %3
  %14 = call i32 (...) @DbgThread()
  %15 = call i32* @cmsMLUalloc(i32 %14, i32 0)
  store i32* %15, i32** %8, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = load i32*, i32** %8, align 8
  %18 = load i8*, i8** @cmsNoLanguage, align 8
  %19 = load i8*, i8** @cmsNoCountry, align 8
  %20 = call i32 @cmsMLUsetASCII(i32 %16, i32* %17, i8* %18, i8* %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @DbgThread()
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @cmsMLUsetASCII(i32 %21, i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %24 = call i32 (...) @DbgThread()
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @cmsMLUsetASCII(i32 %24, i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %27 = call i32 (...) @DbgThread()
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @cmsMLUsetASCII(i32 %27, i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %30 = call i32 (...) @DbgThread()
  %31 = load i32*, i32** %8, align 8
  %32 = call i32 @cmsMLUsetASCII(i32 %30, i32* %31, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %33 = call i32 (...) @DbgThread()
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* %7, align 4
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @cmsWriteTag(i32 %33, i32 %34, i32 %35, i32* %36)
  store i32 %37, i32* %10, align 4
  %38 = call i32 (...) @DbgThread()
  %39 = load i32*, i32** %8, align 8
  %40 = call i32 @cmsMLUfree(i32 %38, i32* %39)
  %41 = load i32, i32* %10, align 4
  store i32 %41, i32* %4, align 4
  br label %106

42:                                               ; preds = %3
  %43 = call i32 (...) @DbgThread()
  %44 = load i32, i32* %6, align 4
  %45 = load i32, i32* %7, align 4
  %46 = call i64 @cmsReadTag(i32 %43, i32 %44, i32 %45)
  %47 = inttoptr i64 %46 to i32*
  store i32* %47, i32** %9, align 8
  %48 = load i32*, i32** %9, align 8
  %49 = icmp eq i32* %48, null
  br i1 %49, label %50, label %51

50:                                               ; preds = %42
  store i32 0, i32* %4, align 4
  br label %106

51:                                               ; preds = %42
  %52 = call i32 (...) @DbgThread()
  %53 = load i32*, i32** %9, align 8
  %54 = load i8*, i8** @cmsNoLanguage, align 8
  %55 = load i8*, i8** @cmsNoCountry, align 8
  %56 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %57 = call i32 @cmsMLUgetASCII(i32 %52, i32* %53, i8* %54, i8* %55, i8* %56, i32 256)
  %58 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %59 = call i32 @strcmp(i8* %58, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = load i32, i32* @FALSE, align 4
  store i32 %62, i32* %4, align 4
  br label %106

63:                                               ; preds = %51
  %64 = call i32 (...) @DbgThread()
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %67 = call i32 @cmsMLUgetASCII(i32 %64, i32* %65, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %66, i32 256)
  %68 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %69 = call i32 @strcmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0))
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %73

71:                                               ; preds = %63
  %72 = load i32, i32* @FALSE, align 4
  store i32 %72, i32* %4, align 4
  br label %106

73:                                               ; preds = %63
  %74 = call i32 (...) @DbgThread()
  %75 = load i32*, i32** %9, align 8
  %76 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %77 = call i32 @cmsMLUgetASCII(i32 %74, i32* %75, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %76, i32 256)
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %79 = call i32 @strcmp(i8* %78, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i64 0, i64 0))
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %73
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %4, align 4
  br label %106

83:                                               ; preds = %73
  %84 = call i32 (...) @DbgThread()
  %85 = load i32*, i32** %9, align 8
  %86 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %87 = call i32 @cmsMLUgetASCII(i32 %84, i32* %85, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %86, i32 256)
  %88 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %89 = call i32 @strcmp(i8* %88, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %93

91:                                               ; preds = %83
  %92 = load i32, i32* @FALSE, align 4
  store i32 %92, i32* %4, align 4
  br label %106

93:                                               ; preds = %83
  %94 = call i32 (...) @DbgThread()
  %95 = load i32*, i32** %9, align 8
  %96 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %97 = call i32 @cmsMLUgetASCII(i32 %94, i32* %95, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %96, i32 256)
  %98 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %99 = call i32 @strcmp(i8* %98, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.10, i64 0, i64 0))
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %103

101:                                              ; preds = %93
  %102 = load i32, i32* @FALSE, align 4
  store i32 %102, i32* %4, align 4
  br label %106

103:                                              ; preds = %93
  %104 = load i32, i32* @TRUE, align 4
  store i32 %104, i32* %4, align 4
  br label %106

105:                                              ; preds = %3
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %103, %101, %91, %81, %71, %61, %50, %13
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @cmsMLUgetASCII(i32, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
