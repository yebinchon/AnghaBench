; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_open_kmsg.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_open_kmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kmsg_fd = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [10 x i8] c"/dev/kmsg\00", align 1
@O_WRONLY = common dso_local global i32 0, align 4
@O_NOCTTY = common dso_local global i32 0, align 4
@O_CLOEXEC = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @log_open_kmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @log_open_kmsg() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @kmsg_fd, align 8
  %3 = icmp sge i64 %2, 0
  br i1 %3, label %4, label %5

4:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  br label %20

5:                                                ; preds = %0
  %6 = load i32, i32* @O_WRONLY, align 4
  %7 = load i32, i32* @O_NOCTTY, align 4
  %8 = or i32 %6, %7
  %9 = load i32, i32* @O_CLOEXEC, align 4
  %10 = or i32 %8, %9
  %11 = call i64 @open(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %10)
  store i64 %11, i64* @kmsg_fd, align 8
  %12 = load i64, i64* @kmsg_fd, align 8
  %13 = icmp slt i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %5
  %15 = load i32, i32* @errno, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %1, align 4
  br label %20

17:                                               ; preds = %5
  %18 = load i64, i64* @kmsg_fd, align 8
  %19 = call i64 @fd_move_above_stdio(i64 %18)
  store i64 %19, i64* @kmsg_fd, align 8
  store i32 0, i32* %1, align 4
  br label %20

20:                                               ; preds = %17, %14, %4
  %21 = load i32, i32* %1, align 4
  ret i32 %21
}

declare dso_local i64 @open(i8*, i32) #1

declare dso_local i64 @fd_move_above_stdio(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
