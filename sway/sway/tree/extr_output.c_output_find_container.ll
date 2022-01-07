; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_find_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_output.c_output_find_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32 }
%struct.sway_output = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sway_workspace** }
%struct.sway_workspace = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @output_find_container(%struct.sway_output* %0, i32 (%struct.sway_container*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_output*, align 8
  %6 = alloca i32 (%struct.sway_container*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_workspace*, align 8
  store %struct.sway_output* %0, %struct.sway_output** %5, align 8
  store i32 (%struct.sway_container*, i8*)* %1, i32 (%struct.sway_container*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.sway_container* null, %struct.sway_container** %8, align 8
  store i32 0, i32* %9, align 4
  br label %11

11:                                               ; preds = %37, %3
  %12 = load i32, i32* %9, align 4
  %13 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %14 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %40

19:                                               ; preds = %11
  %20 = load %struct.sway_output*, %struct.sway_output** %5, align 8
  %21 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load %struct.sway_workspace**, %struct.sway_workspace*** %23, align 8
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sway_workspace*, %struct.sway_workspace** %24, i64 %26
  %28 = load %struct.sway_workspace*, %struct.sway_workspace** %27, align 8
  store %struct.sway_workspace* %28, %struct.sway_workspace** %10, align 8
  %29 = load %struct.sway_workspace*, %struct.sway_workspace** %10, align 8
  %30 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %6, align 8
  %31 = load i8*, i8** %7, align 8
  %32 = call %struct.sway_container* @workspace_find_container(%struct.sway_workspace* %29, i32 (%struct.sway_container*, i8*)* %30, i8* %31)
  store %struct.sway_container* %32, %struct.sway_container** %8, align 8
  %33 = icmp ne %struct.sway_container* %32, null
  br i1 %33, label %34, label %36

34:                                               ; preds = %19
  %35 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  store %struct.sway_container* %35, %struct.sway_container** %4, align 8
  br label %41

36:                                               ; preds = %19
  br label %37

37:                                               ; preds = %36
  %38 = load i32, i32* %9, align 4
  %39 = add nsw i32 %38, 1
  store i32 %39, i32* %9, align 4
  br label %11

40:                                               ; preds = %11
  store %struct.sway_container* null, %struct.sway_container** %4, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  ret %struct.sway_container* %42
}

declare dso_local %struct.sway_container* @workspace_find_container(%struct.sway_workspace*, i32 (%struct.sway_container*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
