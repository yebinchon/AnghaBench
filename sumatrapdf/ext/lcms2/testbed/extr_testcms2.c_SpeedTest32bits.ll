; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest32bits.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/testbed/extr_testcms2.c_SpeedTest32bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [24 x i8] c"Unable to open profiles\00", align 1
@TYPE_RGBA_FLT = common dso_local global i32 0, align 4
@cmsFLAGS_NOCACHE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32*, i32*, i32)* @SpeedTest32bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @SpeedTest32bits(i8* %0, i32* %1, i32* %2, i32 %3) #0 {
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
  %30 = load i32, i32* @TYPE_RGBA_FLT, align 4
  %31 = load i32*, i32** %7, align 8
  %32 = load i32, i32* @TYPE_RGBA_FLT, align 4
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
  %52 = mul i64 %51, 16
  %53 = trunc i64 %52 to i32
  store i32 %53, i32* %17, align 4
  %54 = load i32, i32* %17, align 4
  %55 = call i64 @malloc(i32 %54)
  %56 = inttoptr i64 %55 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %56, %struct.TYPE_5__** %16, align 8
  store i32 0, i32* %12, align 4
  store i32 0, i32* %9, align 4
  br label %57

57:                                               ; preds = %134, %27
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 256
  br i1 %59, label %60, label %138

60:                                               ; preds = %57
  store i32 0, i32* %10, align 4
  br label %61

61:                                               ; preds = %129, %60
  %62 = load i32, i32* %10, align 4
  %63 = icmp slt i32 %62, 256
  br i1 %63, label %64, label %133

64:                                               ; preds = %61
  store i32 0, i32* %11, align 4
  br label %65

65:                                               ; preds = %124, %64
  %66 = load i32, i32* %11, align 4
  %67 = icmp slt i32 %66, 256
  br i1 %67, label %68, label %128

68:                                               ; preds = %65
  %69 = load i32, i32* %9, align 4
  %70 = sitofp i32 %69 to float
  %71 = fdiv float %70, 2.560000e+02
  %72 = fptosi float %71 to i32
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %74 = load i32, i32* %12, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  store i32 %72, i32* %77, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sitofp i32 %78 to float
  %80 = fdiv float %79, 2.560000e+02
  %81 = fptosi float %80 to i32
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %83 = load i32, i32* %12, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 1
  store i32 %81, i32* %86, align 4
  %87 = load i32, i32* %11, align 4
  %88 = sitofp i32 %87 to float
  %89 = fdiv float %88, 2.560000e+02
  %90 = fptosi float %89 to i32
  %91 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %92 = load i32, i32* %12, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 2
  store i32 %90, i32* %95, align 4
  %96 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %97 = load i32, i32* %12, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %99, i32 0, i32 0
  %101 = load i32, i32* %100, align 4
  %102 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %103 = load i32, i32* %12, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %102, i64 %104
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = add nsw i32 %101, %107
  %109 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %110 = load i32, i32* %12, align 4
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %109, i64 %111
  %113 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 4
  %115 = add nsw i32 %108, %114
  %116 = sdiv i32 %115, 3
  %117 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %118 = load i32, i32* %12, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %117, i64 %119
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 3
  store i32 %116, i32* %121, align 4
  %122 = load i32, i32* %12, align 4
  %123 = add nsw i32 %122, 1
  store i32 %123, i32* %12, align 4
  br label %124

124:                                              ; preds = %68
  %125 = load i32, i32* %18, align 4
  %126 = load i32, i32* %11, align 4
  %127 = add nsw i32 %126, %125
  store i32 %127, i32* %11, align 4
  br label %65

128:                                              ; preds = %65
  br label %129

129:                                              ; preds = %128
  %130 = load i32, i32* %18, align 4
  %131 = load i32, i32* %10, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %10, align 4
  br label %61

133:                                              ; preds = %61
  br label %134

134:                                              ; preds = %133
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %9, align 4
  %137 = add nsw i32 %136, %135
  store i32 %137, i32* %9, align 4
  br label %57

138:                                              ; preds = %57
  %139 = load i8*, i8** %5, align 8
  %140 = call i32 @TitlePerformance(i8* %139)
  %141 = call i64 (...) @clock()
  store i64 %141, i64* %13, align 8
  %142 = call i32 (...) @DbgThread()
  %143 = load i32, i32* %15, align 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %145 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %146 = load i32, i32* %19, align 4
  %147 = call i32 @cmsDoTransform(i32 %142, i32 %143, %struct.TYPE_5__* %144, %struct.TYPE_5__* %145, i32 %146)
  %148 = call i64 (...) @clock()
  %149 = load i64, i64* %13, align 8
  %150 = sub nsw i64 %148, %149
  store i64 %150, i64* %14, align 8
  %151 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %152 = call i32 @free(%struct.TYPE_5__* %151)
  %153 = load i32, i32* %17, align 4
  %154 = load i64, i64* %14, align 8
  %155 = call i32 @PrintPerformance(i32 %153, i32 16, i64 %154)
  %156 = call i32 (...) @DbgThread()
  %157 = load i32, i32* %15, align 4
  %158 = call i32 @cmsDeleteTransform(i32 %156, i32 %157)
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
