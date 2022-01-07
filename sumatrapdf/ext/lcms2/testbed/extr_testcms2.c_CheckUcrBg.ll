; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckUcrBg.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_CheckUcrBg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@cmsNoLanguage = common dso_local global i32 0, align 4
@cmsNoCountry = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"test UCR/BG\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i32)* @CheckUcrBg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @CheckUcrBg(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_3__*, align 8
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i32, align 4
  %11 = alloca [256 x i8], align 16
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* %5, align 4
  switch i32 %12, label %69 [
    i32 1, label %13
    i32 2, label %46
  ]

13:                                               ; preds = %3
  %14 = call i32 (...) @DbgThread()
  %15 = call i8* @cmsBuildGamma(i32 %14, double 2.400000e+00)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i8* %15, i8** %16, align 8
  %17 = call i32 (...) @DbgThread()
  %18 = call i8* @cmsBuildGamma(i32 %17, double -2.200000e+00)
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %18, i8** %19, align 8
  %20 = call i32 (...) @DbgThread()
  %21 = call i32 @cmsMLUalloc(i32 %20, i32 1)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = call i32 (...) @DbgThread()
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @cmsNoLanguage, align 4
  %27 = load i32, i32* @cmsNoCountry, align 4
  %28 = call i32 @cmsMLUsetASCII(i32 %23, i32 %25, i32 %26, i32 %27, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %29 = call i32 (...) @DbgThread()
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @cmsWriteTag(i32 %29, i32 %30, i32 %31, %struct.TYPE_3__* %9)
  store i32 %32, i32* %10, align 4
  %33 = call i32 (...) @DbgThread()
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @cmsMLUfree(i32 %33, i32 %35)
  %37 = call i32 (...) @DbgThread()
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  %39 = load i8*, i8** %38, align 8
  %40 = call i32 @cmsFreeToneCurve(i32 %37, i8* %39)
  %41 = call i32 (...) @DbgThread()
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  %43 = load i8*, i8** %42, align 8
  %44 = call i32 @cmsFreeToneCurve(i32 %41, i8* %43)
  %45 = load i32, i32* %10, align 4
  store i32 %45, i32* %4, align 4
  br label %70

46:                                               ; preds = %3
  %47 = call i32 (...) @DbgThread()
  %48 = load i32, i32* %6, align 4
  %49 = load i32, i32* %7, align 4
  %50 = call i64 @cmsReadTag(i32 %47, i32 %48, i32 %49)
  %51 = inttoptr i64 %50 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %51, %struct.TYPE_3__** %8, align 8
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %53 = icmp eq %struct.TYPE_3__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %46
  store i32 0, i32* %4, align 4
  br label %70

55:                                               ; preds = %46
  %56 = call i32 (...) @DbgThread()
  %57 = load %struct.TYPE_3__*, %struct.TYPE_3__** %8, align 8
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @cmsNoLanguage, align 4
  %61 = load i32, i32* @cmsNoCountry, align 4
  %62 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %63 = call i32 @cmsMLUgetASCII(i32 %56, i32 %59, i32 %60, i32 %61, i8* %62, i32 256)
  %64 = getelementptr inbounds [256 x i8], [256 x i8]* %11, i64 0, i64 0
  %65 = call i32 @strcmp(i8* %64, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0))
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %70

68:                                               ; preds = %55
  store i32 1, i32* %4, align 4
  br label %70

69:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %70

70:                                               ; preds = %69, %68, %67, %54, %13
  %71 = load i32, i32* %4, align 4
  ret i32 %71
}

declare dso_local i8* @cmsBuildGamma(i32, double) #1

declare dso_local i32 @DbgThread(...) #1

declare dso_local i32 @cmsMLUalloc(i32, i32) #1

declare dso_local i32 @cmsMLUsetASCII(i32, i32, i32, i32, i8*) #1

declare dso_local i32 @cmsWriteTag(i32, i32, i32, %struct.TYPE_3__*) #1

declare dso_local i32 @cmsMLUfree(i32, i32) #1

declare dso_local i32 @cmsFreeToneCurve(i32, i8*) #1

declare dso_local i64 @cmsReadTag(i32, i32, i32) #1

declare dso_local i32 @cmsMLUgetASCII(i32, i32, i32, i32, i8*, i32) #1

declare dso_local i32 @strcmp(i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
