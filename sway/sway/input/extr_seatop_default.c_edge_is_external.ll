; ModuleID = '/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_edge_is_external.c'
source_filename = "/home/carl/AnghaBench/sway/sway/input/extr_seatop_default.c_edge_is_external.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { %struct.sway_container* }
%struct.TYPE_4__ = type { i32 }

@L_NONE = common dso_local global i32 0, align 4
@L_VERT = common dso_local global i32 0, align 4
@L_HORIZ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"Never reached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_container*, i32)* @edge_is_external to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @edge_is_external(%struct.sway_container* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %4, align 8
  store i32 %1, i32* %5, align 4
  %9 = load i32, i32* @L_NONE, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  switch i32 %10, label %17 [
    i32 128, label %11
    i32 132, label %11
    i32 131, label %13
    i32 129, label %13
    i32 130, label %15
  ]

11:                                               ; preds = %2, %2
  %12 = load i32, i32* @L_VERT, align 4
  store i32 %12, i32* %6, align 4
  br label %17

13:                                               ; preds = %2, %2
  %14 = load i32, i32* @L_HORIZ, align 4
  store i32 %14, i32* %6, align 4
  br label %17

15:                                               ; preds = %2
  %16 = call i32 @sway_assert(i32 0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %61

17:                                               ; preds = %2, %13, %11
  br label %18

18:                                               ; preds = %56, %17
  %19 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %20 = icmp ne %struct.sway_container* %19, null
  br i1 %20, label %21, label %60

21:                                               ; preds = %18
  %22 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %23 = call i32 @container_parent_layout(%struct.sway_container* %22)
  %24 = load i32, i32* %6, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %56

26:                                               ; preds = %21
  %27 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %28 = call %struct.TYPE_4__* @container_get_siblings(%struct.sway_container* %27)
  store %struct.TYPE_4__* %28, %struct.TYPE_4__** %7, align 8
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %30 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %31 = call i32 @list_find(%struct.TYPE_4__* %29, %struct.sway_container* %30)
  store i32 %31, i32* %8, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %41

34:                                               ; preds = %26
  %35 = load i32, i32* %5, align 4
  %36 = icmp eq i32 %35, 131
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %5, align 4
  %39 = icmp eq i32 %38, 128
  br i1 %39, label %40, label %41

40:                                               ; preds = %37, %34
  store i32 0, i32* %3, align 4
  br label %61

41:                                               ; preds = %37, %26
  %42 = load i32, i32* %8, align 4
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = sub nsw i32 %45, 1
  %47 = icmp slt i32 %42, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %41
  %49 = load i32, i32* %5, align 4
  %50 = icmp eq i32 %49, 129
  br i1 %50, label %54, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* %5, align 4
  %53 = icmp eq i32 %52, 132
  br i1 %53, label %54, label %55

54:                                               ; preds = %51, %48
  store i32 0, i32* %3, align 4
  br label %61

55:                                               ; preds = %51, %41
  br label %56

56:                                               ; preds = %55, %21
  %57 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 0
  %59 = load %struct.sway_container*, %struct.sway_container** %58, align 8
  store %struct.sway_container* %59, %struct.sway_container** %4, align 8
  br label %18

60:                                               ; preds = %18
  store i32 1, i32* %3, align 4
  br label %61

61:                                               ; preds = %60, %54, %40, %15
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @container_parent_layout(%struct.sway_container*) #1

declare dso_local %struct.TYPE_4__* @container_get_siblings(%struct.sway_container*) #1

declare dso_local i32 @list_find(%struct.TYPE_4__*, %struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
