; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest32bitsGray.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest32bitsGray.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [24 x i8] c"Unable to open profiles\00", align 1
@TYPE_GRAY_FLT = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @SpeedTest32bitsGray to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest32bitsGray(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
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
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 %3, i32* %8, align 4
  store i32 4, i32* %18, align 4
  %20 = load i32*, i32** %6, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %4
  %23 = load i32*, i32** %7, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %25, label %27

25:                                               ; preds = %22, %4
  %26 = call i32 @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %22
  %28 = call i32 (...) @DbgThread()
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @TYPE_GRAY_FLT, align 4
  %33 = load i32, i32* %8, align 4
  %34 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %35 = call i32 @cmsCreateTransform(i32 %28, i32* %29, i32 %30, i32* %31, i32 %32, i32 %33, i32 %34)
  store i32 %35, i32* %15, align 4
  %36 = call i32 (...) @DbgThread()
  %37 = load i32*, i32** %6, align 8
  %38 = call i32 @cmsCloseProfile(i32 %36, i32* %37)
  %39 = call i32 (...) @DbgThread()
  %40 = load i32*, i32** %7, align 8
  %41 = call i32 @cmsCloseProfile(i32 %39, i32* %40)
  %42 = load i32, i32* %18, align 4
  %43 = sdiv i32 256, %42
  %44 = mul nsw i32 %43, 256
  %45 = load i32, i32* %18, align 4
  %46 = sdiv i32 %44, %45
  %47 = mul nsw i32 %46, 256
  %48 = load i32, i32* %18, align 4
  %49 = sdiv i32 %47, %48
  store i32 %49, i32* %19, align 4
  %50 = load i32, i32* %19, align 4
  %51 = sext i32 %50 to i64
  %52 = mul i64 %51, 4
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i64 @malloc(i32 %54)
  %56 = inttoptr i64 %55 to i32*
  store i32* %56, i32** %16, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %93, %27
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %97

60:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %88, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 256
  br i1 %63, label %64, label %92

64:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %83, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 256
  br i1 %67, label %68, label %87

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = load i32, i32* %10, align 4
  %71 = add nsw i32 %69, %70
  %72 = load i32, i32* %11, align 4
  %73 = add nsw i32 %71, %72
  %74 = sitofp i32 %73 to float
  %75 = fdiv float %74, 7.680000e+02
  %76 = fptosi float %75 to i32
  %77 = load i32*, i32** %16, align 8
  %78 = load i32, i32* %12, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds i32, i32* %77, i64 %79
  store i32 %76, i32* %80, align 4
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %12, align 4
  br label %83

83:                                               ; preds = %68
  %84 = load i32, i32* %18, align 4
  %85 = load i32, i32* %11, align 4
  %86 = add nsw i32 %85, %84
  store i32 %86, i32* %11, align 4
  br label %65

87:                                               ; preds = %65
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %18, align 4
  %90 = load i32, i32* %10, align 4
  %91 = add nsw i32 %90, %89
  store i32 %91, i32* %10, align 4
  br label %61

92:                                               ; preds = %61
  br label %93

93:                                               ; preds = %92
  %94 = load i32, i32* %18, align 4
  %95 = load i32, i32* %9, align 4
  %96 = add nsw i32 %95, %94
  store i32 %96, i32* %9, align 4
  br label %57

97:                                               ; preds = %57
  %98 = load i8*, i8** %5, align 8
  %99 = call i32 @TitlePerformance(i8* %98)
  %100 = call i64 (...) @clock()
  store i64 %100, i64* %13, align 8
  %101 = call i32 (...) @DbgThread()
  %102 = load i32, i32* %15, align 4
  %103 = load i32*, i32** %16, align 8
  %104 = load i32*, i32** %16, align 8
  %105 = load i32, i32* %19, align 4
  %106 = call i32 @cmsDoTransform(i32 %101, i32 %102, i32* %103, i32* %104, i32 %105)
  %107 = call i64 (...) @clock()
  %108 = load i64, i64* %13, align 8
  %109 = sub nsw i64 %107, %108
  store i64 %109, i64* %14, align 8
  %110 = load i32*, i32** %16, align 8
  %111 = call i32 @free(i32* %110)
  %112 = load i32, i32* %17, align 4
  %113 = load i64, i64* %14, align 8
  %114 = call i32 @PrintPerformance(i32 %112, i32 4, i64 %113)
  %115 = call i32 (...) @DbgThread()
  %116 = load i32, i32* %15, align 4
  %117 = call i32 @cmsDeleteTransform(i32 %115, i32 %116)
  ret void
}

declare dso_local i32 @Die(i8*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @TitlePerformance(i8*) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @cmsDoTransform(i32, i32, i32*, i32*, i32) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32 @PrintPerformance(i32, i32, i64) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
