; ModuleID = '/home/carl/AnghaBench/tmux/extr_notify.c_notify_session.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_notify.c_notify_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.cmd_find_state = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @notify_session(i8* %0, %struct.session* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.session*, align 8
  %5 = alloca %struct.cmd_find_state, align 4
  store i8* %0, i8** %3, align 8
  store %struct.session* %1, %struct.session** %4, align 8
  %6 = load %struct.session*, %struct.session** %4, align 8
  %7 = call i64 @session_alive(%struct.session* %6)
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %2
  %10 = load %struct.session*, %struct.session** %4, align 8
  %11 = call i32 @cmd_find_from_session(%struct.cmd_find_state* %5, %struct.session* %10, i32 0)
  br label %14

12:                                               ; preds = %2
  %13 = call i32 @cmd_find_from_nothing(%struct.cmd_find_state* %5, i32 0)
  br label %14

14:                                               ; preds = %12, %9
  %15 = load i8*, i8** %3, align 8
  %16 = load %struct.session*, %struct.session** %4, align 8
  %17 = call i32 @notify_add(i8* %15, %struct.cmd_find_state* %5, i32* null, %struct.session* %16, i32* null, i32* null)
  ret void
}

declare dso_local i64 @session_alive(%struct.session*) #1

declare dso_local i32 @cmd_find_from_session(%struct.cmd_find_state*, %struct.session*, i32) #1

declare dso_local i32 @cmd_find_from_nothing(%struct.cmd_find_state*, i32) #1

declare dso_local i32 @notify_add(i8*, %struct.cmd_find_state*, i32*, %struct.session*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
