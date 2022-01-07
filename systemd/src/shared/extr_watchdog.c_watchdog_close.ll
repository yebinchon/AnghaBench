; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_watchdog_close.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_watchdog_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@watchdog_fd = common dso_local global i64 0, align 8
@WDIOS_DISABLECARD = common dso_local global i32 0, align 4
@WDIOC_SETOPTIONS = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"Failed to disable hardware watchdog: %m\00", align 1
@watchdog_close.v = internal constant i8 86, align 1
@EINTR = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [36 x i8] c"Failed to disarm watchdog timer: %m\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @watchdog_close(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %5 = load i64, i64* @watchdog_fd, align 8
  %6 = icmp slt i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %39

8:                                                ; preds = %1
  %9 = load i32, i32* %2, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %36

11:                                               ; preds = %8
  %12 = load i32, i32* @WDIOS_DISABLECARD, align 4
  store i32 %12, i32* %4, align 4
  %13 = load i64, i64* @watchdog_fd, align 8
  %14 = load i32, i32* @WDIOC_SETOPTIONS, align 4
  %15 = call i32 @ioctl(i64 %13, i32 %14, i32* %4)
  store i32 %15, i32* %3, align 4
  %16 = load i32, i32* %3, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %11
  %19 = load i64, i64* @errno, align 8
  %20 = call i32 @log_warning_errno(i64 %19, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  br label %21

21:                                               ; preds = %18, %11
  br label %22

22:                                               ; preds = %34, %21
  %23 = load i64, i64* @watchdog_fd, align 8
  %24 = call i64 @write(i64 %23, i8* @watchdog_close.v, i32 1)
  %25 = icmp sgt i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %22
  br label %35

27:                                               ; preds = %22
  %28 = load i64, i64* @errno, align 8
  %29 = load i64, i64* @EINTR, align 8
  %30 = icmp ne i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i64, i64* @errno, align 8
  %33 = call i32 @log_error_errno(i64 %32, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0))
  br label %35

34:                                               ; preds = %27
  br label %22

35:                                               ; preds = %31, %26
  br label %36

36:                                               ; preds = %35, %8
  %37 = load i64, i64* @watchdog_fd, align 8
  %38 = call i64 @safe_close(i64 %37)
  store i64 %38, i64* @watchdog_fd, align 8
  br label %39

39:                                               ; preds = %36, %7
  ret void
}

declare dso_local i32 @ioctl(i64, i32, i32*) #1

declare dso_local i32 @log_warning_errno(i64, i8*) #1

declare dso_local i64 @write(i64, i8*, i32) #1

declare dso_local i32 @log_error_errno(i64, i8*) #1

declare dso_local i64 @safe_close(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
