; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckRemoveTag.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckRemoveTag.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [3 x i8] c"en\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"US\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"bar\00", align 1
@cmsSigDeviceMfgDescTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckRemoveTag to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckRemoveTag() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @cmsCreate_sRGBProfile(i32* null)
  store i32 %5, i32* %2, align 4
  %6 = call i32* @cmsMLUalloc(i32* null, i32 1)
  store i32* %6, i32** %3, align 8
  %7 = call i32 (...) @DbgThread()
  %8 = load i32*, i32** %3, align 8
  %9 = call i32 @cmsMLUsetASCII(i32 %7, i32* %8, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %37

13:                                               ; preds = %0
  %14 = call i32 (...) @DbgThread()
  %15 = load i32, i32* %2, align 4
  %16 = load i32, i32* @cmsSigDeviceMfgDescTag, align 4
  %17 = load i32*, i32** %3, align 8
  %18 = call i32 @cmsWriteTag(i32 %14, i32 %15, i32 %16, i32* %17)
  store i32 %18, i32* %4, align 4
  %19 = load i32, i32* %4, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %13
  store i32 0, i32* %1, align 4
  br label %37

22:                                               ; preds = %13
  %23 = call i32 (...) @DbgThread()
  %24 = load i32*, i32** %3, align 8
  %25 = call i32 @cmsMLUfree(i32 %23, i32* %24)
  %26 = call i32 (...) @DbgThread()
  %27 = load i32, i32* %2, align 4
  %28 = load i32, i32* @cmsSigDeviceMfgDescTag, align 4
  %29 = call i32 @cmsWriteTag(i32 %26, i32 %27, i32 %28, i32* null)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %33, label %32

32:                                               ; preds = %22
  store i32 0, i32* %1, align 4
  br label %37

33:                                               ; preds = %22
  %34 = call i32 (...) @DbgThread()
  %35 = load i32, i32* %2, align 4
  %36 = call i32 @cmsCloseProfile(i32 %34, i32 %35)
  store i32 1, i32* %1, align 4
  br label %37

37:                                               ; preds = %33, %32, %21, %12
  %38 = load i32, i32* %1, align 4
  ret i32 %38
}

declare dso_local i32 @cmsCreate_sRGBProfile(i32*) #1

declare dso_local i32* @cmsMLUalloc(i32*, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32*, i8*, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, i32*) #1

declare dso_local i32 @cmsMLUfree(i32, i32*) #1

declare dso_local i32 @cmsCloseProfile(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
