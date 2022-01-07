; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_move_to.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_move_to.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_workspace*, i64, i64 }
%struct.sway_workspace = type { i32 }
%struct.sway_output = type { i32 }

@.str = private unnamed_addr constant [30 x i8] c"Expected a floating container\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"Unable to find any output\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_floating_move_to(%struct.sway_container* %0, double %1, double %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca %struct.sway_output*, align 8
  %9 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store double %1, double* %5, align 8
  store double %2, double* %6, align 8
  %10 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %11 = call %struct.sway_output* @container_is_floating(%struct.sway_container* %10)
  %12 = call i32 @sway_assert(%struct.sway_output* %11, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %15, label %14

14:                                               ; preds = %3
  br label %69

15:                                               ; preds = %3
  %16 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %17 = load double, double* %5, align 8
  %18 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %19 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %18, i32 0, i32 2
  %20 = load i64, i64* %19, align 8
  %21 = sitofp i64 %20 to double
  %22 = fsub double %17, %21
  %23 = fptosi double %22 to i64
  %24 = load double, double* %6, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sitofp i64 %27 to double
  %29 = fsub double %24, %28
  %30 = fptosi double %29 to i64
  %31 = call i32 @container_floating_translate(%struct.sway_container* %16, i64 %23, i64 %30)
  %32 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %33 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %15
  br label %69

36:                                               ; preds = %15
  %37 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %38 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %37, i32 0, i32 0
  %39 = load %struct.sway_workspace*, %struct.sway_workspace** %38, align 8
  store %struct.sway_workspace* %39, %struct.sway_workspace** %7, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %41 = call %struct.sway_output* @container_floating_find_output(%struct.sway_container* %40)
  store %struct.sway_output* %41, %struct.sway_output** %8, align 8
  %42 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %43 = call i32 @sway_assert(%struct.sway_output* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %36
  br label %69

46:                                               ; preds = %36
  %47 = load %struct.sway_output*, %struct.sway_output** %8, align 8
  %48 = call %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output* %47)
  store %struct.sway_workspace* %48, %struct.sway_workspace** %9, align 8
  %49 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %50 = icmp ne %struct.sway_workspace* %49, null
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %53 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %54 = icmp ne %struct.sway_workspace* %52, %53
  br i1 %54, label %55, label %69

55:                                               ; preds = %51
  %56 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %57 = call i32 @container_detach(%struct.sway_container* %56)
  %58 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %59 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %60 = call i32 @workspace_add_floating(%struct.sway_workspace* %58, %struct.sway_container* %59)
  %61 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %62 = call i32 @arrange_workspace(%struct.sway_workspace* %61)
  %63 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %64 = call i32 @arrange_workspace(%struct.sway_workspace* %63)
  %65 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %66 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %65)
  %67 = load %struct.sway_workspace*, %struct.sway_workspace** %9, align 8
  %68 = call i32 @workspace_detect_urgent(%struct.sway_workspace* %67)
  br label %69

69:                                               ; preds = %14, %35, %45, %55, %51, %46
  ret void
}

declare dso_local i32 @sway_assert(%struct.sway_output*, i8*) #1

declare dso_local %struct.sway_output* @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_floating_translate(%struct.sway_container*, i64, i64) #1

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local %struct.sway_output* @container_floating_find_output(%struct.sway_container*) #1

declare dso_local %struct.sway_workspace* @output_get_active_workspace(%struct.sway_output*) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @workspace_add_floating(%struct.sway_workspace*, %struct.sway_container*) #1

declare dso_local i32 @arrange_workspace(%struct.sway_workspace*) #1

declare dso_local i32 @workspace_detect_urgent(%struct.sway_workspace*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
