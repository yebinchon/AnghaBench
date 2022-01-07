; ModuleID = '/home/carl/AnghaBench/sway/sway/config/extr_output.c_default_output_config.c'
source_filename = "/home/carl/AnghaBench/sway/sway/config/extr_output.c_default_output_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.output_config = type { i32, float, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.wlr_output = type { %struct.sway_output* }
%struct.sway_output = type { i32 }
%struct.wlr_output_mode = type { float, i32, i32 }

@WL_OUTPUT_TRANSFORM_NORMAL = common dso_local global i32 0, align 4
@DPMS_ON = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.output_config*, %struct.wlr_output*)* @default_output_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @default_output_config(%struct.output_config* %0, %struct.wlr_output* %1) #0 {
  %3 = alloca %struct.output_config*, align 8
  %4 = alloca %struct.wlr_output*, align 8
  %5 = alloca %struct.wlr_output_mode*, align 8
  %6 = alloca %struct.sway_output*, align 8
  store %struct.output_config* %0, %struct.output_config** %3, align 8
  store %struct.wlr_output* %1, %struct.wlr_output** %4, align 8
  %7 = load %struct.output_config*, %struct.output_config** %3, align 8
  %8 = getelementptr inbounds %struct.output_config, %struct.output_config* %7, i32 0, i32 0
  store i32 1, i32* %8, align 4
  %9 = load %struct.wlr_output*, %struct.wlr_output** %4, align 8
  %10 = call %struct.wlr_output_mode* @wlr_output_preferred_mode(%struct.wlr_output* %9)
  store %struct.wlr_output_mode* %10, %struct.wlr_output_mode** %5, align 8
  %11 = load %struct.wlr_output_mode*, %struct.wlr_output_mode** %5, align 8
  %12 = icmp ne %struct.wlr_output_mode* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.wlr_output_mode*, %struct.wlr_output_mode** %5, align 8
  %15 = getelementptr inbounds %struct.wlr_output_mode, %struct.wlr_output_mode* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.output_config*, %struct.output_config** %3, align 8
  %18 = getelementptr inbounds %struct.output_config, %struct.output_config* %17, i32 0, i32 9
  store i32 %16, i32* %18, align 4
  %19 = load %struct.wlr_output_mode*, %struct.wlr_output_mode** %5, align 8
  %20 = getelementptr inbounds %struct.wlr_output_mode, %struct.wlr_output_mode* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.output_config*, %struct.output_config** %3, align 8
  %23 = getelementptr inbounds %struct.output_config, %struct.output_config* %22, i32 0, i32 8
  store i32 %21, i32* %23, align 4
  %24 = load %struct.wlr_output_mode*, %struct.wlr_output_mode** %5, align 8
  %25 = getelementptr inbounds %struct.wlr_output_mode, %struct.wlr_output_mode* %24, i32 0, i32 0
  %26 = load float, float* %25, align 4
  %27 = fdiv float %26, 1.000000e+03
  %28 = load %struct.output_config*, %struct.output_config** %3, align 8
  %29 = getelementptr inbounds %struct.output_config, %struct.output_config* %28, i32 0, i32 1
  store float %27, float* %29, align 4
  br label %30

30:                                               ; preds = %13, %2
  %31 = load %struct.output_config*, %struct.output_config** %3, align 8
  %32 = getelementptr inbounds %struct.output_config, %struct.output_config* %31, i32 0, i32 3
  store i32 -1, i32* %32, align 4
  %33 = load %struct.output_config*, %struct.output_config** %3, align 8
  %34 = getelementptr inbounds %struct.output_config, %struct.output_config* %33, i32 0, i32 2
  store i32 -1, i32* %34, align 4
  %35 = load %struct.output_config*, %struct.output_config** %3, align 8
  %36 = getelementptr inbounds %struct.output_config, %struct.output_config* %35, i32 0, i32 4
  store i32 1, i32* %36, align 4
  %37 = load %struct.wlr_output*, %struct.wlr_output** %4, align 8
  %38 = getelementptr inbounds %struct.wlr_output, %struct.wlr_output* %37, i32 0, i32 0
  %39 = load %struct.sway_output*, %struct.sway_output** %38, align 8
  store %struct.sway_output* %39, %struct.sway_output** %6, align 8
  %40 = load %struct.sway_output*, %struct.sway_output** %6, align 8
  %41 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.output_config*, %struct.output_config** %3, align 8
  %44 = getelementptr inbounds %struct.output_config, %struct.output_config* %43, i32 0, i32 7
  store i32 %42, i32* %44, align 4
  %45 = load i32, i32* @WL_OUTPUT_TRANSFORM_NORMAL, align 4
  %46 = load %struct.output_config*, %struct.output_config** %3, align 8
  %47 = getelementptr inbounds %struct.output_config, %struct.output_config* %46, i32 0, i32 6
  store i32 %45, i32* %47, align 4
  %48 = load i32, i32* @DPMS_ON, align 4
  %49 = load %struct.output_config*, %struct.output_config** %3, align 8
  %50 = getelementptr inbounds %struct.output_config, %struct.output_config* %49, i32 0, i32 5
  store i32 %48, i32* %50, align 4
  ret void
}

declare dso_local %struct.wlr_output_mode* @wlr_output_preferred_mode(%struct.wlr_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
