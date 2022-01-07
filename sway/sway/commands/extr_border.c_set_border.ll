; ModuleID = '/home/carl/AnghaBench/sway/sway/commands/extr_border.c_set_border.c'
source_filename = "/home/carl/AnghaBench/sway/sway/commands/extr_border.c_set_border.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_container = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@B_CSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_container*, i32)* @set_border to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_border(%struct.sway_container* %0, i32 %1) #0 {
  %3 = alloca %struct.sway_container*, align 8
  %4 = alloca i32, align 4
  store %struct.sway_container* %0, %struct.sway_container** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %6 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %5, i32 0, i32 2
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = icmp ne %struct.TYPE_2__* %7, null
  br i1 %8, label %9, label %48

9:                                                ; preds = %2
  %10 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %11 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %10, i32 0, i32 2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i32, i32* %4, align 4
  %18 = load i32, i32* @B_CSD, align 4
  %19 = icmp ne i32 %17, %18
  br i1 %19, label %20, label %25

20:                                               ; preds = %16
  %21 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %22 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %21, i32 0, i32 2
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = call i32 @view_set_csd_from_server(%struct.TYPE_2__* %23, i32 0)
  br label %47

25:                                               ; preds = %16, %9
  %26 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %27 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %46, label %32

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = load i32, i32* @B_CSD, align 4
  %35 = icmp eq i32 %33, %34
  br i1 %35, label %36, label %46

36:                                               ; preds = %32
  %37 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %38 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %37, i32 0, i32 2
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = call i32 @view_set_csd_from_server(%struct.TYPE_2__* %39, i32 1)
  %41 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %42 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %45 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %44, i32 0, i32 0
  store i32 %43, i32* %45, align 8
  br label %46

46:                                               ; preds = %36, %32, %25
  br label %47

47:                                               ; preds = %46, %20
  br label %48

48:                                               ; preds = %47, %2
  %49 = load i32, i32* %4, align 4
  %50 = load i32, i32* @B_CSD, align 4
  %51 = icmp ne i32 %49, %50
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %54 = call i64 @container_is_floating(%struct.sway_container* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %60

56:                                               ; preds = %52, %48
  %57 = load i32, i32* %4, align 4
  %58 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %59 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %58, i32 0, i32 1
  store i32 %57, i32* %59, align 4
  br label %60

60:                                               ; preds = %56, %52
  %61 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 2
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = icmp ne %struct.TYPE_2__* %63, null
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i32, i32* %4, align 4
  %67 = load i32, i32* @B_CSD, align 4
  %68 = icmp eq i32 %66, %67
  %69 = zext i1 %68 to i32
  %70 = load %struct.sway_container*, %struct.sway_container** %3, align 8
  %71 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %70, i32 0, i32 2
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 0
  store i32 %69, i32* %73, align 4
  br label %74

74:                                               ; preds = %65, %60
  ret void
}

declare dso_local i32 @view_set_csd_from_server(%struct.TYPE_2__*, i32) #1

declare dso_local i64 @container_is_floating(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
