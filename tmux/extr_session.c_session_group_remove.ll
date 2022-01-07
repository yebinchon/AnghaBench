; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_group_remove.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_group_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32 }
%struct.session_group = type { i32 }

@gentry = common dso_local global i32 0, align 4
@session_groups = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.session*)* @session_group_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @session_group_remove(%struct.session* %0) #0 {
  %2 = alloca %struct.session*, align 8
  %3 = alloca %struct.session_group*, align 8
  store %struct.session* %0, %struct.session** %2, align 8
  %4 = load %struct.session*, %struct.session** %2, align 8
  %5 = call %struct.session_group* @session_group_contains(%struct.session* %4)
  store %struct.session_group* %5, %struct.session_group** %3, align 8
  %6 = icmp eq %struct.session_group* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %24

8:                                                ; preds = %1
  %9 = load %struct.session_group*, %struct.session_group** %3, align 8
  %10 = getelementptr inbounds %struct.session_group, %struct.session_group* %9, i32 0, i32 0
  %11 = load %struct.session*, %struct.session** %2, align 8
  %12 = load i32, i32* @gentry, align 4
  %13 = call i32 @TAILQ_REMOVE(i32* %10, %struct.session* %11, i32 %12)
  %14 = load %struct.session_group*, %struct.session_group** %3, align 8
  %15 = getelementptr inbounds %struct.session_group, %struct.session_group* %14, i32 0, i32 0
  %16 = call i64 @TAILQ_EMPTY(i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %8
  %19 = load i32, i32* @session_groups, align 4
  %20 = load %struct.session_group*, %struct.session_group** %3, align 8
  %21 = call i32 @RB_REMOVE(i32 %19, i32* @session_groups, %struct.session_group* %20)
  %22 = load %struct.session_group*, %struct.session_group** %3, align 8
  %23 = call i32 @free(%struct.session_group* %22)
  br label %24

24:                                               ; preds = %7, %18, %8
  ret void
}

declare dso_local %struct.session_group* @session_group_contains(%struct.session*) #1

declare dso_local i32 @TAILQ_REMOVE(i32*, %struct.session*, i32) #1

declare dso_local i64 @TAILQ_EMPTY(i32*) #1

declare dso_local i32 @RB_REMOVE(i32, i32*, %struct.session_group*) #1

declare dso_local i32 @free(%struct.session_group*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
