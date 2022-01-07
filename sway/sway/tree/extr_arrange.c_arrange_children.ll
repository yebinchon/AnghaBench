; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_children.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_arrange_children.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i32 }
%struct.wlr_box = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_7__*, i32, %struct.wlr_box*)* @arrange_children to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @arrange_children(%struct.TYPE_7__* %0, i32 %1, %struct.wlr_box* %2) #0 {
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.wlr_box*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sway_container*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.wlr_box* %2, %struct.wlr_box** %6, align 8
  %9 = load i32, i32* %5, align 4
  switch i32 %9, label %30 [
    i32 132, label %10
    i32 128, label %14
    i32 129, label %18
    i32 130, label %22
    i32 131, label %26
  ]

10:                                               ; preds = %3
  %11 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %12 = load %struct.wlr_box*, %struct.wlr_box** %6, align 8
  %13 = call i32 @apply_horiz_layout(%struct.TYPE_7__* %11, %struct.wlr_box* %12)
  br label %30

14:                                               ; preds = %3
  %15 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %16 = load %struct.wlr_box*, %struct.wlr_box** %6, align 8
  %17 = call i32 @apply_vert_layout(%struct.TYPE_7__* %15, %struct.wlr_box* %16)
  br label %30

18:                                               ; preds = %3
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %20 = load %struct.wlr_box*, %struct.wlr_box** %6, align 8
  %21 = call i32 @apply_tabbed_layout(%struct.TYPE_7__* %19, %struct.wlr_box* %20)
  br label %30

22:                                               ; preds = %3
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %24 = load %struct.wlr_box*, %struct.wlr_box** %6, align 8
  %25 = call i32 @apply_stacked_layout(%struct.TYPE_7__* %23, %struct.wlr_box* %24)
  br label %30

26:                                               ; preds = %3
  %27 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %28 = load %struct.wlr_box*, %struct.wlr_box** %6, align 8
  %29 = call i32 @apply_horiz_layout(%struct.TYPE_7__* %27, %struct.wlr_box* %28)
  br label %30

30:                                               ; preds = %3, %26, %22, %18, %14, %10
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %47, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %34 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %50

37:                                               ; preds = %31
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %38, i32 0, i32 1
  %40 = load %struct.sway_container**, %struct.sway_container*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %40, i64 %42
  %44 = load %struct.sway_container*, %struct.sway_container** %43, align 8
  store %struct.sway_container* %44, %struct.sway_container** %8, align 8
  %45 = load %struct.sway_container*, %struct.sway_container** %8, align 8
  %46 = call i32 @arrange_container(%struct.sway_container* %45)
  br label %47

47:                                               ; preds = %37
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %31

50:                                               ; preds = %31
  ret void
}

declare dso_local i32 @apply_horiz_layout(%struct.TYPE_7__*, %struct.wlr_box*) #1

declare dso_local i32 @apply_vert_layout(%struct.TYPE_7__*, %struct.wlr_box*) #1

declare dso_local i32 @apply_tabbed_layout(%struct.TYPE_7__*, %struct.wlr_box*) #1

declare dso_local i32 @apply_stacked_layout(%struct.TYPE_7__*, %struct.wlr_box*) #1

declare dso_local i32 @arrange_container(%struct.sway_container*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
