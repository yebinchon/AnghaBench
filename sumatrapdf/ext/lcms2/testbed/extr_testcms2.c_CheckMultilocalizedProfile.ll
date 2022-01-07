; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMultilocalizedProfile.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckMultilocalizedProfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [12 x i8] c"crayons.icc\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cmsSigProfileDescriptionTag = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"GB\00", align 1
@.str.4 = private unnamed_addr constant [15 x i8] c"Crayon Colours\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.6 = private unnamed_addr constant [14 x i8] c"Crayon Colors\00", align 1
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckMultilocalizedProfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckMultilocalizedProfile() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca [256 x i8], align 16
  %5 = call i32 (...) @DbgThread()
  %6 = call i32 @cmsOpenProfileFromFile(i32 %5, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 %6, i32* %2, align 4
  %7 = call i32 (...) @DbgThread()
  %8 = load i32, i32* %2, align 4
  %9 = load i32, i32* @cmsSigProfileDescriptionTag, align 4
  %10 = call i64 @cmsReadTag(i32 %7, i32 %8, i32 %9)
  %11 = inttoptr i64 %10 to i32*
  store i32* %11, i32** %3, align 8
  %12 = call i32 (...) @DbgThread()
  %13 = load i32*, i32** %3, align 8
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %15 = call i32 @cmsMLUgetASCII(i32 %12, i32* %13, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %14, i32 256)
  %16 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %17 = call i64 @strcmp(i8* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.4, i64 0, i64 0))
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %0
  %20 = load i32, i32* @FALSE, align 4
  store i32 %20, i32* %1, align 4
  br label %36

21:                                               ; preds = %0
  %22 = call i32 (...) @DbgThread()
  %23 = load i32*, i32** %3, align 8
  %24 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %25 = call i32 @cmsMLUgetASCII(i32 %22, i32* %23, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i8* %24, i32 256)
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %4, i64 0, i64 0
  %27 = call i64 @strcmp(i8* %26, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.6, i64 0, i64 0))
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %21
  %30 = load i32, i32* @FALSE, align 4
  store i32 %30, i32* %1, align 4
  br label %36

31:                                               ; preds = %21
  %32 = call i32 (...) @DbgThread()
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @cmsCloseProfile(i32 %32, i32 %33)
  %35 = load i32, i32* @TRUE, align 4
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %31, %29, %19
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i32 @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @cmsMLUgetASCII(i32, i32*, i8*, i8*, i8*, i32) #1

declare dso_local i64 @strcmp(i8*, i8*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
