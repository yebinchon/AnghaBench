; ModuleID = '/home/carl/AnghaBench/tmux/extr_session.c_session_next.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_session.c_session_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.session = type { i32, i32* }
%struct.winlink = type { i32 }

@winlinks = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @session_next(%struct.session* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.session*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.winlink*, align 8
  store %struct.session* %0, %struct.session** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load %struct.session*, %struct.session** %4, align 8
  %8 = getelementptr inbounds %struct.session, %struct.session* %7, i32 0, i32 1
  %9 = load i32*, i32** %8, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  br label %42

12:                                               ; preds = %2
  %13 = load %struct.session*, %struct.session** %4, align 8
  %14 = getelementptr inbounds %struct.session, %struct.session* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = call %struct.winlink* @winlink_next(i32* %15)
  store %struct.winlink* %16, %struct.winlink** %6, align 8
  %17 = load i32, i32* %5, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %12
  %20 = load %struct.winlink*, %struct.winlink** %6, align 8
  %21 = call %struct.winlink* @session_next_alert(%struct.winlink* %20)
  store %struct.winlink* %21, %struct.winlink** %6, align 8
  br label %22

22:                                               ; preds = %19, %12
  %23 = load %struct.winlink*, %struct.winlink** %6, align 8
  %24 = icmp eq %struct.winlink* %23, null
  br i1 %24, label %25, label %38

25:                                               ; preds = %22
  %26 = load i32, i32* @winlinks, align 4
  %27 = load %struct.session*, %struct.session** %4, align 8
  %28 = getelementptr inbounds %struct.session, %struct.session* %27, i32 0, i32 0
  %29 = call %struct.winlink* @RB_MIN(i32 %26, i32* %28)
  store %struct.winlink* %29, %struct.winlink** %6, align 8
  %30 = load i32, i32* %5, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %25
  %33 = load %struct.winlink*, %struct.winlink** %6, align 8
  %34 = call %struct.winlink* @session_next_alert(%struct.winlink* %33)
  store %struct.winlink* %34, %struct.winlink** %6, align 8
  %35 = icmp eq %struct.winlink* %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %32
  store i32 -1, i32* %3, align 4
  br label %42

37:                                               ; preds = %32, %25
  br label %38

38:                                               ; preds = %37, %22
  %39 = load %struct.session*, %struct.session** %4, align 8
  %40 = load %struct.winlink*, %struct.winlink** %6, align 8
  %41 = call i32 @session_set_current(%struct.session* %39, %struct.winlink* %40)
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %38, %36, %11
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local %struct.winlink* @winlink_next(i32*) #1

declare dso_local %struct.winlink* @session_next_alert(%struct.winlink*) #1

declare dso_local %struct.winlink* @RB_MIN(i32, i32*) #1

declare dso_local i32 @session_set_current(%struct.session*, %struct.winlink*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
