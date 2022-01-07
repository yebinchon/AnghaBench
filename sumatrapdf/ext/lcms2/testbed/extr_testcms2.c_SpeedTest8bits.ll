; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest8bits.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest8bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8*, i8* }

@.str = private unnamed_addr constant [24 x i8] c"Unable to open profiles\00", align 1
@TYPE_RGB_8 = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @SpeedTest8bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest8bits(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
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
  %16 = alloca %struct.TYPE_5__*, align 8
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
  %28 = load i32, i32* @TYPE_RGB_8, align 4
  %29 = load i32*, i32** %7, align 8
  %30 = load i32, i32* @TYPE_RGB_8, align 4
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
  store i32 402653184, i32* %17, align 4
  %40 = load i32, i32* %17, align 4
  %41 = call i64 @malloc(i32 %40)
  %42 = inttoptr i64 %41 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %42, %struct.TYPE_5__** %16, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %43

43:                                               ; preds = %89, %25
  %44 = load i32, i32* %9, align 4
  %45 = icmp slt i32 %44, 256
  br i1 %45, label %46, label %92

46:                                               ; preds = %43
  store i32 0, i32* %10, align 4
  br label %47

47:                                               ; preds = %85, %46
  %48 = load i32, i32* %10, align 4
  %49 = icmp slt i32 %48, 256
  br i1 %49, label %50, label %88

50:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  br label %51

51:                                               ; preds = %81, %50
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 256
  br i1 %53, label %54, label %84

54:                                               ; preds = %51
  %55 = load i32, i32* %9, align 4
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %59 = load i32, i32* %12, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %61, i32 0, i32 2
  store i8* %57, i8** %62, align 8
  %63 = load i32, i32* %10, align 4
  %64 = sext i32 %63 to i64
  %65 = inttoptr i64 %64 to i8*
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %67 = load i32, i32* %12, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i64 %68
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  store i8* %65, i8** %70, align 8
  %71 = load i32, i32* %11, align 4
  %72 = sext i32 %71 to i64
  %73 = inttoptr i64 %72 to i8*
  %74 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %75 = load i32, i32* %12, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  store i8* %73, i8** %78, align 8
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %54
  %82 = load i32, i32* %11, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %11, align 4
  br label %51

84:                                               ; preds = %51
  br label %85

85:                                               ; preds = %84
  %86 = load i32, i32* %10, align 4
  %87 = add nsw i32 %86, 1
  store i32 %87, i32* %10, align 4
  br label %47

88:                                               ; preds = %47
  br label %89

89:                                               ; preds = %88
  %90 = load i32, i32* %9, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %9, align 4
  br label %43

92:                                               ; preds = %43
  %93 = load i8*, i8** %5, align 8
  %94 = call i32 @TitlePerformance(i8* %93)
  %95 = call i64 (...) @clock()
  store i64 %95, i64* %13, align 8
  %96 = call i32 (...) @DbgThread()
  %97 = load i32, i32* %15, align 4
  %98 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %99 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %100 = call i32 @cmsDoTransform(i32 %96, i32 %97, %struct.TYPE_5__* %98, %struct.TYPE_5__* %99, i32 16777216)
  %101 = call i64 (...) @clock()
  %102 = load i64, i64* %13, align 8
  %103 = sub nsw i64 %101, %102
  store i64 %103, i64* %14, align 8
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %105 = call i32 @free(%struct.TYPE_5__* %104)
  %106 = load i32, i32* %17, align 4
  %107 = load i64, i64* %14, align 8
  %108 = call i32 @PrintPerformance(i32 %106, i32 24, i64 %107)
  %109 = call i32 (...) @DbgThread()
  %110 = load i32, i32* %15, align 4
  %111 = call i32 @cmsDeleteTransform(i32 %109, i32 %110)
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
