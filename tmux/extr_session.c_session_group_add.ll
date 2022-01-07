; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_group_add.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_group_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session_group = type { i32 }
%struct.session = type { i32 }

@gentry = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @session_group_add(%struct.session_group* %0, %struct.session* %1) #0 {
  %3 = alloca %struct.session_group*, align 8
  %4 = alloca %struct.session*, align 8
  store %struct.session_group* %0, %struct.session_group** %3, align 8
  store %struct.session* %1, %struct.session** %4, align 8
  %5 = load %struct.session*, %struct.session** %4, align 8
  %6 = call i32* @session_group_contains(%struct.session* %5)
  %7 = icmp eq i32* %6, null
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load %struct.session_group*, %struct.session_group** %3, align 8
  %10 = getelementptr inbounds %struct.session_group, %struct.session_group* %9, i32 0, i32 0
  %11 = load %struct.session*, %struct.session** %4, align 8
  %12 = load i32, i32* @gentry, align 4
  %13 = call i32 @TAILQ_INSERT_TAIL(i32* %10, %struct.session* %11, i32 %12)
  br label %14

14:                                               ; preds = %8, %2
  ret void
}

declare dso_local i32* @session_group_contains(%struct.session*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.session*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
