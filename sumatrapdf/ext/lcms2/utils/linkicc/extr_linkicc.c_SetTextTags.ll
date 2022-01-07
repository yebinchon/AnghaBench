; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_SetTextTags.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/utils/linkicc/extr_linkicc.c_SetTextTags.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FALSE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@Description = common dso_local global i32 0, align 4
@Copyright = common dso_local global i32 0, align 4
@cmsSigProfileDescriptionTag = common dso_local global i32 0, align 4
@cmsSigCopyrightTag = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @SetTextTags to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @SetTextTags(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  store i32 %1, i32* %4, align 4
  %8 = load i32, i32* @FALSE, align 4
  store i32 %8, i32* %7, align 4
  %9 = load i32, i32* %3, align 4
  %10 = call i32* @cmsMLUalloc(i32 %9, i32 1)
  store i32* %10, i32** %5, align 8
  %11 = load i32, i32* %3, align 4
  %12 = call i32* @cmsMLUalloc(i32 %11, i32 1)
  store i32* %12, i32** %6, align 8
  %13 = load i32*, i32** %5, align 8
  %14 = icmp eq i32* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32*, i32** %6, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %2
  br label %51

19:                                               ; preds = %15
  %20 = load i32, i32* %3, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @Description, align 4
  %23 = call i32 @cmsMLUsetASCII(i32 %20, i32* %21, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %19
  br label %51

26:                                               ; preds = %19
  %27 = load i32, i32* %3, align 4
  %28 = load i32*, i32** %6, align 8
  %29 = load i32, i32* @Copyright, align 4
  %30 = call i32 @cmsMLUsetASCII(i32 %27, i32* %28, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %26
  br label %51

33:                                               ; preds = %26
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* %4, align 4
  %36 = load i32, i32* @cmsSigProfileDescriptionTag, align 4
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @cmsWriteTag(i32 %34, i32 %35, i32 %36, i32* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %51

41:                                               ; preds = %33
  %42 = load i32, i32* %3, align 4
  %43 = load i32, i32* %4, align 4
  %44 = load i32, i32* @cmsSigCopyrightTag, align 4
  %45 = load i32*, i32** %6, align 8
  %46 = call i32 @cmsWriteTag(i32 %42, i32 %43, i32 %44, i32* %45)
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  br label %51

49:                                               ; preds = %41
  %50 = load i32, i32* @TRUE, align 4
  store i32 %50, i32* %7, align 4
  br label %51

51:                                               ; preds = %49, %48, %40, %32, %25, %18
  %52 = load i32*, i32** %5, align 8
  %53 = icmp ne i32* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  %55 = load i32, i32* %3, align 4
  %56 = load i32*, i32** %5, align 8
  %57 = call i32 @cmsMLUfree(i32 %55, i32* %56)
  br label %58

58:                                               ; preds = %54, %51
  %59 = load i32*, i32** %6, align 8
  %60 = icmp ne i32* %59, null
  br i1 %60, label %61, label %65

61:                                               ; preds = %58
  %62 = load i32, i32* %3, align 4
  %63 = load i32*, i32** %6, align 8
  %64 = call i32 @cmsMLUfree(i32 %62, i32* %63)
  br label %65

65:                                               ; preds = %61, %58
  %66 = load i32, i32* %7, align 4
  ret i32 %66
}

declare dso_local i32* @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32*, i8*, i8*, i32) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
