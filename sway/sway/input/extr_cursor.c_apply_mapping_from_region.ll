; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_apply_mapping_from_region.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_cursor.c_apply_mapping_from_region.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wlr_input_device = type { double, double }
%struct.input_config_mapped_from_region = type { double, double, double, double, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.wlr_input_device*, %struct.input_config_mapped_from_region*, double*, double*)* @apply_mapping_from_region to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_mapping_from_region(%struct.wlr_input_device* %0, %struct.input_config_mapped_from_region* %1, double* %2, double* %3) #0 {
  %5 = alloca %struct.wlr_input_device*, align 8
  %6 = alloca %struct.input_config_mapped_from_region*, align 8
  %7 = alloca double*, align 8
  %8 = alloca double*, align 8
  %9 = alloca double, align 8
  %10 = alloca double, align 8
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  store %struct.wlr_input_device* %0, %struct.wlr_input_device** %5, align 8
  store %struct.input_config_mapped_from_region* %1, %struct.input_config_mapped_from_region** %6, align 8
  store double* %2, double** %7, align 8
  store double* %3, double** %8, align 8
  %13 = load %struct.input_config_mapped_from_region*, %struct.input_config_mapped_from_region** %6, align 8
  %14 = getelementptr inbounds %struct.input_config_mapped_from_region, %struct.input_config_mapped_from_region* %13, i32 0, i32 0
  %15 = load double, double* %14, align 8
  store double %15, double* %9, align 8
  %16 = load %struct.input_config_mapped_from_region*, %struct.input_config_mapped_from_region** %6, align 8
  %17 = getelementptr inbounds %struct.input_config_mapped_from_region, %struct.input_config_mapped_from_region* %16, i32 0, i32 1
  %18 = load double, double* %17, align 8
  store double %18, double* %10, align 8
  %19 = load %struct.input_config_mapped_from_region*, %struct.input_config_mapped_from_region** %6, align 8
  %20 = getelementptr inbounds %struct.input_config_mapped_from_region, %struct.input_config_mapped_from_region* %19, i32 0, i32 2
  %21 = load double, double* %20, align 8
  store double %21, double* %11, align 8
  %22 = load %struct.input_config_mapped_from_region*, %struct.input_config_mapped_from_region** %6, align 8
  %23 = getelementptr inbounds %struct.input_config_mapped_from_region, %struct.input_config_mapped_from_region* %22, i32 0, i32 3
  %24 = load double, double* %23, align 8
  store double %24, double* %12, align 8
  %25 = load %struct.input_config_mapped_from_region*, %struct.input_config_mapped_from_region** %6, align 8
  %26 = getelementptr inbounds %struct.input_config_mapped_from_region, %struct.input_config_mapped_from_region* %25, i32 0, i32 4
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %61

29:                                               ; preds = %4
  %30 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %31 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %30, i32 0, i32 0
  %32 = load double, double* %31, align 8
  %33 = fcmp oeq double %32, 0.000000e+00
  br i1 %33, label %39, label %34

34:                                               ; preds = %29
  %35 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %36 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %35, i32 0, i32 1
  %37 = load double, double* %36, align 8
  %38 = fcmp oeq double %37, 0.000000e+00
  br i1 %38, label %39, label %40

39:                                               ; preds = %34, %29
  br label %74

40:                                               ; preds = %34
  %41 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %42 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %41, i32 0, i32 0
  %43 = load double, double* %42, align 8
  %44 = load double, double* %9, align 8
  %45 = fdiv double %44, %43
  store double %45, double* %9, align 8
  %46 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %47 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %46, i32 0, i32 0
  %48 = load double, double* %47, align 8
  %49 = load double, double* %10, align 8
  %50 = fdiv double %49, %48
  store double %50, double* %10, align 8
  %51 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %52 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %51, i32 0, i32 1
  %53 = load double, double* %52, align 8
  %54 = load double, double* %11, align 8
  %55 = fdiv double %54, %53
  store double %55, double* %11, align 8
  %56 = load %struct.wlr_input_device*, %struct.wlr_input_device** %5, align 8
  %57 = getelementptr inbounds %struct.wlr_input_device, %struct.wlr_input_device* %56, i32 0, i32 1
  %58 = load double, double* %57, align 8
  %59 = load double, double* %12, align 8
  %60 = fdiv double %59, %58
  store double %60, double* %12, align 8
  br label %61

61:                                               ; preds = %40, %4
  %62 = load double, double* %9, align 8
  %63 = load double, double* %10, align 8
  %64 = load double*, double** %7, align 8
  %65 = load double, double* %64, align 8
  %66 = call double @apply_mapping_from_coord(double %62, double %63, double %65)
  %67 = load double*, double** %7, align 8
  store double %66, double* %67, align 8
  %68 = load double, double* %11, align 8
  %69 = load double, double* %12, align 8
  %70 = load double*, double** %8, align 8
  %71 = load double, double* %70, align 8
  %72 = call double @apply_mapping_from_coord(double %68, double %69, double %71)
  %73 = load double*, double** %8, align 8
  store double %72, double* %73, align 8
  br label %74

74:                                               ; preds = %61, %39
  ret void
}

declare dso_local double @apply_mapping_from_coord(double, double, double) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
