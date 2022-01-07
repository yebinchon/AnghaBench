; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_geometry.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xwayland.c_get_geometry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.wlr_box = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sway_view*, %struct.wlr_box*)* @get_geometry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @get_geometry(%struct.sway_view* %0, %struct.wlr_box* %1) #0 {
  %3 = alloca %struct.sway_view*, align 8
  %4 = alloca %struct.wlr_box*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  store %struct.wlr_box* %1, %struct.wlr_box** %4, align 8
  %5 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %6 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %5, i32 0, i32 2
  store i64 0, i64* %6, align 8
  %7 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %8 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %7, i32 0, i32 3
  store i64 0, i64* %8, align 8
  %9 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %10 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  br i1 %12, label %13, label %30

13:                                               ; preds = %2
  %14 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %21 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %20, i32 0, i32 1
  store i64 %19, i64* %21, align 8
  %22 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %23 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %29 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %32 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %31, i32 0, i32 1
  store i64 0, i64* %32, align 8
  %33 = load %struct.wlr_box*, %struct.wlr_box** %4, align 8
  %34 = getelementptr inbounds %struct.wlr_box, %struct.wlr_box* %33, i32 0, i32 0
  store i64 0, i64* %34, align 8
  br label %35

35:                                               ; preds = %30, %13
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
