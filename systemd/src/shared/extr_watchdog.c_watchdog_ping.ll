; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_watchdog_ping.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_watchdog_ping.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog_fd = common dso_local global i64 0, align 8
@WDIOC_KEEPALIVE = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"Failed to ping hardware watchdog: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @watchdog_ping() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = load i64, i64* @watchdog_fd, align 8
  %4 = icmp slt i64 %3, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %0
  %6 = call i32 (...) @open_watchdog()
  store i32 %6, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = icmp slt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %5
  %10 = load i32, i32* %2, align 4
  store i32 %10, i32* %1, align 4
  br label %22

11:                                               ; preds = %5
  br label %12

12:                                               ; preds = %11, %0
  %13 = load i64, i64* @watchdog_fd, align 8
  %14 = load i32, i32* @WDIOC_KEEPALIVE, align 4
  %15 = call i32 @ioctl(i64 %13, i32 %14, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %12
  %19 = load i32, i32* @errno, align 4
  %20 = call i32 @log_warning_errno(i32 %19, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  store i32 %20, i32* %1, align 4
  br label %22

21:                                               ; preds = %12
  store i32 0, i32* %1, align 4
  br label %22

22:                                               ; preds = %21, %18, %9
  %23 = load i32, i32* %1, align 4
  ret i32 %23
}

declare dso_local i32 @open_watchdog(...) #1

declare dso_local i32 @ioctl(i64, i32, i32) #1

declare dso_local i32 @log_warning_errno(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
