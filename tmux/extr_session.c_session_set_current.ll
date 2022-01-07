; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_set_current.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_set_current.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { %struct.winlink*, i32 }
%struct.winlink = type { i32 }

@.str = private unnamed_addr constant [23 x i8] c"session-window-changed\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @session_set_current(%struct.session* %0, %struct.winlink* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.session*, align 8
  %5 = alloca %struct.winlink*, align 8
  store %struct.session* %0, %struct.session** %4, align 8
  store %struct.winlink* %1, %struct.winlink** %5, align 8
  %6 = load %struct.winlink*, %struct.winlink** %5, align 8
  %7 = icmp eq %struct.winlink* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

9:                                                ; preds = %2
  %10 = load %struct.winlink*, %struct.winlink** %5, align 8
  %11 = load %struct.session*, %struct.session** %4, align 8
  %12 = getelementptr inbounds %struct.session, %struct.session* %11, i32 0, i32 0
  %13 = load %struct.winlink*, %struct.winlink** %12, align 8
  %14 = icmp eq %struct.winlink* %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  store i32 1, i32* %3, align 4
  br label %42

16:                                               ; preds = %9
  %17 = load %struct.session*, %struct.session** %4, align 8
  %18 = getelementptr inbounds %struct.session, %struct.session* %17, i32 0, i32 1
  %19 = load %struct.winlink*, %struct.winlink** %5, align 8
  %20 = call i32 @winlink_stack_remove(i32* %18, %struct.winlink* %19)
  %21 = load %struct.session*, %struct.session** %4, align 8
  %22 = getelementptr inbounds %struct.session, %struct.session* %21, i32 0, i32 1
  %23 = load %struct.session*, %struct.session** %4, align 8
  %24 = getelementptr inbounds %struct.session, %struct.session* %23, i32 0, i32 0
  %25 = load %struct.winlink*, %struct.winlink** %24, align 8
  %26 = call i32 @winlink_stack_push(i32* %22, %struct.winlink* %25)
  %27 = load %struct.winlink*, %struct.winlink** %5, align 8
  %28 = load %struct.session*, %struct.session** %4, align 8
  %29 = getelementptr inbounds %struct.session, %struct.session* %28, i32 0, i32 0
  store %struct.winlink* %27, %struct.winlink** %29, align 8
  %30 = load %struct.winlink*, %struct.winlink** %5, align 8
  %31 = call i32 @winlink_clear_flags(%struct.winlink* %30)
  %32 = load %struct.winlink*, %struct.winlink** %5, align 8
  %33 = getelementptr inbounds %struct.winlink, %struct.winlink* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @window_update_activity(i32 %34)
  %36 = load %struct.winlink*, %struct.winlink** %5, align 8
  %37 = getelementptr inbounds %struct.winlink, %struct.winlink* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @tty_update_window_offset(i32 %38)
  %40 = load %struct.session*, %struct.session** %4, align 8
  %41 = call i32 @notify_session(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), %struct.session* %40)
  store i32 0, i32* %3, align 4
  br label %42

42:                                               ; preds = %16, %15, %8
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @winlink_stack_remove(i32*, %struct.winlink*) #1

declare dso_local i32 @winlink_stack_push(i32*, %struct.winlink*) #1

declare dso_local i32 @winlink_clear_flags(%struct.winlink*) #1

declare dso_local i32 @window_update_activity(i32) #1

declare dso_local i32 @tty_update_window_offset(i32) #1

declare dso_local i32 @notify_session(i8*, %struct.session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
