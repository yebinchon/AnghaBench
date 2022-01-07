; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_is_linked.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_is_linked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.window = type { i64 }
%struct.session_group = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @session_is_linked(%struct.session* %0, %struct.window* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.session*, align 8
  %5 = alloca %struct.window*, align 8
  %6 = alloca %struct.session_group*, align 8
  store %struct.session* %0, %struct.session** %4, align 8
  store %struct.window* %1, %struct.window** %5, align 8
  %7 = load %struct.session*, %struct.session** %4, align 8
  %8 = call %struct.session_group* @session_group_contains(%struct.session* %7)
  store %struct.session_group* %8, %struct.session_group** %6, align 8
  %9 = icmp ne %struct.session_group* %8, null
  br i1 %9, label %10, label %18

10:                                               ; preds = %2
  %11 = load %struct.window*, %struct.window** %5, align 8
  %12 = getelementptr inbounds %struct.window, %struct.window* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.session_group*, %struct.session_group** %6, align 8
  %15 = call i64 @session_group_count(%struct.session_group* %14)
  %16 = icmp ne i64 %13, %15
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %3, align 4
  br label %24

18:                                               ; preds = %2
  %19 = load %struct.window*, %struct.window** %5, align 8
  %20 = getelementptr inbounds %struct.window, %struct.window* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp ne i64 %21, 1
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %3, align 4
  br label %24

24:                                               ; preds = %18, %10
  %25 = load i32, i32* %3, align 4
  ret i32 %25
}

declare dso_local %struct.session_group* @session_group_contains(%struct.session*) #1

declare dso_local i64 @session_group_count(%struct.session_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
