; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCRDinfo.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckCRDinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"PS\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"nm\00", align 1
@.str.2 = private unnamed_addr constant [16 x i32] [i32 116, i32 101, i32 115, i32 116, i32 32, i32 112, i32 111, i32 115, i32 116, i32 115, i32 99, i32 114, i32 105, i32 112, i32 116, i32 0], align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"#0\00", align 1
@.str.4 = private unnamed_addr constant [11 x i32] [i32 112, i32 101, i32 114, i32 99, i32 101, i32 112, i32 116, i32 117, i32 97, i32 108, i32 0], align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"#1\00", align 1
@.str.6 = private unnamed_addr constant [22 x i32] [i32 114, i32 101, i32 108, i32 97, i32 116, i32 105, i32 118, i32 101, i32 95, i32 99, i32 111, i32 108, i32 111, i32 114, i32 105, i32 109, i32 101, i32 116, i32 114, i32 105, i32 99, i32 0], align 4
@.str.7 = private unnamed_addr constant [3 x i8] c"#2\00", align 1
@.str.8 = private unnamed_addr constant [11 x i32] [i32 115, i32 97, i32 116, i32 117, i32 114, i32 97, i32 116, i32 105, i32 111, i32 110, i32 0], align 4
@.str.9 = private unnamed_addr constant [3 x i8] c"#3\00", align 1
@.str.10 = private unnamed_addr constant [22 x i32] [i32 97, i32 98, i32 115, i32 111, i32 108, i32 117, i32 116, i32 101, i32 95, i32 99, i32 111, i32 108, i32 111, i32 114, i32 105, i32 109, i32 101, i32 116, i32 114, i32 105, i32 99, i32 0], align 4
@.str.11 = private unnamed_addr constant [16 x i8] c"test postscript\00", align 1
@.str.12 = private unnamed_addr constant [11 x i8] c"perceptual\00", align 1
@.str.13 = private unnamed_addr constant [22 x i8] c"relative_colorimetric\00", align 1
@.str.14 = private unnamed_addr constant [11 x i8] c"saturation\00", align 1
@.str.15 = private unnamed_addr constant [22 x i8] c"absolute_colorimetric\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckCRDinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckCRDinfo(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca [256 x i8], align 16
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %5, align 4
  switch i32 %11, label %94 [
    i32 1, label %12
    i32 2, label %39
  ]

12:                                               ; preds = %3
  %13 = call i32 (...) @DbgThread()
  %14 = call i32* @cmsMLUalloc(i32 %13, i32 5)
  store i32* %14, i32** %8, align 8
  %15 = call i32 (...) @DbgThread()
  %16 = load i32*, i32** %8, align 8
  %17 = call i32 @cmsMLUsetWide(i32 %15, i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* bitcast ([16 x i32]* @.str.2 to i8*))
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %8, align 8
  %20 = call i32 @cmsMLUsetWide(i32 %18, i32* %19, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* bitcast ([11 x i32]* @.str.4 to i8*))
  %21 = call i32 (...) @DbgThread()
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @cmsMLUsetWide(i32 %21, i32* %22, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* bitcast ([22 x i32]* @.str.6 to i8*))
  %24 = call i32 (...) @DbgThread()
  %25 = load i32*, i32** %8, align 8
  %26 = call i32 @cmsMLUsetWide(i32 %24, i32* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* bitcast ([11 x i32]* @.str.8 to i8*))
  %27 = call i32 (...) @DbgThread()
  %28 = load i32*, i32** %8, align 8
  %29 = call i32 @cmsMLUsetWide(i32 %27, i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* bitcast ([22 x i32]* @.str.10 to i8*))
  %30 = call i32 (...) @DbgThread()
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* %7, align 4
  %33 = load i32*, i32** %8, align 8
  %34 = call i32 @cmsWriteTag(i32 %30, i32 %31, i32 %32, i32* %33)
  store i32 %34, i32* %10, align 4
  %35 = call i32 (...) @DbgThread()
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @cmsMLUfree(i32 %35, i32* %36)
  %38 = load i32, i32* %10, align 4
  store i32 %38, i32* %4, align 4
  br label %95

39:                                               ; preds = %3
  %40 = call i32 (...) @DbgThread()
  %41 = load i32, i32* %6, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i64 @cmsReadTag(i32 %40, i32 %41, i32 %42)
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %8, align 8
  %45 = load i32*, i32** %8, align 8
  %46 = icmp eq i32* %45, null
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  store i32 0, i32* %4, align 4
  br label %95

48:                                               ; preds = %39
  %49 = call i32 (...) @DbgThread()
  %50 = load i32*, i32** %8, align 8
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %52 = call i32 @cmsMLUgetASCII(i32 %49, i32* %50, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %51, i32 256)
  %53 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %54 = call i32 @strcmp(i8* %53, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.11, i64 0, i64 0))
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  store i32 0, i32* %4, align 4
  br label %95

57:                                               ; preds = %48
  %58 = call i32 (...) @DbgThread()
  %59 = load i32*, i32** %8, align 8
  %60 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %61 = call i32 @cmsMLUgetASCII(i32 %58, i32* %59, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %60, i32 256)
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %63 = call i32 @strcmp(i8* %62, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.12, i64 0, i64 0))
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %66

65:                                               ; preds = %57
  store i32 0, i32* %4, align 4
  br label %95

66:                                               ; preds = %57
  %67 = call i32 (...) @DbgThread()
  %68 = load i32*, i32** %8, align 8
  %69 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %70 = call i32 @cmsMLUgetASCII(i32 %67, i32* %68, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %69, i32 256)
  %71 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %72 = call i32 @strcmp(i8* %71, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.13, i64 0, i64 0))
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %66
  store i32 0, i32* %4, align 4
  br label %95

75:                                               ; preds = %66
  %76 = call i32 (...) @DbgThread()
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %79 = call i32 @cmsMLUgetASCII(i32 %76, i32* %77, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.7, i64 0, i64 0), i8* %78, i32 256)
  %80 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %81 = call i32 @strcmp(i8* %80, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.14, i64 0, i64 0))
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %75
  store i32 0, i32* %4, align 4
  br label %95

84:                                               ; preds = %75
  %85 = call i32 (...) @DbgThread()
  %86 = load i32*, i32** %8, align 8
  %87 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %88 = call i32 @cmsMLUgetASCII(i32 %85, i32* %86, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.9, i64 0, i64 0), i8* %87, i32 256)
  %89 = getelementptr inbounds [256 x i8], [256 x i8]* %9, i64 0, i64 0
  %90 = call i32 @strcmp(i8* %89, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.15, i64 0, i64 0))
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %84
  store i32 0, i32* %4, align 4
  br label %95

93:                                               ; preds = %84
  store i32 1, i32* %4, align 4
  br label %95

94:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %95

95:                                               ; preds = %94, %93, %92, %83, %74, %65, %56, %47, %12
  %96 = load i32, i32* %4, align 4
  ret i32 %96
}

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsMLUsetWide(i32, i32*, i8*, i8*, i8*) #1

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
