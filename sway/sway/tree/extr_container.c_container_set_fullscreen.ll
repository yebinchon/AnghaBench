; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_set_fullscreen.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_set_fullscreen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.sway_container* }
%struct.sway_container = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.sway_container* }

@root = common dso_local global %struct.TYPE_4__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @container_set_fullscreen(%struct.sway_container* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  br label %69

11:                                               ; preds = %2
  %12 = load i32, i32* %4, align 4
  switch i32 %12, label %69 [
    i32 129, label %13
    i32 128, label %16
    i32 130, label %48
  ]

13:                                               ; preds = %11
  %14 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %15 = call i32 @container_fullscreen_disable(%struct.sway_container* %14)
  br label %69

16:                                               ; preds = %11
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.sway_container*, %struct.sway_container** %18, align 8
  %20 = icmp ne %struct.sway_container* %19, null
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load %struct.sway_container*, %struct.sway_container** %23, align 8
  %25 = call i32 @container_fullscreen_disable(%struct.sway_container* %24)
  br label %26

26:                                               ; preds = %21, %16
  %27 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %28 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %27, i32 0, i32 1
  %29 = load %struct.TYPE_3__*, %struct.TYPE_3__** %28, align 8
  %30 = icmp ne %struct.TYPE_3__* %29, null
  br i1 %30, label %31, label %45

31:                                               ; preds = %26
  %32 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %33 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %32, i32 0, i32 1
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load %struct.sway_container*, %struct.sway_container** %35, align 8
  %37 = icmp ne %struct.sway_container* %36, null
  br i1 %37, label %38, label %45

38:                                               ; preds = %31
  %39 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %40 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %39, i32 0, i32 1
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = load %struct.sway_container*, %struct.sway_container** %42, align 8
  %44 = call i32 @container_fullscreen_disable(%struct.sway_container* %43)
  br label %45

45:                                               ; preds = %38, %31, %26
  %46 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %47 = call i32 @container_fullscreen_workspace(%struct.sway_container* %46)
  br label %69

48:                                               ; preds = %11
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  %51 = load %struct.sway_container*, %struct.sway_container** %50, align 8
  %52 = icmp ne %struct.sway_container* %51, null
  br i1 %52, label %53, label %58

53:                                               ; preds = %48
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** @root, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load %struct.sway_container*, %struct.sway_container** %55, align 8
  %57 = call i32 @container_fullscreen_disable(%struct.sway_container* %56)
  br label %58

58:                                               ; preds = %53, %48
  %59 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %60 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp eq i32 %61, 128
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %65 = call i32 @container_fullscreen_disable(%struct.sway_container* %64)
  br label %66

66:                                               ; preds = %63, %58
  %67 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %68 = call i32 @container_fullscreen_global(%struct.sway_container* %67)
  br label %69

69:                                               ; preds = %10, %11, %66, %45, %13
  ret void
}

declare dso_local i32 @container_fullscreen_disable(%struct.sway_container*) #1

declare dso_local i32 @container_fullscreen_workspace(%struct.sway_container*) #1

declare dso_local i32 @container_fullscreen_global(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
