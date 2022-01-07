; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_last.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_last.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { %struct.winlink*, i32 }
%struct.winlink = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @session_last(%struct.session* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.session*, align 8
  %4 = alloca %struct.winlink*, align 8
  store %struct.session* %0, %struct.session** %3, align 8
  %5 = load %struct.session*, %struct.session** %3, align 8
  %6 = getelementptr inbounds %struct.session, %struct.session* %5, i32 0, i32 1
  %7 = call %struct.winlink* @TAILQ_FIRST(i32* %6)
  store %struct.winlink* %7, %struct.winlink** %4, align 8
  %8 = load %struct.winlink*, %struct.winlink** %4, align 8
  %9 = icmp eq %struct.winlink* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 -1, i32* %2, align 4
  br label %22

11:                                               ; preds = %1
  %12 = load %struct.winlink*, %struct.winlink** %4, align 8
  %13 = load %struct.session*, %struct.session** %3, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 0
  %15 = load %struct.winlink*, %struct.winlink** %14, align 8
  %16 = icmp eq %struct.winlink* %12, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  store i32 1, i32* %2, align 4
  br label %22

18:                                               ; preds = %11
  %19 = load %struct.session*, %struct.session** %3, align 8
  %20 = load %struct.winlink*, %struct.winlink** %4, align 8
  %21 = call i32 @session_set_current(%struct.session* %19, %struct.winlink* %20)
  store i32 %21, i32* %2, align 4
  br label %22

22:                                               ; preds = %18, %17, %10
  %23 = load i32, i32* %2, align 4
  ret i32 %23
}

declare dso_local %struct.winlink* @TAILQ_FIRST(i32*) #1

declare dso_local i32 @session_set_current(%struct.session*, %struct.winlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
