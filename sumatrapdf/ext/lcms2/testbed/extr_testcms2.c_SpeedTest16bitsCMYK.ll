; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest16bitsCMYK.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest16bitsCMYK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Unable to open profiles\00", align 1
@TYPE_CMYK_16 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @SpeedTest16bitsCMYK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest16bitsCMYK(i8* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_5__*, align 8
  %15 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = load i32*, i32** %6, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %18, %3
  %22 = call i32 @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %21, %18
  %24 = call i32 (...) @DbgThread()
  %25 = load i32*, i32** %5, align 8
  %26 = load i32, i32* @TYPE_CMYK_16, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @TYPE_CMYK_16, align 4
  %29 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %30 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %31 = call i32 @cmsCreateTransform(i32 %24, i32* %25, i32 %26, i32* %27, i32 %28, i32 %29, i32 %30)
  store i32 %31, i32* %13, align 4
  %32 = call i32 (...) @DbgThread()
  %33 = load i32*, i32** %5, align 8
  %34 = call i32 @cmsCloseProfile(i32 %32, i32* %33)
  %35 = call i32 (...) @DbgThread()
  %36 = load i32*, i32** %6, align 8
  %37 = call i32 @cmsCloseProfile(i32 %35, i32* %36)
  store i32 536870912, i32* %15, align 4
  %38 = load i32, i32* %15, align 4
  %39 = call i64 @malloc(i32 %38)
  %40 = inttoptr i64 %39 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %40, %struct.TYPE_5__** %14, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %41

41:                                               ; preds = %101, %23
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %104

44:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %97, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 256
  br i1 %47, label %48, label %100

48:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %93, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %96

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = shl i32 %53, 8
  %55 = load i32, i32* %7, align 4
  %56 = or i32 %54, %55
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i8*
  %59 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i64 %61
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 3
  store i8* %58, i8** %63, align 8
  %64 = load i32, i32* %8, align 4
  %65 = shl i32 %64, 8
  %66 = load i32, i32* %8, align 4
  %67 = or i32 %65, %66
  %68 = sext i32 %67 to i64
  %69 = inttoptr i64 %68 to i8*
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %71 = load i32, i32* %10, align 4
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i64 %72
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 2
  store i8* %69, i8** %74, align 8
  %75 = load i32, i32* %9, align 4
  %76 = shl i32 %75, 8
  %77 = load i32, i32* %9, align 4
  %78 = or i32 %76, %77
  %79 = sext i32 %78 to i64
  %80 = inttoptr i64 %79 to i8*
  %81 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %81, i64 %83
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %84, i32 0, i32 1
  store i8* %80, i8** %85, align 8
  %86 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %87 = load i32, i32* %10, align 4
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %86, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 0
  store i64 0, i64* %90, align 8
  %91 = load i32, i32* %10, align 4
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %10, align 4
  br label %93

93:                                               ; preds = %52
  %94 = load i32, i32* %9, align 4
  %95 = add nsw i32 %94, 1
  store i32 %95, i32* %9, align 4
  br label %49

96:                                               ; preds = %49
  br label %97

97:                                               ; preds = %96
  %98 = load i32, i32* %8, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %8, align 4
  br label %45

100:                                              ; preds = %45
  br label %101

101:                                              ; preds = %100
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %7, align 4
  br label %41

104:                                              ; preds = %41
  %105 = load i8*, i8** %4, align 8
  %106 = call i32 @TitlePerformance(i8* %105)
  %107 = call i64 (...) @clock()
  store i64 %107, i64* %11, align 8
  %108 = call i32 (...) @DbgThread()
  %109 = load i32, i32* %13, align 4
  %110 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %111 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %112 = call i32 @cmsDoTransform(i32 %108, i32 %109, %struct.TYPE_5__* %110, %struct.TYPE_5__* %111, i32 16777216)
  %113 = call i64 (...) @clock()
  %114 = load i64, i64* %11, align 8
  %115 = sub nsw i64 %113, %114
  store i64 %115, i64* %12, align 8
  %116 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %117 = call i32 @free(%struct.TYPE_5__* %116)
  %118 = load i32, i32* %15, align 4
  %119 = load i64, i64* %12, align 8
  %120 = call i32 @PrintPerformance(i32 %118, i32 32, i64 %119)
  %121 = call i32 (...) @DbgThread()
  %122 = load i32, i32* %13, align 4
  %123 = call i32 @cmsDeleteTransform(i32 %121, i32 %122)
  ret void
}

declare dso_local i32 @Die(i8*) #1

declare dso_local i32 @cmsCreateTransform(i32, i32*, i32, i32*, i32, i32, i32) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsCloseProfile(i32, i32*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @TitlePerformance(i8*) #1

declare dso_local i64 @clock(...) #1

declare dso_local i32 @cmsDoTransform(i32, i32, %struct.TYPE_5__*, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @free(%struct.TYPE_5__*) #1

declare dso_local i32 @PrintPerformance(i32, i32, i64) #1

declare dso_local i32 @cmsDeleteTransform(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
