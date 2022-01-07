; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_for_each_popup.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_for_each_popup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.sway_view*, i32, i8*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_for_each_popup(%struct.sway_view* %0, i32 %1, i8* %2) #0 {
  %4 = alloca %struct.sway_view*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %4, align 8
  store i32 %1, i32* %5, align 4
  store i8* %2, i8** %6, align 8
  %7 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %8 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %3
  br label %29

12:                                               ; preds = %3
  %13 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %14 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32 (%struct.sway_view*, i32, i8*)*, i32 (%struct.sway_view*, i32, i8*)** %16, align 8
  %18 = icmp ne i32 (%struct.sway_view*, i32, i8*)* %17, null
  br i1 %18, label %19, label %29

19:                                               ; preds = %12
  %20 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %21 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32 (%struct.sway_view*, i32, i8*)*, i32 (%struct.sway_view*, i32, i8*)** %23, align 8
  %25 = load %struct.sway_view*, %struct.sway_view** %4, align 8
  %26 = load i32, i32* %5, align 4
  %27 = load i8*, i8** %6, align 8
  %28 = call i32 %24(%struct.sway_view* %25, i32 %26, i8* %27)
  br label %29

29:                                               ; preds = %11, %19, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
