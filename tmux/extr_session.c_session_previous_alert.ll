; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_previous_alert.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_previous_alert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.winlink = type { i32 }

@WINLINK_ALERTFLAGS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.winlink* (%struct.winlink*)* @session_previous_alert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.winlink* @session_previous_alert(%struct.winlink* %0) #0 {
  %2 = alloca %struct.winlink*, align 8
  store %struct.winlink* %0, %struct.winlink** %2, align 8
  br label %3

3:                                                ; preds = %14, %1
  %4 = load %struct.winlink*, %struct.winlink** %2, align 8
  %5 = icmp ne %struct.winlink* %4, null
  br i1 %5, label %6, label %17

6:                                                ; preds = %3
  %7 = load %struct.winlink*, %struct.winlink** %2, align 8
  %8 = getelementptr inbounds %struct.winlink, %struct.winlink* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = load i32, i32* @WINLINK_ALERTFLAGS, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %6
  br label %17

14:                                               ; preds = %6
  %15 = load %struct.winlink*, %struct.winlink** %2, align 8
  %16 = call %struct.winlink* @winlink_previous(%struct.winlink* %15)
  store %struct.winlink* %16, %struct.winlink** %2, align 8
  br label %3

17:                                               ; preds = %13, %3
  %18 = load %struct.winlink*, %struct.winlink** %2, align 8
  ret %struct.winlink* %18
}

declare dso_local %struct.winlink* @winlink_previous(%struct.winlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
