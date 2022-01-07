; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_adjust_tiled.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_resize.c_resize_adjust_tiled.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.sway_container* }
%struct.sway_container = type { double, double, i64, i64 }
%struct.cmd_results = type { i32 }
%struct.resize_amount = type { i64, float }

@config = common dso_local global %struct.TYPE_4__* null, align 8
@RESIZE_UNIT_DEFAULT = common dso_local global i64 0, align 8
@RESIZE_UNIT_PPT = common dso_local global i64 0, align 8
@CMD_INVALID = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Cannot resize any further\00", align 1
@CMD_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cmd_results* (i32, %struct.resize_amount*)* @resize_adjust_tiled to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cmd_results* @resize_adjust_tiled(i32 %0, %struct.resize_amount* %1) #0 {
  %3 = alloca %struct.cmd_results*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.resize_amount*, align 8
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca float, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  store i32 %0, i32* %4, align 4
  store %struct.resize_amount* %1, %struct.resize_amount** %5, align 8
  %10 = load %struct.TYPE_4__*, %struct.TYPE_4__** @config, align 8
  %11 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load %struct.sway_container*, %struct.sway_container** %12, align 8
  store %struct.sway_container* %13, %struct.sway_container** %6, align 8
  %14 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %15 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @RESIZE_UNIT_DEFAULT, align 8
  %18 = icmp eq i64 %16, %17
  br i1 %18, label %19, label %23

19:                                               ; preds = %2
  %20 = load i64, i64* @RESIZE_UNIT_PPT, align 8
  %21 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %22 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %21, i32 0, i32 0
  store i64 %20, i64* %22, align 8
  br label %23

23:                                               ; preds = %19, %2
  %24 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %25 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @RESIZE_UNIT_PPT, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %56

29:                                               ; preds = %23
  %30 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %31 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %30, i32 0, i32 1
  %32 = load float, float* %31, align 8
  %33 = fdiv float %32, 1.000000e+02
  store float %33, float* %7, align 4
  %34 = load i32, i32* %4, align 4
  %35 = call i64 @is_horizontal(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %46

37:                                               ; preds = %29
  %38 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %39 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = sitofp i64 %40 to float
  %42 = load float, float* %7, align 4
  %43 = fmul float %41, %42
  %44 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %45 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %44, i32 0, i32 1
  store float %43, float* %45, align 8
  br label %55

46:                                               ; preds = %29
  %47 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %48 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = sitofp i64 %49 to float
  %51 = load float, float* %7, align 4
  %52 = fmul float %50, %51
  %53 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %54 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %53, i32 0, i32 1
  store float %52, float* %54, align 8
  br label %55

55:                                               ; preds = %46, %37
  br label %56

56:                                               ; preds = %55, %23
  %57 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 0
  %59 = load double, double* %58, align 8
  store double %59, double* %8, align 8
  %60 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %61 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %60, i32 0, i32 1
  %62 = load double, double* %61, align 8
  store double %62, double* %9, align 8
  %63 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %64 = load i32, i32* %4, align 4
  %65 = load %struct.resize_amount*, %struct.resize_amount** %5, align 8
  %66 = getelementptr inbounds %struct.resize_amount, %struct.resize_amount* %65, i32 0, i32 1
  %67 = load float, float* %66, align 8
  %68 = call i32 @container_resize_tiled(%struct.sway_container* %63, i32 %64, float %67)
  %69 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %70 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %69, i32 0, i32 0
  %71 = load double, double* %70, align 8
  %72 = load double, double* %8, align 8
  %73 = fcmp oeq double %71, %72
  br i1 %73, label %74, label %83

74:                                               ; preds = %56
  %75 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %76 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %75, i32 0, i32 1
  %77 = load double, double* %76, align 8
  %78 = load double, double* %9, align 8
  %79 = fcmp oeq double %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %74
  %81 = load i32, i32* @CMD_INVALID, align 4
  %82 = call %struct.cmd_results* @cmd_results_new(i32 %81, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  store %struct.cmd_results* %82, %struct.cmd_results** %3, align 8
  br label %86

83:                                               ; preds = %74, %56
  %84 = load i32, i32* @CMD_SUCCESS, align 4
  %85 = call %struct.cmd_results* @cmd_results_new(i32 %84, i8* null)
  store %struct.cmd_results* %85, %struct.cmd_results** %3, align 8
  br label %86

86:                                               ; preds = %83, %80
  %87 = load %struct.cmd_results*, %struct.cmd_results** %3, align 8
  ret %struct.cmd_results* %87
}

declare dso_local i64 @is_horizontal(i32) #1

declare dso_local i32 @container_resize_tiled(%struct.sway_container*, i32, float) #1

declare dso_local %struct.cmd_results* @cmd_results_new(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
