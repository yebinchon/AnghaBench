; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mktiff8.c_SetTextTags.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/samples/extr_mktiff8.c_SetTextTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"Little cms Tiff8 CIELab\00", align 1
@.str.3 = private unnamed_addr constant [54 x i8] c"Copyright (c) Marti Maria, 2010. All rights reserved.\00", align 1
@cmsSigProfileDescriptionTag = common dso_local global i32 0, align 4
@cmsSigCopyrightTag = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @SetTextTags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetTextTags(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %6 = load i32, i32* @FALSE, align 4
  store i32 %6, i32* %5, align 4
  %7 = call i32* @cmsMLUalloc(i32 0, i32 1)
  store i32* %7, i32** %3, align 8
  %8 = call i32* @cmsMLUalloc(i32 0, i32 1)
  store i32* %8, i32** %4, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32*, i32** %4, align 8
  %13 = icmp eq i32* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %1
  br label %41

15:                                               ; preds = %11
  %16 = load i32*, i32** %3, align 8
  %17 = call i32 @cmsMLUsetASCII(i32* %16, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0))
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %15
  br label %41

20:                                               ; preds = %15
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @cmsMLUsetASCII(i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.3, i64 0, i64 0))
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %25, label %24

24:                                               ; preds = %20
  br label %41

25:                                               ; preds = %20
  %26 = load i32, i32* %2, align 4
  %27 = load i32, i32* @cmsSigProfileDescriptionTag, align 4
  %28 = load i32*, i32** %3, align 8
  %29 = call i32 @cmsWriteTag(i32 %26, i32 %27, i32* %28)
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  br label %41

32:                                               ; preds = %25
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @cmsSigCopyrightTag, align 4
  %35 = load i32*, i32** %4, align 8
  %36 = call i32 @cmsWriteTag(i32 %33, i32 %34, i32* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %32
  br label %41

39:                                               ; preds = %32
  %40 = load i32, i32* @TRUE, align 4
  store i32 %40, i32* %5, align 4
  br label %41

41:                                               ; preds = %39, %38, %31, %24, %19, %14
  %42 = load i32*, i32** %3, align 8
  %43 = icmp ne i32* %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32*, i32** %3, align 8
  %46 = call i32 @cmsMLUfree(i32* %45)
  br label %47

47:                                               ; preds = %44, %41
  %48 = load i32*, i32** %4, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = load i32*, i32** %4, align 8
  %52 = call i32 @cmsMLUfree(i32* %51)
  br label %53

53:                                               ; preds = %50, %47
  %54 = load i32, i32* %5, align 4
  ret i32 %54
}

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32*, i8*, i8*, i8*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
