; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_apply_stacked_layout.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_arrange.c_apply_stacked_layout.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.sway_container** }
%struct.sway_container = type { i64, i32, i64, i32, i64 }
%struct.wlr_box = type { i64, i32, i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.wlr_box*)* @apply_stacked_layout to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @apply_stacked_layout(%struct.TYPE_3__* %0, %struct.wlr_box* %1) #0 {
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
  br label %70

13:                                               ; preds = %2
  store i32 0, i32* %5, align 4
  br label %14

14:                                               ; preds = %67, %13
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp slt i32 %15, %18
  br i1 %19, label %20, label %70

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
  br label %39

33:                                               ; preds = %20
  %34 = call i32 (...) @container_titlebar_height()
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = mul nsw i32 %34, %37
  br label %39

39:                                               ; preds = %33, %32
  %40 = phi i32 [ 0, %32 ], [ %38, %33 ]
  store i32 %40, i32* %7, align 4
  %41 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %42 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 8
  %44 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %45 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %44, i32 0, i32 3
  store i32 %43, i32* %45, align 8
  %46 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %47 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %46, i32 0, i32 2
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = add nsw i64 %48, %50
  %52 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %53 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %52, i32 0, i32 2
  store i64 %51, i64* %53, align 8
  %54 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %55 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %58 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %60 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load i32, i32* %7, align 4
  %63 = sext i32 %62 to i64
  %64 = sub nsw i64 %61, %63
  %65 = load %struct.sway_container*, %struct.sway_container** %6, align 8
  %66 = getelementptr inbounds %struct.sway_container, %struct.sway_container* %65, i32 0, i32 0
  store i64 %64, i64* %66, align 8
  br label %67

67:                                               ; preds = %39
  %68 = load i32, i32* %5, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %5, align 4
  br label %14

70:                                               ; preds = %12, %14
  ret void
}

declare dso_local i32 @container_titlebar_height(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
