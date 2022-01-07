; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsvirt.c_SetTextTags.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsvirt.c_SetTextTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.2 = private unnamed_addr constant [25 x i32] [i32 78, i32 111, i32 32, i32 99, i32 111, i32 112, i32 121, i32 114, i32 105, i32 103, i32 104, i32 116, i32 44, i32 32, i32 117, i32 115, i32 101, i32 32, i32 102, i32 114, i32 101, i32 101, i32 108, i32 121, i32 0], align 4
@cmsSigProfileDescriptionTag = common dso_local global i32 0, align 4
@cmsSigCopyrightTag = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*)* @SetTextTags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetTextTags(i32 %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %10 = load i32, i32* @FALSE, align 4
  store i32 %10, i32* %9, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i32* @cmsMLUalloc(i32 %11, i32 1)
  store i32* %12, i32** %7, align 8
  %13 = load i32, i32* %4, align 4
  %14 = call i32* @cmsMLUalloc(i32 %13, i32 1)
  store i32* %14, i32** %8, align 8
  %15 = load i32*, i32** %7, align 8
  %16 = icmp eq i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %3
  %18 = load i32*, i32** %8, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %21

20:                                               ; preds = %17, %3
  br label %52

21:                                               ; preds = %17
  %22 = load i32, i32* %4, align 4
  %23 = load i32*, i32** %7, align 8
  %24 = load i8*, i8** %6, align 8
  %25 = call i32 @cmsMLUsetWide(i32 %22, i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %21
  br label %52

28:                                               ; preds = %21
  %29 = load i32, i32* %4, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @cmsMLUsetWide(i32 %29, i32* %30, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* bitcast ([25 x i32]* @.str.2 to i8*))
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %28
  br label %52

34:                                               ; preds = %28
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @cmsSigProfileDescriptionTag, align 4
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @cmsWriteTag(i32 %35, i32 %36, i32 %37, i32* %38)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %34
  br label %52

42:                                               ; preds = %34
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @cmsSigCopyrightTag, align 4
  %46 = load i32*, i32** %8, align 8
  %47 = call i32 @cmsWriteTag(i32 %43, i32 %44, i32 %45, i32* %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %42
  br label %52

50:                                               ; preds = %42
  %51 = load i32, i32* @TRUE, align 4
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %50, %49, %41, %33, %27, %20
  %53 = load i32*, i32** %7, align 8
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %59

55:                                               ; preds = %52
  %56 = load i32, i32* %4, align 4
  %57 = load i32*, i32** %7, align 8
  %58 = call i32 @cmsMLUfree(i32 %56, i32* %57)
  br label %59

59:                                               ; preds = %55, %52
  %60 = load i32*, i32** %8, align 8
  %61 = icmp ne i32* %60, null
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, i32* %4, align 4
  %64 = load i32*, i32** %8, align 8
  %65 = call i32 @cmsMLUfree(i32 %63, i32* %64)
  br label %66

66:                                               ; preds = %62, %59
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetWide(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
