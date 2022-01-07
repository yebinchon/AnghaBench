; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_for_each_child.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_for_each_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sway_container** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_for_each_child(%struct.sway_container* %0, void (%struct.sway_container*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca void (%struct.sway_container*, i8*)*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store void (%struct.sway_container*, i8*)* %1, void (%struct.sway_container*, i8*)** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = icmp ne %struct.TYPE_2__* %11, null
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  store i32 0, i32* %7, align 4
  br label %14

14:                                               ; preds = %38, %13
  %15 = load i32, i32* %7, align 4
  %16 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %15, %20
  br i1 %21, label %22, label %41

22:                                               ; preds = %14
  %23 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %24 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %23, i32 0, i32 0
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 1
  %27 = load %struct.sway_container**, %struct.sway_container*** %26, align 8
  %28 = load i32, i32* %7, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %27, i64 %29
  %31 = load %struct.sway_container*, %struct.sway_container** %30, align 8
  store %struct.sway_container* %31, %struct.sway_container** %8, align 8
  %32 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %5, align 8
  %33 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %34 = load i8*, i8** %6, align 8
  call void %32(%struct.sway_container* %33, i8* %34)
  %35 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %36 = load void (%struct.sway_container*, i8*)*, void (%struct.sway_container*, i8*)** %5, align 8
  %37 = load i8*, i8** %6, align 8
  call void @container_for_each_child(%struct.sway_container* %35, void (%struct.sway_container*, i8*)* %36, i8* %37)
  br label %38

38:                                               ; preds = %22
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %7, align 4
  br label %14

41:                                               ; preds = %14
  br label %42

42:                                               ; preds = %41, %3
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
