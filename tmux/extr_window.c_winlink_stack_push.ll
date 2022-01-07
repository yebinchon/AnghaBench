; ModuleID = '/home/carl/AnghaBench/tmux/extr_window.c_winlink_stack_push.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_window.c_winlink_stack_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink_stack = type { i32 }
%struct.winlink = type { i32 }

@sentry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @winlink_stack_push(%struct.winlink_stack* %0, %struct.winlink* %1) #0 {
  %3 = alloca %struct.winlink_stack*, align 8
  %4 = alloca %struct.winlink*, align 8
  store %struct.winlink_stack* %0, %struct.winlink_stack** %3, align 8
  store %struct.winlink* %1, %struct.winlink** %4, align 8
  %5 = load %struct.winlink*, %struct.winlink** %4, align 8
  %6 = icmp eq %struct.winlink* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %16

8:                                                ; preds = %2
  %9 = load %struct.winlink_stack*, %struct.winlink_stack** %3, align 8
  %10 = load %struct.winlink*, %struct.winlink** %4, align 8
  %11 = call i32 @winlink_stack_remove(%struct.winlink_stack* %9, %struct.winlink* %10)
  %12 = load %struct.winlink_stack*, %struct.winlink_stack** %3, align 8
  %13 = load %struct.winlink*, %struct.winlink** %4, align 8
  %14 = load i32, i32* @sentry, align 4
  %15 = call i32 @TAILQ_INSERT_HEAD(%struct.winlink_stack* %12, %struct.winlink* %13, i32 %14)
  br label %16

16:                                               ; preds = %8, %7
  ret void
}

declare dso_local i32 @winlink_stack_remove(%struct.winlink_stack*, %struct.winlink*) #1

declare dso_local i32 @TAILQ_INSERT_HEAD(%struct.winlink_stack*, %struct.winlink*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
