; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteCLUT.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsps2.c_WriteCLUT.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64 }
%struct.TYPE_9__ = type { i32, i32, i8*, i8*, i8*, i8*, i32, %struct.TYPE_10__*, i32, i32* }
%struct.TYPE_10__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i32* }

@.str = private unnamed_addr constant [2 x i8] c"[\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" %d \00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c" [\0A\00", align 1
@OutputValueSampler = common dso_local global i32 0, align 4
@SAMPLER_INSPECT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"] \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, %struct.TYPE_8__*, i8*, i8*, i8*, i8*, i32, i32)* @WriteCLUT to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @WriteCLUT(i32 %0, i32* %1, %struct.TYPE_8__* %2, i8* %3, i8* %4, i8* %5, i8* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_9__, align 8
  store i32 %0, i32* %10, align 4
  store i32* %1, i32** %11, align 8
  store %struct.TYPE_8__* %2, %struct.TYPE_8__** %12, align 8
  store i8* %3, i8** %13, align 8
  store i8* %4, i8** %14, align 8
  store i8* %5, i8** %15, align 8
  store i8* %6, i8** %16, align 8
  store i32 %7, i32* %17, align 4
  store i32 %8, i32* %18, align 4
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  store i32 -1, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 1
  store i32 -1, i32* %22, align 4
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = inttoptr i64 %25 to %struct.TYPE_10__*
  %27 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 7
  store %struct.TYPE_10__* %26, %struct.TYPE_10__** %27, align 8
  %28 = load i32*, i32** %11, align 8
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 9
  store i32* %28, i32** %29, align 8
  %30 = load i8*, i8** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 2
  store i8* %30, i8** %31, align 8
  %32 = load i8*, i8** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 3
  store i8* %32, i8** %33, align 8
  %34 = load i8*, i8** %15, align 8
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 4
  store i8* %34, i8** %35, align 8
  %36 = load i8*, i8** %16, align 8
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  store i8* %36, i8** %37, align 8
  %38 = load i32, i32* %17, align 4
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 6
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* %18, align 4
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 8
  store i32 %40, i32* %41, align 8
  %42 = load i32, i32* %10, align 4
  %43 = load i32*, i32** %11, align 8
  %44 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %42, i32* %43, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i64 0, i64* %19, align 8
  br label %45

45:                                               ; preds = %67, %9
  %46 = load i64, i64* %19, align 8
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 7
  %48 = load %struct.TYPE_10__*, %struct.TYPE_10__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ult i64 %46, %52
  br i1 %53, label %54, label %70

54:                                               ; preds = %45
  %55 = load i32, i32* %10, align 4
  %56 = load i32*, i32** %11, align 8
  %57 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 7
  %58 = load %struct.TYPE_10__*, %struct.TYPE_10__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32*, i32** %61, align 8
  %63 = load i64, i64* %19, align 8
  %64 = getelementptr inbounds i32, i32* %62, i64 %63
  %65 = load i32, i32* %64, align 4
  %66 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %55, i32* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  br label %67

67:                                               ; preds = %54
  %68 = load i64, i64* %19, align 8
  %69 = add i64 %68, 1
  store i64 %69, i64* %19, align 8
  br label %45

70:                                               ; preds = %45
  %71 = load i32, i32* %10, align 4
  %72 = load i32*, i32** %11, align 8
  %73 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %71, i32* %72, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %74 = load i32, i32* %10, align 4
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %76 = load i32, i32* @OutputValueSampler, align 4
  %77 = bitcast %struct.TYPE_9__* %20 to i8*
  %78 = load i32, i32* @SAMPLER_INSPECT, align 4
  %79 = call i32 @cmsStageSampleCLut16bit(i32 %74, %struct.TYPE_8__* %75, i32 %76, i8* %77, i32 %78)
  %80 = load i32, i32* %10, align 4
  %81 = load i32*, i32** %11, align 8
  %82 = load i8*, i8** %16, align 8
  %83 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %80, i32* %81, i8* %82)
  %84 = load i32, i32* %10, align 4
  %85 = load i32*, i32** %11, align 8
  %86 = load i8*, i8** %14, align 8
  %87 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %84, i32* %85, i8* %86)
  %88 = load i32, i32* %10, align 4
  %89 = load i32*, i32** %11, align 8
  %90 = call i32 (i32, i32*, i8*, ...) @_cmsIOPrintf(i32 %88, i32* %89, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0))
  ret void
}

declare dso_local i32 @_cmsIOPrintf(i32, i32*, i8*, ...) #1

declare dso_local i32 @cmsStageSampleCLut16bit(i32, %struct.TYPE_8__*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
