; ModuleID = '/home/carl/AnghaBench/systemd/man/extr_journal-iterate-poll.c_wait_for_changes.c'
source_filename = "/home/carl/AnghaBench/systemd/man/extr_journal-iterate-poll.c_wait_for_changes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32 }
%struct.timespec = type { i32, i64 }

@CLOCK_MONOTONIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_changes(i32* %0) #0 {
  %2 = alloca i32*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.pollfd, align 4
  %6 = alloca %struct.timespec, align 8
  %7 = alloca i64, align 8
  store i32* %0, i32** %2, align 8
  %8 = load i32*, i32** %2, align 8
  %9 = call i32 @sd_journal_get_timeout(i32* %8, i64* %3)
  %10 = load i64, i64* %3, align 8
  %11 = icmp eq i64 %10, -1
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 -1, i32* %4, align 4
  br label %37

13:                                               ; preds = %1
  %14 = load i32, i32* @CLOCK_MONOTONIC, align 4
  %15 = call i32 @clock_gettime(i32 %14, %struct.timespec* %6)
  %16 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = mul nsw i64 %17, 1000000
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %6, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = sdiv i32 %20, 1000
  %22 = sext i32 %21 to i64
  %23 = add nsw i64 %18, %22
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %3, align 8
  %25 = load i64, i64* %7, align 8
  %26 = icmp sgt i64 %24, %25
  br i1 %26, label %27, label %34

27:                                               ; preds = %13
  %28 = load i64, i64* %3, align 8
  %29 = load i64, i64* %7, align 8
  %30 = sub nsw i64 %28, %29
  %31 = add nsw i64 %30, 999
  %32 = sdiv i64 %31, 1000
  %33 = trunc i64 %32 to i32
  br label %35

34:                                               ; preds = %13
  br label %35

35:                                               ; preds = %34, %27
  %36 = phi i32 [ %33, %27 ], [ 0, %34 ]
  store i32 %36, i32* %4, align 4
  br label %37

37:                                               ; preds = %35, %12
  %38 = load i32*, i32** %2, align 8
  %39 = call i32 @sd_journal_get_fd(i32* %38)
  %40 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 1
  store i32 %39, i32* %40, align 4
  %41 = load i32*, i32** %2, align 8
  %42 = call i32 @sd_journal_get_events(i32* %41)
  %43 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %5, i32 0, i32 0
  store i32 %42, i32* %43, align 4
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @poll(%struct.pollfd* %5, i32 1, i32 %44)
  %46 = load i32*, i32** %2, align 8
  %47 = call i32 @sd_journal_process(i32* %46)
  ret i32 %47
}

declare dso_local i32 @sd_journal_get_timeout(i32*, i64*) #1

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @sd_journal_get_fd(i32*) #1

declare dso_local i32 @sd_journal_get_events(i32*) #1

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

declare dso_local i32 @sd_journal_process(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
