; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_widget.c_widget_find_mouse_target.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_widget.c_widget_find_mouse_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, {}* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_6__* @widget_find_mouse_target(%struct.TYPE_6__* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %12 = icmp ne %struct.TYPE_6__* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %44

14:                                               ; preds = %4
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 1
  %17 = bitcast {}** %16 to %struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)**
  %18 = load %struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)*, %struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)** %17, align 8
  %19 = icmp ne %struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)* %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %14
  %21 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 1
  %23 = bitcast {}** %22 to %struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)**
  %24 = load %struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)*, %struct.TYPE_6__* (%struct.TYPE_6__*, i64, i32, i32)** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* %9, align 4
  %29 = call %struct.TYPE_6__* %24(%struct.TYPE_6__* %25, i64 %26, i32 %27, i32 %28)
  store %struct.TYPE_6__* %29, %struct.TYPE_6__** %10, align 8
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %31 = icmp ne %struct.TYPE_6__* %30, null
  br i1 %31, label %32, label %34

32:                                               ; preds = %20
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  store %struct.TYPE_6__* %33, %struct.TYPE_6__** %5, align 8
  br label %44

34:                                               ; preds = %20
  br label %35

35:                                               ; preds = %34, %14
  %36 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* %7, align 8
  %40 = icmp eq i64 %38, %39
  br i1 %40, label %41, label %43

41:                                               ; preds = %35
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  store %struct.TYPE_6__* %42, %struct.TYPE_6__** %5, align 8
  br label %44

43:                                               ; preds = %35
  store %struct.TYPE_6__* null, %struct.TYPE_6__** %5, align 8
  br label %44

44:                                               ; preds = %43, %41, %32, %13
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  ret %struct.TYPE_6__* %45
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
