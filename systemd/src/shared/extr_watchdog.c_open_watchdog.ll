; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_open_watchdog.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_watchdog.c_open_watchdog.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.watchdog_info = type { i32, i32 }

@watchdog_fd = common dso_local global i64 0, align 8
@watchdog_device = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [14 x i8] c"/dev/watchdog\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@WDIOC_GETSUPPORT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [35 x i8] c"Hardware watchdog '%s', version %x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @open_watchdog to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @open_watchdog() #0 {
  %1 = alloca i32, align 4
  %2 = alloca %struct.watchdog_info, align 4
  %3 = load i64, i64* @watchdog_fd, align 8
  %4 = icmp sge i64 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %36

6:                                                ; preds = %0
  %7 = load i64, i64* @watchdog_device, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %6
  %10 = inttoptr i64 %7 to i8*
  br label %12

11:                                               ; preds = %6
  br label %12

12:                                               ; preds = %11, %9
  %13 = phi i8* [ %10, %9 ], [ getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), %11 ]
  %14 = load i32, i32* @O_WRONLY, align 4
  %15 = load i32, i32* @O_CLOEXEC, align 4
  %16 = or i32 %14, %15
  %17 = call i64 @open(i8* %13, i32 %16)
  store i64 %17, i64* @watchdog_fd, align 8
  %18 = load i64, i64* @watchdog_fd, align 8
  %19 = icmp slt i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %12
  %21 = load i32, i32* @errno, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %1, align 4
  br label %36

23:                                               ; preds = %12
  %24 = load i64, i64* @watchdog_fd, align 8
  %25 = load i32, i32* @WDIOC_GETSUPPORT, align 4
  %26 = call i64 @ioctl(i64 %24, i32 %25, %struct.watchdog_info* %2)
  %27 = icmp sge i64 %26, 0
  br i1 %27, label %28, label %34

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %2, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = getelementptr inbounds %struct.watchdog_info, %struct.watchdog_info* %2, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @log_info(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.1, i64 0, i64 0), i32 %30, i32 %32)
  br label %34

34:                                               ; preds = %28, %23
  %35 = call i32 (...) @update_timeout()
  store i32 %35, i32* %1, align 4
  br label %36

36:                                               ; preds = %34, %20, %5
  %37 = load i32, i32* %1, align 4
  ret i32 %37
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @ioctl(i64, i32, %struct.watchdog_info*) #1

declare dso_local i32 @log_info(i8*, i32, i32) #1

declare dso_local i32 @update_timeout(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
