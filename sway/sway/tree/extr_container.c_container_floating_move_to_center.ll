; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_move_to_center.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_floating_move_to_center.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32, i32, i64, i64, %struct.sway_workspace* }
%struct.sway_workspace = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"Expected a floating container\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_floating_move_to_center(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_workspace*, align 8
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  store %struct.sway_container* %0, %struct.sway_container** %2, align 8
  %6 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %7 = call i32 @container_is_floating(%struct.sway_container* %6)
  %8 = call i32 @sway_assert(i32 %7, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %57

11:                                               ; preds = %1
  %12 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %13 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %12, i32 0, i32 4
  %14 = load %struct.sway_workspace*, %struct.sway_workspace** %13, align 8
  store %struct.sway_workspace* %14, %struct.sway_workspace** %3, align 8
  %15 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %16 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %19 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sub nsw i32 %20, %23
  %25 = sdiv i32 %24, 2
  %26 = add nsw i32 %17, %25
  %27 = sitofp i32 %26 to double
  store double %27, double* %4, align 8
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %29 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %28, i32 0, i32 2
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.sway_workspace*, %struct.sway_workspace** %3, align 8
  %32 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %35 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = sub nsw i32 %33, %36
  %38 = sdiv i32 %37, 2
  %39 = add nsw i32 %30, %38
  %40 = sitofp i32 %39 to double
  store double %40, double* %5, align 8
  %41 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %42 = load double, double* %4, align 8
  %43 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %44 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %43, i32 0, i32 3
  %45 = load i64, i64* %44, align 8
  %46 = sitofp i64 %45 to double
  %47 = fsub double %42, %46
  %48 = fptosi double %47 to i64
  %49 = load double, double* %5, align 8
  %50 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 2
  %52 = load i64, i64* %51, align 8
  %53 = sitofp i64 %52 to double
  %54 = fsub double %49, %53
  %55 = fptosi double %54 to i64
  %56 = call i32 @container_floating_translate(%struct.sway_container* %41, i64 %48, i64 %55)
  br label %57

57:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @container_is_floating(%struct.sway_container*) #1

declare dso_local i32 @container_floating_translate(%struct.sway_container*, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
