; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_winlink_add.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_winlink_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { i32 }
%struct.winlinks = type { i32 }

@winlinks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.winlink* @winlink_add(%struct.winlinks* %0, i32 %1) #0 {
  %3 = alloca %struct.winlink*, align 8
  %4 = alloca %struct.winlinks*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.winlink*, align 8
  store %struct.winlinks* %0, %struct.winlinks** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %18

9:                                                ; preds = %2
  %10 = load %struct.winlinks*, %struct.winlinks** %4, align 8
  %11 = load i32, i32* %5, align 4
  %12 = sub nsw i32 0, %11
  %13 = sub nsw i32 %12, 1
  %14 = call i32 @winlink_next_index(%struct.winlinks* %10, i32 %13)
  store i32 %14, i32* %5, align 4
  %15 = icmp eq i32 %14, -1
  br i1 %15, label %16, label %17

16:                                               ; preds = %9
  store %struct.winlink* null, %struct.winlink** %3, align 8
  br label %35

17:                                               ; preds = %9
  br label %25

18:                                               ; preds = %2
  %19 = load %struct.winlinks*, %struct.winlinks** %4, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call i32* @winlink_find_by_index(%struct.winlinks* %19, i32 %20)
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store %struct.winlink* null, %struct.winlink** %3, align 8
  br label %35

24:                                               ; preds = %18
  br label %25

25:                                               ; preds = %24, %17
  %26 = call %struct.winlink* @xcalloc(i32 1, i32 4)
  store %struct.winlink* %26, %struct.winlink** %6, align 8
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.winlink*, %struct.winlink** %6, align 8
  %29 = getelementptr inbounds %struct.winlink, %struct.winlink* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load i32, i32* @winlinks, align 4
  %31 = load %struct.winlinks*, %struct.winlinks** %4, align 8
  %32 = load %struct.winlink*, %struct.winlink** %6, align 8
  %33 = call i32 @RB_INSERT(i32 %30, %struct.winlinks* %31, %struct.winlink* %32)
  %34 = load %struct.winlink*, %struct.winlink** %6, align 8
  store %struct.winlink* %34, %struct.winlink** %3, align 8
  br label %35

35:                                               ; preds = %25, %23, %16
  %36 = load %struct.winlink*, %struct.winlink** %3, align 8
  ret %struct.winlink* %36
}

declare dso_local i32 @winlink_next_index(%struct.winlinks*, i32) #1

declare dso_local i32* @winlink_find_by_index(%struct.winlinks*, i32) #1

declare dso_local %struct.winlink* @xcalloc(i32, i32) #1

declare dso_local i32 @RB_INSERT(i32, %struct.winlinks*, %struct.winlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
