; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_flatten.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_flatten.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_container*, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32, %struct.sway_container** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @container_flatten(%struct.sway_container* %0) #0 {
  %2 = alloca %struct.sway_container*, align 8
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  %6 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %7 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %6, i32 0, i32 2
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store %struct.sway_container* null, %struct.sway_container** %2, align 8
  br label %43

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %24, %11
  %13 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %14 = icmp ne %struct.sway_container* %13, null
  br i1 %14, label %15, label %22

15:                                               ; preds = %12
  %16 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %17 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp eq i32 %20, 1
  br label %22

22:                                               ; preds = %15, %12
  %23 = phi i1 [ false, %12 ], [ %21, %15 ]
  br i1 %23, label %24, label %41

24:                                               ; preds = %22
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %25, i32 0, i32 1
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  %29 = load %struct.sway_container**, %struct.sway_container*** %28, align 8
  %30 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %29, i64 0
  %31 = load %struct.sway_container*, %struct.sway_container** %30, align 8
  store %struct.sway_container* %31, %struct.sway_container** %4, align 8
  %32 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 0
  %34 = load %struct.sway_container*, %struct.sway_container** %33, align 8
  store %struct.sway_container* %34, %struct.sway_container** %5, align 8
  %35 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %36 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %37 = call i32 @container_replace(%struct.sway_container* %35, %struct.sway_container* %36)
  %38 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %39 = call i32 @container_begin_destroy(%struct.sway_container* %38)
  %40 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  store %struct.sway_container* %40, %struct.sway_container** %3, align 8
  br label %12

41:                                               ; preds = %22
  %42 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  store %struct.sway_container* %42, %struct.sway_container** %2, align 8
  br label %43

43:                                               ; preds = %41, %10
  %44 = load %struct.sway_container*, %struct.sway_container** %2, align 8
  ret %struct.sway_container* %44
}

declare dso_local i32 @container_replace(%struct.sway_container*, %struct.sway_container*) #1

declare dso_local i32 @container_begin_destroy(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
