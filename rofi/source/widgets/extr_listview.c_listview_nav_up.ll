; ModuleID = '/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_nav_up.c'
source_filename = "/home/carl/AnghaBench/rofi/source/widgets/extr_listview.c_listview_nav_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @listview_nav_up(%struct.TYPE_5__* %0) #0 {
  %2 = alloca %struct.TYPE_5__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %2, align 8
  %3 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %4 = icmp eq %struct.TYPE_5__* %3, null
  br i1 %4, label %5, label %6

5:                                                ; preds = %1
  br label %17

6:                                                ; preds = %1
  %7 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %8 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %6
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %13 = call i32 @listview_nav_down_int(%struct.TYPE_5__* %12)
  br label %17

14:                                               ; preds = %6
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %2, align 8
  %16 = call i32 @listview_nav_up_int(%struct.TYPE_5__* %15)
  br label %17

17:                                               ; preds = %5, %14, %11
  ret void
}

declare dso_local i32 @listview_nav_down_int(%struct.TYPE_5__*) #1

declare dso_local i32 @listview_nav_up_int(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
