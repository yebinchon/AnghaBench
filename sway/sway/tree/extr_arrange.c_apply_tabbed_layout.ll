; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_apply_tabbed_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_apply_tabbed_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i64, i32, i64, i32, i64 }
%struct.wlr_box = type { i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.wlr_box*)* @apply_tabbed_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_tabbed_layout(%struct.TYPE_3__* %0, %struct.wlr_box* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sway_container*, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.wlr_box* %1, %struct.wlr_box** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %66

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %63, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %66

20:                                               ; preds = %14
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 1
  %23 = load %struct.sway_container**, %struct.sway_container*** %22, align 8
  %24 = load i32, i32* %5, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.sway_container*, %struct.sway_container** %23, i64 %25
  %27 = load %struct.sway_container*, %struct.sway_container** %26, align 8
  store %struct.sway_container* %27, %struct.sway_container** %6, align 8
  %28 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %29 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %20
  br label %35

33:                                               ; preds = %20
  %34 = call i32 (...) @container_titlebar_height()
  br label %35

35:                                               ; preds = %33, %32
  %36 = phi i32 [ 0, %32 ], [ %34, %33 ]
  store i32 %36, i32* %7, align 4
  %37 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %38 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %37, i32 0, i32 3
  %39 = load i32, i32* %38, align 8
  %40 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %41 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %40, i32 0, i32 3
  store i32 %39, i32* %41, align 8
  %42 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %43 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = load i32, i32* %7, align 4
  %46 = sext i32 %45 to i64
  %47 = add nsw i64 %44, %46
  %48 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %49 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %48, i32 0, i32 2
  store i64 %47, i64* %49, align 8
  %50 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %51 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %54 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 8
  %55 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %56 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = sext i32 %58 to i64
  %60 = sub nsw i64 %57, %59
  %61 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %62 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %61, i32 0, i32 0
  store i64 %60, i64* %62, align 8
  br label %63

63:                                               ; preds = %35
  %64 = load i32, i32* %5, align 4
  %65 = add nsw i32 %64, 1
  store i32 %65, i32* %5, align 4
  br label %14

66:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @container_titlebar_height(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
