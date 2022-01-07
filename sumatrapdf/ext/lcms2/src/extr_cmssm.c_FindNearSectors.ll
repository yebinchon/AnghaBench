; ModuleID = '/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c_FindNearSectors.c'
source_filename = "/home/carl/AnghaBench/sumatrapdf/ext/lcms2/src/extr_cmssm.c_FindNearSectors.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i32, i32 }
%struct.TYPE_7__ = type { %struct.TYPE_6__** }
%struct.TYPE_6__ = type { i64 }

@NSTEPS = common dso_local global i64 0, align 8
@Spiral = common dso_local global %struct.TYPE_8__* null, align 8
@SECTORS = common dso_local global i32 0, align 4
@GP_EMPTY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_7__*, i32, i32, %struct.TYPE_6__**)* @FindNearSectors to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @FindNearSectors(%struct.TYPE_7__* %0, i32 %1, i32 %2, %struct.TYPE_6__** %3) #0 {
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__**, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.TYPE_6__** %3, %struct.TYPE_6__*** %8, align 8
  store i32 0, i32* %9, align 4
  store i64 0, i64* %12, align 8
  br label %14

14:                                               ; preds = %76, %4
  %15 = load i64, i64* %12, align 8
  %16 = load i64, i64* @NSTEPS, align 8
  %17 = icmp ult i64 %15, %16
  br i1 %17, label %18, label %79

18:                                               ; preds = %14
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Spiral, align 8
  %21 = load i64, i64* %12, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 %19, %24
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** @Spiral, align 8
  %28 = load i64, i64* %12, align 8
  %29 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i64 %28
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %26, %31
  store i32 %32, i32* %11, align 4
  %33 = load i32, i32* @SECTORS, align 4
  %34 = load i32, i32* %10, align 4
  %35 = srem i32 %34, %33
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* @SECTORS, align 4
  %37 = load i32, i32* %11, align 4
  %38 = srem i32 %37, %36
  store i32 %38, i32* %11, align 4
  %39 = load i32, i32* %10, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %45

41:                                               ; preds = %18
  %42 = load i32, i32* @SECTORS, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  store i32 %44, i32* %10, align 4
  br label %45

45:                                               ; preds = %41, %18
  %46 = load i32, i32* %11, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %45
  %49 = load i32, i32* @SECTORS, align 4
  %50 = load i32, i32* %11, align 4
  %51 = add nsw i32 %49, %50
  store i32 %51, i32* %11, align 4
  br label %52

52:                                               ; preds = %48, %45
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %54, align 8
  %56 = load i32, i32* %11, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %55, i64 %57
  %59 = load %struct.TYPE_6__*, %struct.TYPE_6__** %58, align 8
  %60 = load i32, i32* %10, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i64 %61
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %13, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @GP_EMPTY, align 8
  %67 = icmp ne i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %52
  %69 = load %struct.TYPE_6__*, %struct.TYPE_6__** %13, align 8
  %70 = load %struct.TYPE_6__**, %struct.TYPE_6__*** %8, align 8
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %9, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.TYPE_6__*, %struct.TYPE_6__** %70, i64 %73
  store %struct.TYPE_6__* %69, %struct.TYPE_6__** %74, align 8
  br label %75

75:                                               ; preds = %68, %52
  br label %76

76:                                               ; preds = %75
  %77 = load i64, i64* %12, align 8
  %78 = add i64 %77, 1
  store i64 %78, i64* %12, align 8
  br label %14

79:                                               ; preds = %14
  %80 = load i32, i32* %9, align 4
  ret i32 %80
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
