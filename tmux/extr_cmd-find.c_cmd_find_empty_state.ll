; ModuleID = '/home/carl/AnghaBench/tmux/extr_cmd-find.c_cmd_find_empty_state.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_cmd-find.c_cmd_find_empty_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmd_find_state = type { i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @cmd_find_empty_state(%struct.cmd_find_state* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.cmd_find_state*, align 8
  store %struct.cmd_find_state* %0, %struct.cmd_find_state** %3, align 8
  %4 = load %struct.cmd_find_state*, %struct.cmd_find_state** %3, align 8
  %5 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %4, i32 0, i32 3
  %6 = load i32*, i32** %5, align 8
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %24

8:                                                ; preds = %1
  %9 = load %struct.cmd_find_state*, %struct.cmd_find_state** %3, align 8
  %10 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %9, i32 0, i32 2
  %11 = load i32*, i32** %10, align 8
  %12 = icmp eq i32* %11, null
  br i1 %12, label %13, label %24

13:                                               ; preds = %8
  %14 = load %struct.cmd_find_state*, %struct.cmd_find_state** %3, align 8
  %15 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %14, i32 0, i32 1
  %16 = load i32*, i32** %15, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %18, label %24

18:                                               ; preds = %13
  %19 = load %struct.cmd_find_state*, %struct.cmd_find_state** %3, align 8
  %20 = getelementptr inbounds %struct.cmd_find_state, %struct.cmd_find_state* %19, i32 0, i32 0
  %21 = load i32*, i32** %20, align 8
  %22 = icmp eq i32* %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 1, i32* %2, align 4
  br label %25

24:                                               ; preds = %18, %13, %8, %1
  store i32 0, i32* %2, align 4
  br label %25

25:                                               ; preds = %24, %23
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
