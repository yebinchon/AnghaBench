; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_winlink_previous_by_number.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_winlink_previous_by_number.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { i32 }
%struct.session = type { i32 }

@winlinks = common dso_local global i32 0, align 4
@wwl = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.winlink* @winlink_previous_by_number(%struct.winlink* %0, %struct.session* %1, i32 %2) #0 {
  %4 = alloca %struct.winlink*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca i32, align 4
  store %struct.winlink* %0, %struct.winlink** %4, align 8
  store %struct.session* %1, %struct.session** %5, align 8
  store i32 %2, i32* %6, align 4
  br label %7

7:                                                ; preds = %22, %3
  %8 = load i32, i32* %6, align 4
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load i32, i32* @winlinks, align 4
  %12 = load i32, i32* @wwl, align 4
  %13 = load %struct.winlink*, %struct.winlink** %4, align 8
  %14 = call %struct.winlink* @RB_PREV(i32 %11, i32 %12, %struct.winlink* %13)
  store %struct.winlink* %14, %struct.winlink** %4, align 8
  %15 = icmp eq %struct.winlink* %14, null
  br i1 %15, label %16, label %21

16:                                               ; preds = %10
  %17 = load i32, i32* @winlinks, align 4
  %18 = load %struct.session*, %struct.session** %5, align 8
  %19 = getelementptr inbounds %struct.session, %struct.session* %18, i32 0, i32 0
  %20 = call %struct.winlink* @RB_MAX(i32 %17, i32* %19)
  store %struct.winlink* %20, %struct.winlink** %4, align 8
  br label %21

21:                                               ; preds = %16, %10
  br label %22

22:                                               ; preds = %21
  %23 = load i32, i32* %6, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %6, align 4
  br label %7

25:                                               ; preds = %7
  %26 = load %struct.winlink*, %struct.winlink** %4, align 8
  ret %struct.winlink* %26
}

declare dso_local %struct.winlink* @RB_PREV(i32, i32, %struct.winlink*) #1

declare dso_local %struct.winlink* @RB_MAX(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
