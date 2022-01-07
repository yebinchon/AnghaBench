; ModuleID = '/home/carl/AnghaBench/tmux/extr_notify.c_notify_session_window.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_notify.c_notify_session_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.window = type { i32 }
%struct.cmd_find_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_session_window(i8* %0, %struct.session* %1, %struct.window* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.session*, align 8
  %6 = alloca %struct.window*, align 8
  %7 = alloca %struct.cmd_find_state, align 4
  store i8* %0, i8** %4, align 8
  store %struct.session* %1, %struct.session** %5, align 8
  store %struct.window* %2, %struct.window** %6, align 8
  %8 = load %struct.session*, %struct.session** %5, align 8
  %9 = load %struct.window*, %struct.window** %6, align 8
  %10 = call i32 @cmd_find_from_session_window(%struct.cmd_find_state* %7, %struct.session* %8, %struct.window* %9, i32 0)
  %11 = load i8*, i8** %4, align 8
  %12 = load %struct.session*, %struct.session** %5, align 8
  %13 = load %struct.window*, %struct.window** %6, align 8
  %14 = call i32 @notify_add(i8* %11, %struct.cmd_find_state* %7, i32* null, %struct.session* %12, %struct.window* %13, i32* null)
  ret void
}

declare dso_local i32 @cmd_find_from_session_window(%struct.cmd_find_state*, %struct.session*, %struct.window*, i32) #1

declare dso_local i32 @notify_add(i8*, %struct.cmd_find_state*, i32*, %struct.session*, %struct.window*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
