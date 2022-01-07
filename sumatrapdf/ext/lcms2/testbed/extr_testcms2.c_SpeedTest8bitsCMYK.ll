; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest8bitsCMYK.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest8bitsCMYK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Unable to open profiles\00", align 1
@TYPE_CMYK_8 = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @SpeedTest8bitsCMYK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest8bitsCMYK(i8* %0, i32* %1, i32* %2) #0 {
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
  %26 = load i32, i32* @TYPE_CMYK_8, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = load i32, i32* @TYPE_CMYK_8, align 4
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

41:                                               ; preds = %92, %23
  %42 = load i32, i32* %7, align 4
  %43 = icmp slt i32 %42, 256
  br i1 %43, label %44, label %95

44:                                               ; preds = %41
  store i32 0, i32* %8, align 4
  br label %45

45:                                               ; preds = %88, %44
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 256
  br i1 %47, label %48, label %91

48:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %49

49:                                               ; preds = %84, %48
  %50 = load i32, i32* %9, align 4
  %51 = icmp slt i32 %50, 256
  br i1 %51, label %52, label %87

52:                                               ; preds = %49
  %53 = load i32, i32* %7, align 4
  %54 = sext i32 %53 to i64
  %55 = inttoptr i64 %54 to i8*
  %56 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %57 = load i32, i32* %10, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %56, i64 %58
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 3
  store i8* %55, i8** %60, align 8
  %61 = load i32, i32* %8, align 4
  %62 = sext i32 %61 to i64
  %63 = inttoptr i64 %62 to i8*
  %64 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %65 = load i32, i32* %10, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %64, i64 %66
  %68 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %67, i32 0, i32 2
  store i8* %63, i8** %68, align 8
  %69 = load i32, i32* %9, align 4
  %70 = sext i32 %69 to i64
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i32 0, i32 1
  store i8* %71, i8** %76, align 8
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %78 = load i32, i32* %10, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i64 %79
  %81 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i32 0, i32 0
  store i8* null, i8** %81, align 8
  %82 = load i32, i32* %10, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %10, align 4
  br label %84

84:                                               ; preds = %52
  %85 = load i32, i32* %9, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %9, align 4
  br label %49

87:                                               ; preds = %49
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %8, align 4
  %90 = add nsw i32 %89, 1
  store i32 %90, i32* %8, align 4
  br label %45

91:                                               ; preds = %45
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %7, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %7, align 4
  br label %41

95:                                               ; preds = %41
  %96 = load i8*, i8** %4, align 8
  %97 = call i32 @TitlePerformance(i8* %96)
  %98 = call i64 (...) @clock()
  store i64 %98, i64* %11, align 8
  %99 = call i32 (...) @DbgThread()
  %100 = load i32, i32* %13, align 4
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %103 = call i32 @cmsDoTransform(i32 %99, i32 %100, %struct.TYPE_5__* %101, %struct.TYPE_5__* %102, i32 16777216)
  %104 = call i64 (...) @clock()
  %105 = load i64, i64* %11, align 8
  %106 = sub nsw i64 %104, %105
  store i64 %106, i64* %12, align 8
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %108 = call i32 @free(%struct.TYPE_5__* %107)
  %109 = load i32, i32* %15, align 4
  %110 = load i64, i64* %12, align 8
  %111 = call i32 @PrintPerformance(i32 %109, i32 32, i64 %110)
  %112 = call i32 (...) @DbgThread()
  %113 = load i32, i32* %13, align 4
  %114 = call i32 @cmsDeleteTransform(i32 %112, i32 %113)
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
