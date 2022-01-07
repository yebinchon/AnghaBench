; ModuleID = '/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_begin_destroy.c'
source_filename = "/home/carl/AnghaBench/sway/sway/tree/extr_view.c_view_begin_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sway_view = type { i32, i32, i32* }

@.str = private unnamed_addr constant [31 x i8] c"Tried to destroy a mapped view\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @view_begin_destroy(%struct.sway_view* %0) #0 {
  %2 = alloca %struct.sway_view*, align 8
  store %struct.sway_view* %0, %struct.sway_view** %2, align 8
  %3 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %4 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %3, i32 0, i32 2
  %5 = load i32*, i32** %4, align 8
  %6 = icmp eq i32* %5, null
  %7 = zext i1 %6 to i32
  %8 = call i32 @sway_assert(i32 %7, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0))
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %1
  br label %21

11:                                               ; preds = %1
  %12 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %13 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %12, i32 0, i32 0
  store i32 1, i32* %13, align 8
  %14 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %15 = getelementptr inbounds %struct.sway_view, %struct.sway_view* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %11
  %19 = load %struct.sway_view*, %struct.sway_view** %2, align 8
  %20 = call i32 @view_destroy(%struct.sway_view* %19)
  br label %21

21:                                               ; preds = %10, %18, %11
  ret void
}

declare dso_local i32 @sway_assert(i32, i8*) #1

declare dso_local i32 @view_destroy(%struct.sway_view*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
