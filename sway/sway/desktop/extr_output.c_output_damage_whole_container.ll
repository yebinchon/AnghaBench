; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_damage_whole_container.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_output.c_output_damage_whole_container.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_output = type { i32, %struct.TYPE_3__*, i64, i64 }
%struct.TYPE_3__ = type { i32 }
%struct.sway_container = type { i64, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i64, i64 }
%struct.wlr_box = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @output_damage_whole_container(%struct.sway_output* %0, %struct.sway_container* %1) #0 {
  %3 = alloca %struct.sway_output*, align 8
  %4 = alloca %struct.sway_container*, align 8
  %5 = alloca %struct.wlr_box, align 4
  store %struct.sway_output* %0, %struct.sway_output** %3, align 8
  store %struct.sway_container* %1, %struct.sway_container** %4, align 8
  %6 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %5, i32 0, i32 0
  %7 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %8 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = add nsw i32 %10, 2
  store i32 %11, i32* %6, align 4
  %12 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %5, i32 0, i32 1
  %13 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %14 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = add nsw i32 %16, 2
  store i32 %17, i32* %12, align 4
  %18 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %5, i32 0, i32 2
  %19 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %20 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 2
  %22 = load i64, i64* %21, align 8
  %23 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %24 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = sub nsw i64 %22, %25
  %27 = sub nsw i64 %26, 1
  %28 = trunc i64 %27 to i32
  store i32 %28, i32* %18, align 4
  %29 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %5, i32 0, i32 3
  %30 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %31 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 3
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %35 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %34, i32 0, i32 3
  %36 = load i64, i64* %35, align 8
  %37 = sub nsw i64 %33, %36
  %38 = sub nsw i64 %37, 1
  %39 = trunc i64 %38 to i32
  store i32 %39, i32* %29, align 4
  %40 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %41 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @scale_box(%struct.wlr_box* %5, i32 %44)
  %46 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %47 = getelementptr inbounds %struct.sway_output, %struct.sway_output* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @wlr_output_damage_add_box(i32 %48, %struct.wlr_box* %5)
  %50 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %51 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %2
  %55 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %56 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %57 = call i32 @damage_child_views_iterator(%struct.sway_container* %55, %struct.sway_output* %56)
  br label %62

58:                                               ; preds = %2
  %59 = load %struct.sway_container*, %struct.sway_container** %4, align 8
  %60 = load %struct.sway_output*, %struct.sway_output** %3, align 8
  %61 = call i32 @container_for_each_child(%struct.sway_container* %59, i32 (%struct.sway_container*, %struct.sway_output*)* @damage_child_views_iterator, %struct.sway_output* %60)
  br label %62

62:                                               ; preds = %58, %54
  ret void
}

declare dso_local i32 @scale_box(%struct.wlr_box*, i32) #1

declare dso_local i32 @wlr_output_damage_add_box(i32, %struct.wlr_box*) #1

declare dso_local i32 @damage_child_views_iterator(%struct.sway_container*, %struct.sway_output*) #1

declare dso_local i32 @container_for_each_child(%struct.sway_container*, i32 (%struct.sway_container*, %struct.sway_output*)*, %struct.sway_output*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
