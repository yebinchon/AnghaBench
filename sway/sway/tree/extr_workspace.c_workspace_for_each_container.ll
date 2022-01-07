; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_for_each_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_workspace.c_workspace_for_each_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_workspace = type { %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.sway_container = type opaque
%struct.TYPE_4__ = type { i32, %struct.sway_container** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @workspace_for_each_container(%struct.sway_workspace* %0, void (%struct.sway_container*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.sway_workspace*, align 8
  %5 = alloca void (%struct.sway_container*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sway_container*, align 8
  store %struct.sway_workspace* %0, %struct.sway_workspace** %4, align 8
  store void (%struct.sway_container*, i8*)* %1, void (%struct.sway_container*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  store i32 0, i32* %7, align 4
  br label %11

11:                                               ; preds = %36, %3
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %14 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %13, i32 0, i32 1
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp slt i32 %12, %17
  br i1 %18, label %19, label %39

19:                                               ; preds = %11
  %20 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %21 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %20, i32 0, i32 1
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load %struct.sway_container**, %struct.sway_container*** %23, align 8
  %25 = load i32, i32* %7, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %24, i64 %26
  %28 = load %struct.sway_container*, %struct.sway_container** %27, align 8
  store %struct.sway_container* %28, %struct.sway_container** %8, align 8
  %29 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %5, align 8
  %30 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %31 = load i8*, i8** %6, align 8
  call void %29(%struct.sway_container* %30, i8* %31)
  %32 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %33 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %5, align 8
  %34 = load i8*, i8** %6, align 8
  %35 = call i32 @container_for_each_child(%struct.sway_container* %32, void (%struct.sway_container*, i8*)* %33, i8* %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %7, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %7, align 4
  br label %11

39:                                               ; preds = %11
  store i32 0, i32* %9, align 4
  br label %40

40:                                               ; preds = %65, %39
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %43 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = icmp slt i32 %41, %46
  br i1 %47, label %48, label %68

48:                                               ; preds = %40
  %49 = load %struct.sway_workspace*, %struct.sway_workspace** %4, align 8
  %50 = getelementptr inbounds %struct.sway_workspace, %struct.sway_workspace* %49, i32 0, i32 0
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load %struct.sway_container**, %struct.sway_container*** %52, align 8
  %54 = load i32, i32* %9, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %53, i64 %55
  %57 = load %struct.sway_container*, %struct.sway_container** %56, align 8
  store %struct.sway_container* %57, %struct.sway_container** %10, align 8
  %58 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %5, align 8
  %59 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %60 = load i8*, i8** %6, align 8
  call void %58(%struct.sway_container* %59, i8* %60)
  %61 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %62 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %5, align 8
  %63 = load i8*, i8** %6, align 8
  %64 = call i32 @container_for_each_child(%struct.sway_container* %61, void (%struct.sway_container*, i8*)* %62, i8* %63)
  br label %65

65:                                               ; preds = %48
  %66 = load i32, i32* %9, align 4
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %9, align 4
  br label %40

68:                                               ; preds = %40
  ret void
}

declare dso_local i32 @container_for_each_child(%struct.sway_container*, void (%struct.sway_container*, i8*)*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
