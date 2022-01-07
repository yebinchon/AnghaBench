; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_update_representation.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_update_representation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { i32*, i32, i32 }

@.str = private unnamed_addr constant [32 x i8] c"Unable to allocate title string\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_update_representation(%struct.sway_workspace* %0) #0 {
  %2 = alloca %struct.sway_workspace*, align 8
  %3 = alloca i64, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %2, align 8
  %4 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %5 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %4, i32 0, i32 2
  %6 = load i32, i32* %5, align 4
  %7 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %8 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = call i64 @container_build_representation(i32 %6, i32 %9, i32* null)
  store i64 %10, i64* %3, align 8
  %11 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %12 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  %14 = call i32 @free(i32* %13)
  %15 = load i64, i64* %3, align 8
  %16 = add i64 %15, 1
  %17 = call i32* @calloc(i64 %16, i32 1)
  %18 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %19 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %18, i32 0, i32 0
  store i32* %17, i32** %19, align 8
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %21 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = call i32 @sway_assert(i32* %22, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  br label %37

26:                                               ; preds = %1
  %27 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %28 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %31 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = load %struct.sway_workspace*, %struct.sway_workspace** %2, align 8
  %34 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = call i64 @container_build_representation(i32 %29, i32 %32, i32* %35)
  br label %37

37:                                               ; preds = %26, %25
  ret void
}

declare dso_local i64 @container_build_representation(i32, i32, i32*) #1

declare dso_local i32 @free(i32*) #1

declare dso_local i32* @calloc(i64, i32) #1

declare dso_local i32 @sway_assert(i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
