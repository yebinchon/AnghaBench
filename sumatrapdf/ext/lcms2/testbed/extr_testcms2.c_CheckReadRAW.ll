; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReadRAW.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckReadRAW.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [20 x i8] c"RAW read on on-disk\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"test1.icc\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@cmsSigGamutTag = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"RAW read on in-memory created profiles\00", align 1
@cmsSigGreenColorantTag = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @CheckReadRAW to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckReadRAW() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca [4 x i8], align 1
  %5 = alloca i32*, align 8
  %6 = call i32 @SubTest(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %7 = call i32 (...) @DbgThread()
  %8 = call i32* @cmsOpenProfileFromFile(i32 %7, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32* %8, i32** %5, align 8
  %9 = load i32*, i32** %5, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %0
  store i32 0, i32* %1, align 4
  br label %56

12:                                               ; preds = %0
  %13 = call i32 (...) @DbgThread()
  %14 = load i32*, i32** %5, align 8
  %15 = load i32, i32* @cmsSigGamutTag, align 4
  %16 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %17 = call i32 @cmsReadRawTag(i32 %13, i32* %14, i32 %15, i8* %16, i32 4)
  store i32 %17, i32* %2, align 4
  %18 = call i32 (...) @DbgThread()
  %19 = load i32*, i32** %5, align 8
  %20 = load i32, i32* @cmsSigGamutTag, align 4
  %21 = call i32 @cmsReadRawTag(i32 %18, i32* %19, i32 %20, i8* null, i32 0)
  store i32 %21, i32* %3, align 4
  %22 = call i32 (...) @DbgThread()
  %23 = load i32*, i32** %5, align 8
  %24 = call i32 @cmsCloseProfile(i32 %22, i32* %23)
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 4
  br i1 %26, label %27, label %28

27:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %56

28:                                               ; preds = %12
  %29 = load i32, i32* %3, align 4
  %30 = icmp ne i32 %29, 37009
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 0, i32* %1, align 4
  br label %56

32:                                               ; preds = %28
  %33 = call i32 @SubTest(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  %34 = call i32 (...) @DbgThread()
  %35 = call i32* @cmsCreate_sRGBProfile(i32 %34)
  store i32* %35, i32** %5, align 8
  %36 = call i32 (...) @DbgThread()
  %37 = load i32*, i32** %5, align 8
  %38 = load i32, i32* @cmsSigGreenColorantTag, align 4
  %39 = getelementptr inbounds [4 x i8], [4 x i8]* %4, i64 0, i64 0
  %40 = call i32 @cmsReadRawTag(i32 %36, i32* %37, i32 %38, i8* %39, i32 4)
  store i32 %40, i32* %2, align 4
  %41 = call i32 (...) @DbgThread()
  %42 = load i32*, i32** %5, align 8
  %43 = load i32, i32* @cmsSigGreenColorantTag, align 4
  %44 = call i32 @cmsReadRawTag(i32 %41, i32* %42, i32 %43, i8* null, i32 0)
  store i32 %44, i32* %3, align 4
  %45 = call i32 (...) @DbgThread()
  %46 = load i32*, i32** %5, align 8
  %47 = call i32 @cmsCloseProfile(i32 %45, i32* %46)
  %48 = load i32, i32* %2, align 4
  %49 = icmp ne i32 %48, 4
  br i1 %49, label %50, label %51

50:                                               ; preds = %32
  store i32 0, i32* %1, align 4
  br label %56

51:                                               ; preds = %32
  %52 = load i32, i32* %3, align 4
  %53 = icmp ne i32 %52, 20
  br i1 %53, label %54, label %55

54:                                               ; preds = %51
  store i32 0, i32* %1, align 4
  br label %56

55:                                               ; preds = %51
  store i32 1, i32* %1, align 4
  br label %56

56:                                               ; preds = %55, %54, %50, %31, %27, %11
  %57 = load i32, i32* %1, align 4
  ret i32 %57
}

declare dso_local i32 @SubTest(i8*) #1

declare dso_local i32* @cmsOpenProfileFromFile(i32, i8*, i8*) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsReadRawTag(i32, i32*, i32, i8*, i32) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i32* @cmsCreate_sRGBProfile(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
