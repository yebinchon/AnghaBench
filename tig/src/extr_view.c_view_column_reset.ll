; ModuleID = '/home/carl/AnghaBench/tig/src/extr_view.c_view_column_reset.c'
source_filename = "/home/carl/AnghaBench/tig/src/extr_view.c_view_column_reset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.view = type { %struct.view_column* }
%struct.view_column = type { i64, %struct.view_column* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_column_reset(%struct.view* %0) #0 {
  %2 = alloca %struct.view*, align 8
  %3 = alloca %struct.view_column*, align 8
  store %struct.view* %0, %struct.view** %2, align 8
  %4 = load %struct.view*, %struct.view** %2, align 8
  %5 = call i32 @view_column_info_changed(%struct.view* %4, i32 1)
  %6 = load %struct.view*, %struct.view** %2, align 8
  %7 = getelementptr inbounds %struct.view, %struct.view* %6, i32 0, i32 0
  %8 = load %struct.view_column*, %struct.view_column** %7, align 8
  store %struct.view_column* %8, %struct.view_column** %3, align 8
  br label %9

9:                                                ; preds = %15, %1
  %10 = load %struct.view_column*, %struct.view_column** %3, align 8
  %11 = icmp ne %struct.view_column* %10, null
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load %struct.view_column*, %struct.view_column** %3, align 8
  %14 = getelementptr inbounds %struct.view_column, %struct.view_column* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %15

15:                                               ; preds = %12
  %16 = load %struct.view_column*, %struct.view_column** %3, align 8
  %17 = getelementptr inbounds %struct.view_column, %struct.view_column* %16, i32 0, i32 1
  %18 = load %struct.view_column*, %struct.view_column** %17, align 8
  store %struct.view_column* %18, %struct.view_column** %3, align 8
  br label %9

19:                                               ; preds = %9
  ret void
}

declare dso_local i32 @view_column_info_changed(%struct.view*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
