; ModuleID = '/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_wants_floating.c'
source_filename = "/home/carl/AnghaBench/sway/sway/desktop/extr_xdg_shell.c_wants_floating.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.wlr_xdg_toplevel* }
%struct.wlr_xdg_toplevel = type { i64, %struct.wlr_xdg_toplevel_state }
%struct.wlr_xdg_toplevel_state = type { i64, i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sway_view*)* @wants_floating to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wants_floating(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  %3 = alloca %struct.wlr_xdg_toplevel*, align 8
  %4 = alloca %struct.wlr_xdg_toplevel_state*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %5 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %6 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %5, i32 0, i32 0
  %7 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load %struct.wlr_xdg_toplevel*, %struct.wlr_xdg_toplevel** %8, align 8
  store %struct.wlr_xdg_toplevel* %9, %struct.wlr_xdg_toplevel** %3, align 8
  %10 = load %struct.wlr_xdg_toplevel*, %struct.wlr_xdg_toplevel** %3, align 8
  %11 = getelementptr inbounds %struct.wlr_xdg_toplevel, %struct.wlr_xdg_toplevel* %10, i32 0, i32 1
  store %struct.wlr_xdg_toplevel_state* %11, %struct.wlr_xdg_toplevel_state** %4, align 8
  %12 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %4, align 8
  %13 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %37

16:                                               ; preds = %1
  %17 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %4, align 8
  %18 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %37

21:                                               ; preds = %16
  %22 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %4, align 8
  %23 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %4, align 8
  %26 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = icmp eq i64 %24, %27
  br i1 %28, label %42, label %29

29:                                               ; preds = %21
  %30 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %4, align 8
  %31 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %30, i32 0, i32 1
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.wlr_xdg_toplevel_state*, %struct.wlr_xdg_toplevel_state** %4, align 8
  %34 = getelementptr inbounds %struct.wlr_xdg_toplevel_state, %struct.wlr_xdg_toplevel_state* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %42, label %37

37:                                               ; preds = %29, %16, %1
  %38 = load %struct.wlr_xdg_toplevel*, %struct.wlr_xdg_toplevel** %3, align 8
  %39 = getelementptr inbounds %struct.wlr_xdg_toplevel, %struct.wlr_xdg_toplevel* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br label %42

42:                                               ; preds = %37, %29, %21
  %43 = phi i1 [ true, %29 ], [ true, %21 ], [ %41, %37 ]
  %44 = zext i1 %43 to i32
  ret i32 %44
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
