; ModuleID = '/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_reload_with_fallback.c'
source_filename = "/home/carl/AnghaBench/systemd/src/systemctl/extr_systemctl.c_reload_with_fallback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@arg_action = common dso_local global i64 0, align 8
@ACTION_RELOAD = common dso_local global i64 0, align 8
@ACTION_REEXEC = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"kill() failed: %m\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @reload_with_fallback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reload_with_fallback() #0 {
  %1 = alloca i32, align 4
  %2 = call i64 @daemon_reload(i32 0, i32* null, i32* null)
  %3 = icmp sge i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %26

5:                                                ; preds = %0
  %6 = load i64, i64* @arg_action, align 8
  %7 = load i64, i64* @ACTION_RELOAD, align 8
  %8 = load i32, i32* @ACTION_REEXEC, align 4
  %9 = call i32 @IN_SET(i64 %6, i64 %7, i32 %8)
  %10 = call i32 @assert(i32 %9)
  %11 = load i64, i64* @arg_action, align 8
  %12 = load i64, i64* @ACTION_RELOAD, align 8
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %5
  %15 = load i32, i32* @SIGHUP, align 4
  br label %18

16:                                               ; preds = %5
  %17 = load i32, i32* @SIGTERM, align 4
  br label %18

18:                                               ; preds = %16, %14
  %19 = phi i32 [ %15, %14 ], [ %17, %16 ]
  %20 = call i64 @kill(i32 1, i32 %19)
  %21 = icmp slt i64 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @log_error_errno(i32 %23, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0))
  store i32 %24, i32* %1, align 4
  br label %26

25:                                               ; preds = %18
  store i32 0, i32* %1, align 4
  br label %26

26:                                               ; preds = %25, %22, %4
  %27 = load i32, i32* %1, align 4
  ret i32 %27
}

declare dso_local i64 @daemon_reload(i32, i32*, i32*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @IN_SET(i64, i64, i32) #1

declare dso_local i64 @kill(i32, i32) #1

declare dso_local i32 @log_error_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
