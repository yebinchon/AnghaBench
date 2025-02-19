; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_set_target.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_log.c_log_set_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@_LOG_TARGET_MAX = common dso_local global i64 0, align 8
@upgrade_syslog_to_journal = common dso_local global i64 0, align 8
@LOG_TARGET_SYSLOG = common dso_local global i64 0, align 8
@LOG_TARGET_JOURNAL = common dso_local global i64 0, align 8
@LOG_TARGET_SYSLOG_OR_KMSG = common dso_local global i64 0, align 8
@LOG_TARGET_JOURNAL_OR_KMSG = common dso_local global i64 0, align 8
@log_target = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @log_set_target(i64 %0) #0 {
  %2 = alloca i64, align 8
  store i64 %0, i64* %2, align 8
  %3 = load i64, i64* %2, align 8
  %4 = icmp sge i64 %3, 0
  %5 = zext i1 %4 to i32
  %6 = call i32 @assert(i32 %5)
  %7 = load i64, i64* %2, align 8
  %8 = load i64, i64* @_LOG_TARGET_MAX, align 8
  %9 = icmp slt i64 %7, %8
  %10 = zext i1 %9 to i32
  %11 = call i32 @assert(i32 %10)
  %12 = load i64, i64* @upgrade_syslog_to_journal, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i64, i64* %2, align 8
  %16 = load i64, i64* @LOG_TARGET_SYSLOG, align 8
  %17 = icmp eq i64 %15, %16
  br i1 %17, label %18, label %20

18:                                               ; preds = %14
  %19 = load i64, i64* @LOG_TARGET_JOURNAL, align 8
  store i64 %19, i64* %2, align 8
  br label %27

20:                                               ; preds = %14
  %21 = load i64, i64* %2, align 8
  %22 = load i64, i64* @LOG_TARGET_SYSLOG_OR_KMSG, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = load i64, i64* @LOG_TARGET_JOURNAL_OR_KMSG, align 8
  store i64 %25, i64* %2, align 8
  br label %26

26:                                               ; preds = %24, %20
  br label %27

27:                                               ; preds = %26, %18
  br label %28

28:                                               ; preds = %27, %1
  %29 = load i64, i64* %2, align 8
  store i64 %29, i64* @log_target, align 8
  ret void
}

declare dso_local i32 @assert(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
