; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_remove_saved_buffer.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_remove_saved_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32* }

@.str = private unnamed_addr constant [24 x i8] c"Expected a saved buffer\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_remove_saved_buffer(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %3 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %4 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = call i32 @sway_assert(i32* %5, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0))
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %16

9:                                                ; preds = %1
  %10 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %11 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %10, i32 0, i32 0
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @wlr_buffer_unref(i32* %12)
  %14 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 0
  store i32* null, i32** %15, align 8
  br label %16

16:                                               ; preds = %9, %8
  ret void
}

declare dso_local i32 @sway_assert(i32*, i8*) #1

declare dso_local i32 @wlr_buffer_unref(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
