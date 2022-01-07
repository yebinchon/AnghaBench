; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_find_child.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_find_child.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, %struct.sway_container** }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sway_container* @container_find_child(%struct.sway_container* %0, i32 (%struct.sway_container*, i8*)* %1, i8* %2) #0 {
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.sway_container*, align 8
  %6 = alloca i32 (%struct.sway_container*, i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sway_container*, align 8
  %10 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %5, align 8
  store i32 (%struct.sway_container*, i8*)* %1, i32 (%struct.sway_container*, i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %12 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  store %struct.sway_container* null, %struct.sway_container** %4, align 8
  br label %56

16:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %17

17:                                               ; preds = %52, %16
  %18 = load i32, i32* %8, align 4
  %19 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 0
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %18, %23
  br i1 %24, label %25, label %55

25:                                               ; preds = %17
  %26 = load %struct.sway_container*, %struct.sway_container** %5, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 1
  %30 = load %struct.sway_container**, %struct.sway_container*** %29, align 8
  %31 = load i32, i32* %8, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %30, i64 %32
  %34 = load %struct.sway_container*, %struct.sway_container** %33, align 8
  store %struct.sway_container* %34, %struct.sway_container** %9, align 8
  %35 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %6, align 8
  %36 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 %35(%struct.sway_container* %36, i8* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %25
  %41 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  store %struct.sway_container* %41, %struct.sway_container** %4, align 8
  br label %56

42:                                               ; preds = %25
  %43 = load %struct.sway_container*, %struct.sway_container** %9, align 8
  %44 = load i32 (%struct.sway_container*, i8*)*, i32 (%struct.sway_container*, i8*)** %6, align 8
  %45 = load i8*, i8** %7, align 8
  %46 = call %struct.sway_container* @container_find_child(%struct.sway_container* %43, i32 (%struct.sway_container*, i8*)* %44, i8* %45)
  store %struct.sway_container* %46, %struct.sway_container** %10, align 8
  %47 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  %48 = icmp ne %struct.sway_container* %47, null
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load %struct.sway_container*, %struct.sway_container** %10, align 8
  store %struct.sway_container* %50, %struct.sway_container** %4, align 8
  br label %56

51:                                               ; preds = %42
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %8, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %8, align 4
  br label %17

55:                                               ; preds = %17
  store %struct.sway_container* null, %struct.sway_container** %4, align 8
  br label %56

56:                                               ; preds = %55, %49, %40, %15
  %57 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  ret %struct.sway_container* %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
