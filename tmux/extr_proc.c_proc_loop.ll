; ModuleID = '/home/carl/AnghaBench/tmux/extr_proc.c_proc_loop.c'
source_filename = "/home/carl/AnghaBench/tmux/extr_proc.c_proc_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tmuxproc = type { i32, i32 }

@.str = private unnamed_addr constant [14 x i8] c"%s loop enter\00", align 1
@EVLOOP_ONCE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [13 x i8] c"%s loop exit\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @proc_loop(%struct.tmuxproc* %0, i32 ()* %1) #0 {
  %3 = alloca %struct.tmuxproc*, align 8
  %4 = alloca i32 ()*, align 8
  store %struct.tmuxproc* %0, %struct.tmuxproc** %3, align 8
  store i32 ()* %1, i32 ()** %4, align 8
  %5 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %6 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 4
  %8 = call i32 @log_debug(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %7)
  br label %9

9:                                                ; preds = %27, %2
  %10 = load i32, i32* @EVLOOP_ONCE, align 4
  %11 = call i32 @event_loop(i32 %10)
  br label %12

12:                                               ; preds = %9
  %13 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %14 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %13, i32 0, i32 1
  %15 = load i32, i32* %14, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %12
  %18 = load i32 ()*, i32 ()** %4, align 8
  %19 = icmp eq i32 ()* %18, null
  br i1 %19, label %25, label %20

20:                                               ; preds = %17
  %21 = load i32 ()*, i32 ()** %4, align 8
  %22 = call i32 %21()
  %23 = icmp ne i32 %22, 0
  %24 = xor i1 %23, true
  br label %25

25:                                               ; preds = %20, %17
  %26 = phi i1 [ true, %17 ], [ %24, %20 ]
  br label %27

27:                                               ; preds = %25, %12
  %28 = phi i1 [ false, %12 ], [ %26, %25 ]
  br i1 %28, label %9, label %29

29:                                               ; preds = %27
  %30 = load %struct.tmuxproc*, %struct.tmuxproc** %3, align 8
  %31 = getelementptr inbounds %struct.tmuxproc, %struct.tmuxproc* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @log_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i32 %32)
  ret void
}

declare dso_local i32 @log_debug(i8*, i32) #1

declare dso_local i32 @event_loop(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
