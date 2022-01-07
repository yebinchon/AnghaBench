; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_replace.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_replace.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32, i32, float, float, %struct.sway_workspace*, i64 }
%struct.sway_workspace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_replace(%struct.sway_container* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.sway_workspace*, align 8
  %8 = alloca float, align 4
  %9 = alloca float, align 4
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %10 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %11 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %5, align 4
  %13 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %6, align 4
  store %struct.sway_workspace* null, %struct.sway_workspace** %7, align 8
  %16 = load i32, i32* %5, align 4
  %17 = icmp ne i32 %16, 129
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %20 = call i32 @container_fullscreen_disable(%struct.sway_container* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %6, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %32

24:                                               ; preds = %21
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 4
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %26, align 8
  store %struct.sway_workspace* %27, %struct.sway_workspace** %7, align 8
  %28 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %29 = call i32 @root_scratchpad_show(%struct.sway_container* %28)
  %30 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %31 = call i32 @root_scratchpad_remove_container(%struct.sway_container* %30)
  br label %32

32:                                               ; preds = %24, %21
  %33 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %34 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %33, i32 0, i32 5
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %42, label %37

37:                                               ; preds = %32
  %38 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %39 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %38, i32 0, i32 4
  %40 = load %struct.sway_workspace*, %struct.sway_workspace** %39, align 8
  %41 = icmp ne %struct.sway_workspace* %40, null
  br i1 %41, label %42, label %60

42:                                               ; preds = %37, %32
  %43 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %44 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %43, i32 0, i32 2
  %45 = load float, float* %44, align 8
  store float %45, float* %8, align 4
  %46 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %47 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %46, i32 0, i32 3
  %48 = load float, float* %47, align 4
  store float %48, float* %9, align 4
  %49 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %50 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %51 = call i32 @container_add_sibling(%struct.sway_container* %49, %struct.sway_container* %50, i32 1)
  %52 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %53 = call i32 @container_detach(%struct.sway_container* %52)
  %54 = load float, float* %8, align 4
  %55 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %56 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %55, i32 0, i32 2
  store float %54, float* %56, align 8
  %57 = load float, float* %9, align 4
  %58 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 3
  store float %57, float* %59, align 4
  br label %60

60:                                               ; preds = %42, %37
  %61 = load i32, i32* %6, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %60
  %64 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %65 = load %struct.sway_workspace*, %struct.sway_workspace** %7, align 8
  %66 = call i32 @root_scratchpad_add_container(%struct.sway_container* %64, %struct.sway_workspace* %65)
  br label %67

67:                                               ; preds = %63, %60
  %68 = load i32, i32* %5, align 4
  switch i32 %68, label %76 [
    i32 128, label %69
    i32 130, label %72
    i32 129, label %75
  ]

69:                                               ; preds = %67
  %70 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %71 = call i32 @container_fullscreen_workspace(%struct.sway_container* %70)
  br label %76

72:                                               ; preds = %67
  %73 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %74 = call i32 @container_fullscreen_global(%struct.sway_container* %73)
  br label %76

75:                                               ; preds = %67
  br label %76

76:                                               ; preds = %67, %75, %72, %69
  ret void
}

declare dso_local i32 @container_fullscreen_disable(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_show(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_remove_container(%struct.sway_container*) #1

declare dso_local i32 @container_add_sibling(%struct.sway_container*, %struct.sway_container*, i32) #1

declare dso_local i32 @container_detach(%struct.sway_container*) #1

declare dso_local i32 @root_scratchpad_add_container(%struct.sway_container*, %struct.sway_workspace*) #1

declare dso_local i32 @container_fullscreen_workspace(%struct.sway_container*) #1

declare dso_local i32 @container_fullscreen_global(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
