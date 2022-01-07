; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckTextSingle.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckTextSingle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"Test test\00", align 1
@FALSE = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckTextSingle to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckTextSingle(i32 %0, i32 %1, i32 %2) #0 {
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
  switch i32 %12, label %53 [
    i32 1, label %13
    i32 2, label %30
  ]

13:                                               ; preds = %3
  %14 = call i32 (...) @DbgThread()
  %15 = call i32* @cmsMLUalloc(i32 %14, i32 0)
  store i32* %15, i32** %8, align 8
  %16 = call i32 (...) @DbgThread()
  %17 = load i32*, i32** %8, align 8
  %18 = load i32, i32* @cmsNoLanguage, align 4
  %19 = load i32, i32* @cmsNoCountry, align 4
  %20 = call i32 @cmsMLUsetASCII(i32 %16, i32* %17, i32 %18, i32 %19, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %21 = call i32 (...) @DbgThread()
  %22 = load i32, i32* %6, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @cmsWriteTag(i32 %21, i32 %22, i32 %23, i32* %24)
  store i32 %25, i32* %10, align 4
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %8, align 8
  %28 = call i32 @cmsMLUfree(i32 %26, i32* %27)
  %29 = load i32, i32* %10, align 4
  store i32 %29, i32* %4, align 4
  br label %54

30:                                               ; preds = %3
  %31 = call i32 (...) @DbgThread()
  %32 = load i32, i32* %6, align 4
  %33 = load i32, i32* %7, align 4
  %34 = call i64 @cmsReadTag(i32 %31, i32 %32, i32 %33)
  %35 = inttoptr i64 %34 to i32*
  store i32* %35, i32** %9, align 8
  %36 = load i32*, i32** %9, align 8
  %37 = icmp eq i32* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %54

39:                                               ; preds = %30
  %40 = call i32 (...) @DbgThread()
  %41 = load i32*, i32** %9, align 8
  %42 = load i32, i32* @cmsNoLanguage, align 4
  %43 = load i32, i32* @cmsNoCountry, align 4
  %44 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %45 = call i32 @cmsMLUgetASCII(i32 %40, i32* %41, i32 %42, i32 %43, i8* %44, i32 256)
  %46 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %47 = call i32 @strcmp(i8* %46, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %39
  %50 = load i32, i32* @FALSE, align 4
  store i32 %50, i32* %4, align 4
  br label %54

51:                                               ; preds = %39
  %52 = load i32, i32* @TRUE, align 4
  store i32 %52, i32* %4, align 4
  br label %54

53:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %54

54:                                               ; preds = %53, %51, %49, %38, %13
  %55 = load i32, i32* %4, align 4
  ret i32 %55
}

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32*, i32, i32, i8*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @cmsMLUgetASCII(i32, i32*, i32, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
