; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgamma.c_GetParametricCurveByType.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmsgamma.c_GetParametricCurveByType.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.TYPE_6__* }
%struct.TYPE_7__ = type { %struct.TYPE_6__* }

@CurvesPlugin = common dso_local global i32 0, align 4
@DefaultCurves = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_6__* (i32, i32, i32*)* @GetParametricCurveByType to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_6__* @GetParametricCurveByType(i32 %0, i32 %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_7__*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* @CurvesPlugin, align 4
  %13 = call i64 @_cmsContextGetClientChunk(i32 %11, i32 %12)
  %14 = inttoptr i64 %13 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %14, %struct.TYPE_7__** %10, align 8
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %10, align 8
  %16 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %16, align 8
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %8, align 8
  br label %18

18:                                               ; preds = %36, %3
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = icmp ne %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %40

21:                                               ; preds = %18
  %22 = load i32, i32* %6, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %24 = call i32 @IsInSet(i32 %22, %struct.TYPE_6__* %23)
  store i32 %24, i32* %9, align 4
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, -1
  br i1 %26, label %27, label %35

27:                                               ; preds = %21
  %28 = load i32*, i32** %7, align 8
  %29 = icmp ne i32* %28, null
  br i1 %29, label %30, label %33

30:                                               ; preds = %27
  %31 = load i32, i32* %9, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 %31, i32* %32, align 4
  br label %33

33:                                               ; preds = %30, %27
  %34 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %34, %struct.TYPE_6__** %4, align 8
  br label %64

35:                                               ; preds = %21
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  store %struct.TYPE_6__* %39, %struct.TYPE_6__** %8, align 8
  br label %18

40:                                               ; preds = %18
  store %struct.TYPE_6__* @DefaultCurves, %struct.TYPE_6__** %8, align 8
  br label %41

41:                                               ; preds = %59, %40
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %43 = icmp ne %struct.TYPE_6__* %42, null
  br i1 %43, label %44, label %63

44:                                               ; preds = %41
  %45 = load i32, i32* %6, align 4
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %47 = call i32 @IsInSet(i32 %45, %struct.TYPE_6__* %46)
  store i32 %47, i32* %9, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ne i32 %48, -1
  br i1 %49, label %50, label %58

50:                                               ; preds = %44
  %51 = load i32*, i32** %7, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %56

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  br label %56

56:                                               ; preds = %53, %50
  %57 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  store %struct.TYPE_6__* %57, %struct.TYPE_6__** %4, align 8
  br label %64

58:                                               ; preds = %44
  br label %59

59:                                               ; preds = %58
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_6__*, %struct.TYPE_6__** %61, align 8
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %8, align 8
  br label %41

63:                                               ; preds = %41
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %4, align 8
  br label %64

64:                                               ; preds = %63, %56, %33
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  ret %struct.TYPE_6__* %65
}

declare dso_local i64 @_cmsContextGetClientChunk(i32, i32) #1

declare dso_local i32 @IsInSet(i32, %struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
