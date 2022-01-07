; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_get_app_id.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_get_app_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i8* (%struct.sway_view*, i32)* }

@VIEW_PROP_APP_ID = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @view_get_app_id(%struct.sway_view* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.sway_view*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %3, align 8
  %4 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %5 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i8* (%struct.sway_view*, i32)*, i8* (%struct.sway_view*, i32)** %7, align 8
  %9 = icmp ne i8* (%struct.sway_view*, i32)* %8, null
  br i1 %9, label %10, label %19

10:                                               ; preds = %1
  %11 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %12 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load i8* (%struct.sway_view*, i32)*, i8* (%struct.sway_view*, i32)** %14, align 8
  %16 = load %struct.sway_view*, %struct.sway_view** %3, align 8
  %17 = load i32, i32* @VIEW_PROP_APP_ID, align 4
  %18 = call i8* %15(%struct.sway_view* %16, i32 %17)
  store i8* %18, i8** %2, align 8
  br label %20

19:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %20

20:                                               ; preds = %19, %10
  %21 = load i8*, i8** %2, align 8
  ret i8* %21
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
