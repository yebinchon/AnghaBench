; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest32bitsCMYK.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest32bitsCMYK.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unable to open profiles\00", align 1
@TYPE_CMYK_FLT = common dso_local global i32 0, align 4
@INTENT_PERCEPTUAL = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*)* @SpeedTest32bitsCMYK to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest32bitsCMYK(i8* %0, i32* %1, i32* %2) #0 {
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
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32* %2, i32** %6, align 8
  store i32 4, i32* %16, align 4
  %18 = load i32*, i32** %5, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32*, i32** %6, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %20, %3
  %24 = call i32 @Die(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  br label %25

25:                                               ; preds = %23, %20
  %26 = call i32 (...) @DbgThread()
  %27 = load i32*, i32** %5, align 8
  %28 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %29 = load i32*, i32** %6, align 8
  %30 = load i32, i32* @TYPE_CMYK_FLT, align 4
  %31 = load i32, i32* @INTENT_PERCEPTUAL, align 4
  %32 = load i32, i32* @cmsFLAGS_NOCACHE, align 4
  %33 = call i32 @cmsCreateTransform(i32 %26, i32* %27, i32 %28, i32* %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %13, align 4
  %34 = call i32 (...) @DbgThread()
  %35 = load i32*, i32** %5, align 8
  %36 = call i32 @cmsCloseProfile(i32 %34, i32* %35)
  %37 = call i32 (...) @DbgThread()
  %38 = load i32*, i32** %6, align 8
  %39 = call i32 @cmsCloseProfile(i32 %37, i32* %38)
  %40 = load i32, i32* %16, align 4
  %41 = sdiv i32 256, %40
  %42 = mul nsw i32 %41, 256
  %43 = load i32, i32* %16, align 4
  %44 = sdiv i32 %42, %43
  %45 = mul nsw i32 %44, 256
  %46 = load i32, i32* %16, align 4
  %47 = sdiv i32 %45, %46
  store i32 %47, i32* %17, align 4
  %48 = load i32, i32* %17, align 4
  %49 = sext i32 %48 to i64
  %50 = mul i64 %49, 16
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %15, align 4
  %52 = load i32, i32* %15, align 4
  %53 = call i64 @malloc(i32 %52)
  %54 = inttoptr i64 %53 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %54, %struct.TYPE_5__** %14, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %7, align 4
  br label %55

55:                                               ; preds = %132, %25
  %56 = load i32, i32* %7, align 4
  %57 = icmp slt i32 %56, 256
  br i1 %57, label %58, label %136

58:                                               ; preds = %55
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %127, %58
  %60 = load i32, i32* %8, align 4
  %61 = icmp slt i32 %60, 256
  br i1 %61, label %62, label %131

62:                                               ; preds = %59
  store i32 0, i32* %9, align 4
  br label %63

63:                                               ; preds = %122, %62
  %64 = load i32, i32* %9, align 4
  %65 = icmp slt i32 %64, 256
  br i1 %65, label %66, label %126

66:                                               ; preds = %63
  %67 = load i32, i32* %7, align 4
  %68 = sitofp i32 %67 to float
  %69 = fdiv float %68, 2.560000e+02
  %70 = fptosi float %69 to i32
  %71 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %72 = load i32, i32* %10, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %70, i32* %75, align 4
  %76 = load i32, i32* %8, align 4
  %77 = sitofp i32 %76 to float
  %78 = fdiv float %77, 2.560000e+02
  %79 = fptosi float %78 to i32
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %81 = load i32, i32* %10, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  store i32 %79, i32* %84, align 4
  %85 = load i32, i32* %9, align 4
  %86 = sitofp i32 %85 to float
  %87 = fdiv float %86, 2.560000e+02
  %88 = fptosi float %87 to i32
  %89 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %90 = load i32, i32* %10, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %92, i32 0, i32 2
  store i32 %88, i32* %93, align 4
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %101 = load i32, i32* %10, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i64 %102
  %104 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = add nsw i32 %99, %105
  %107 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %108 = load i32, i32* %10, align 4
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %107, i64 %109
  %111 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %110, i32 0, i32 2
  %112 = load i32, i32* %111, align 4
  %113 = add nsw i32 %106, %112
  %114 = sdiv i32 %113, 3
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %116 = load i32, i32* %10, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i64 %117
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 3
  store i32 %114, i32* %119, align 4
  %120 = load i32, i32* %10, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %10, align 4
  br label %122

122:                                              ; preds = %66
  %123 = load i32, i32* %16, align 4
  %124 = load i32, i32* %9, align 4
  %125 = add nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  br label %63

126:                                              ; preds = %63
  br label %127

127:                                              ; preds = %126
  %128 = load i32, i32* %16, align 4
  %129 = load i32, i32* %8, align 4
  %130 = add nsw i32 %129, %128
  store i32 %130, i32* %8, align 4
  br label %59

131:                                              ; preds = %59
  br label %132

132:                                              ; preds = %131
  %133 = load i32, i32* %16, align 4
  %134 = load i32, i32* %7, align 4
  %135 = add nsw i32 %134, %133
  store i32 %135, i32* %7, align 4
  br label %55

136:                                              ; preds = %55
  %137 = load i8*, i8** %4, align 8
  %138 = call i32 @TitlePerformance(i8* %137)
  %139 = call i64 (...) @clock()
  store i64 %139, i64* %11, align 8
  %140 = call i32 (...) @DbgThread()
  %141 = load i32, i32* %13, align 4
  %142 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %143 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %144 = load i32, i32* %17, align 4
  %145 = call i32 @cmsDoTransform(i32 %140, i32 %141, %struct.TYPE_5__* %142, %struct.TYPE_5__* %143, i32 %144)
  %146 = call i64 (...) @clock()
  %147 = load i64, i64* %11, align 8
  %148 = sub nsw i64 %146, %147
  store i64 %148, i64* %12, align 8
  %149 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %150 = call i32 @free(%struct.TYPE_5__* %149)
  %151 = load i32, i32* %15, align 4
  %152 = load i64, i64* %12, align 8
  %153 = call i32 @PrintPerformance(i32 %151, i32 16, i64 %152)
  %154 = call i32 (...) @DbgThread()
  %155 = load i32, i32* %13, align 4
  %156 = call i32 @cmsDeleteTransform(i32 %154, i32 %155)
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
