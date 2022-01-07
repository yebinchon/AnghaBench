; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_set_calibration_matrix.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_libinput.c_set_calibration_matrix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.libinput_device = type { i32 }

@SWAY_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"calibration_set_matrix(%f, %f, %f, %f, %f, %f)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.libinput_device*, float*)* @set_calibration_matrix to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_calibration_matrix(%struct.libinput_device* %0, float* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.libinput_device*, align 8
  %5 = alloca float*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [6 x float], align 16
  %8 = alloca i32, align 4
  store %struct.libinput_device* %0, %struct.libinput_device** %4, align 8
  store float* %1, float** %5, align 8
  %9 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %10 = call i32 @libinput_device_config_calibration_has_matrix(%struct.libinput_device* %9)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

13:                                               ; preds = %2
  store i32 0, i32* %6, align 4
  %14 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %15 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 0
  %16 = call i32 @libinput_device_config_calibration_get_matrix(%struct.libinput_device* %14, float* %15)
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %33, %13
  %18 = load i32, i32* %8, align 4
  %19 = icmp slt i32 %18, 6
  br i1 %19, label %20, label %36

20:                                               ; preds = %17
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [6 x float], [6 x float]* %7, i64 0, i64 %22
  %24 = load float, float* %23, align 4
  %25 = load float*, float** %5, align 8
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds float, float* %25, i64 %27
  %29 = load float, float* %28, align 4
  %30 = fcmp une float %24, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %20
  store i32 1, i32* %6, align 4
  br label %36

32:                                               ; preds = %20
  br label %33

33:                                               ; preds = %32
  %34 = load i32, i32* %8, align 4
  %35 = add nsw i32 %34, 1
  store i32 %35, i32* %8, align 4
  br label %17

36:                                               ; preds = %31, %17
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %64

39:                                               ; preds = %36
  %40 = load i32, i32* @SWAY_DEBUG, align 4
  %41 = load float*, float** %5, align 8
  %42 = getelementptr inbounds float, float* %41, i64 0
  %43 = load float, float* %42, align 4
  %44 = load float*, float** %5, align 8
  %45 = getelementptr inbounds float, float* %44, i64 1
  %46 = load float, float* %45, align 4
  %47 = load float*, float** %5, align 8
  %48 = getelementptr inbounds float, float* %47, i64 2
  %49 = load float, float* %48, align 4
  %50 = load float*, float** %5, align 8
  %51 = getelementptr inbounds float, float* %50, i64 3
  %52 = load float, float* %51, align 4
  %53 = load float*, float** %5, align 8
  %54 = getelementptr inbounds float, float* %53, i64 4
  %55 = load float, float* %54, align 4
  %56 = load float*, float** %5, align 8
  %57 = getelementptr inbounds float, float* %56, i64 5
  %58 = load float, float* %57, align 4
  %59 = call i32 @sway_log(i32 %40, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), float %43, float %46, float %49, float %52, float %55, float %58)
  %60 = load %struct.libinput_device*, %struct.libinput_device** %4, align 8
  %61 = load float*, float** %5, align 8
  %62 = call i32 @libinput_device_config_calibration_set_matrix(%struct.libinput_device* %60, float* %61)
  %63 = call i32 @log_status(i32 %62)
  br label %64

64:                                               ; preds = %39, %36
  %65 = load i32, i32* %6, align 4
  store i32 %65, i32* %3, align 4
  br label %66

66:                                               ; preds = %64, %12
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @libinput_device_config_calibration_has_matrix(%struct.libinput_device*) #1

declare dso_local i32 @libinput_device_config_calibration_get_matrix(%struct.libinput_device*, float*) #1

declare dso_local i32 @sway_log(i32, i8*, float, float, float, float, float, float) #1

declare dso_local i32 @log_status(i32) #1

declare dso_local i32 @libinput_device_config_calibration_set_matrix(%struct.libinput_device*, float*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
