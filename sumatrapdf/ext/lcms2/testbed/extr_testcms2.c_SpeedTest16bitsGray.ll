; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest16bitsGray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest16bitsGray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Unable to open profiles\00", align 1
@TYPE_GRAY_16 = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @SpeedTest16bitsGray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest16bitsGray(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i64*, align 8
  %17 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  %18 = load i32*, i32** %6, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32*, i32** %7, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %4
  %24 = call i32 @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @TYPE_GRAY_16, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @TYPE_GRAY_16, align 4
  %31 = load i32, i32* %8, align 4
  %32 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %33 = call i32 @cmsCreateTransform(i32 %26, i32* %27, i32 %28, i32* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %15, align 4
  %34 = call i32 (...) @DbgThread()
  %35 = load i32*, i32** %6, align 8
  %36 = call i32 @cmsCloseProfile(i32 %34, i32* %35)
  %37 = call i32 (...) @DbgThread()
  %38 = load i32*, i32** %7, align 8
  %39 = call i32 @cmsCloseProfile(i32 %37, i32* %38)
  store i32 134217728, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to i64*
  store i64* %42, i64** %16, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %76, %25
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %79

46:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %72, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %75

50:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %68, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 256
  br i1 %53, label %54, label %71

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = load i32, i32* %10, align 4
  %57 = add nsw i32 %55, %56
  %58 = load i32, i32* %11, align 4
  %59 = add nsw i32 %57, %58
  %60 = sdiv i32 %59, 3
  %61 = sext i32 %60 to i64
  %62 = load i64*, i64** %16, align 8
  %63 = load i32, i32* %12, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i64, i64* %62, i64 %64
  store i64 %61, i64* %65, align 8
  %66 = load i32, i32* %12, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %12, align 4
  br label %68

68:                                               ; preds = %54
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %11, align 4
  br label %51

71:                                               ; preds = %51
  br label %72

72:                                               ; preds = %71
  %73 = load i32, i32* %10, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* %10, align 4
  br label %47

75:                                               ; preds = %47
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* %9, align 4
  %78 = add nsw i32 %77, 1
  store i32 %78, i32* %9, align 4
  br label %43

79:                                               ; preds = %43
  %80 = load i8*, i8** %5, align 8
  %81 = call i32 @TitlePerformance(i8* %80)
  %82 = call i64 (...) @clock()
  store i64 %82, i64* %13, align 8
  %83 = call i32 (...) @DbgThread()
  %84 = load i32, i32* %15, align 4
  %85 = load i64*, i64** %16, align 8
  %86 = load i64*, i64** %16, align 8
  %87 = call i32 @cmsDoTransform(i32 %83, i32 %84, i64* %85, i64* %86, i32 16777216)
  %88 = call i64 (...) @clock()
  %89 = load i64, i64* %13, align 8
  %90 = sub nsw i64 %88, %89
  store i64 %90, i64* %14, align 8
  %91 = load i64*, i64** %16, align 8
  %92 = call i32 @free(i64* %91)
  %93 = load i32, i32* %17, align 4
  %94 = load i64, i64* %14, align 8
  %95 = call i32 @PrintPerformance(i32 %93, i32 8, i64 %94)
  %96 = call i32 (...) @DbgThread()
  %97 = load i32, i32* %15, align 4
  %98 = call i32 @cmsDeleteTransform(i32 %96, i32 %97)
  ret void
}

declare dso_local i32 @Die(i8*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @TitlePerformance(i8*) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i64*, i64*, i32) #1

declare dso_local i32 @free(i64*) #1

declare dso_local i32 @PrintPerformance(i32, i32, i64) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
