; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_next_session.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_next_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }

@sessions = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.session* @session_next_session(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  %3 = alloca %struct.session*, align 8
  %4 = alloca %struct.session*, align 8
  store %struct.session* %0, %struct.session** %3, align 8
  %5 = call i64 @RB_EMPTY(i32* @sessions)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = load %struct.session*, %struct.session** %3, align 8
  %9 = call i32 @session_alive(%struct.session* %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %7, %1
  store %struct.session* null, %struct.session** %2, align 8
  br label %28

12:                                               ; preds = %7
  %13 = load i32, i32* @sessions, align 4
  %14 = load %struct.session*, %struct.session** %3, align 8
  %15 = call %struct.session* @RB_NEXT(i32 %13, i32* @sessions, %struct.session* %14)
  store %struct.session* %15, %struct.session** %4, align 8
  %16 = load %struct.session*, %struct.session** %4, align 8
  %17 = icmp eq %struct.session* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @sessions, align 4
  %20 = call %struct.session* @RB_MIN(i32 %19, i32* @sessions)
  store %struct.session* %20, %struct.session** %4, align 8
  br label %21

21:                                               ; preds = %18, %12
  %22 = load %struct.session*, %struct.session** %4, align 8
  %23 = load %struct.session*, %struct.session** %3, align 8
  %24 = icmp eq %struct.session* %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store %struct.session* null, %struct.session** %2, align 8
  br label %28

26:                                               ; preds = %21
  %27 = load %struct.session*, %struct.session** %4, align 8
  store %struct.session* %27, %struct.session** %2, align 8
  br label %28

28:                                               ; preds = %26, %25, %11
  %29 = load %struct.session*, %struct.session** %2, align 8
  ret %struct.session* %29
}

declare dso_local i64 @RB_EMPTY(i32*) #1

declare dso_local i32 @session_alive(%struct.session*) #1

declare dso_local %struct.session* @RB_NEXT(i32, i32*, %struct.session*) #1

declare dso_local %struct.session* @RB_MIN(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
