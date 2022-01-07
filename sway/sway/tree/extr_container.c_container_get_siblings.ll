; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_get_siblings.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_container.c_container_get_siblings.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32*, i32* }
%struct.TYPE_3__ = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @container_get_siblings(%struct.sway_container* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca %struct.sway_container*, align 8
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  %4 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %5 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = icmp ne %struct.TYPE_3__* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %1
  %9 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %10 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %9, i32 0, i32 1
  %11 = load %struct.TYPE_3__*, %struct.TYPE_3__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %2, align 8
  br label %40

14:                                               ; preds = %1
  %15 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %16 = call i64 @container_is_scratchpad_hidden(%struct.sway_container* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %14
  store i32* null, i32** %2, align 8
  br label %40

19:                                               ; preds = %14
  %20 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %21 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %20, i32 0, i32 0
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %26 = call i32 @list_find(i32* %24, %struct.sway_container* %25)
  %27 = icmp ne i32 %26, -1
  br i1 %27, label %28, label %34

28:                                               ; preds = %19
  %29 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %30 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  store i32* %33, i32** %2, align 8
  br label %40

34:                                               ; preds = %19
  %35 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %36 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %35, i32 0, i32 0
  %37 = load %struct.TYPE_4__*, %struct.TYPE_4__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %2, align 8
  br label %40

40:                                               ; preds = %34, %28, %18, %8
  %41 = load i32*, i32** %2, align 8
  ret i32* %41
}

declare dso_local i64 @container_is_scratchpad_hidden(%struct.sway_container*) #1

declare dso_local i32 @list_find(i32*, %struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
