; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_fd_wait_for_event.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_fd_wait_for_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }
%struct.timespec = type { i32 }

@USEC_INFINITY = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fd_wait_for_event(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.pollfd, align 4
  %9 = alloca %struct.timespec, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 0
  %12 = load i32, i32* %5, align 4
  store i32 %12, i32* %11, align 4
  %13 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 1
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %13, align 4
  %15 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 2
  store i32 0, i32* %15, align 4
  %16 = load i32, i32* %7, align 4
  %17 = load i32, i32* @USEC_INFINITY, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  br label %23

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = call i32* @timespec_store(%struct.timespec* %9, i32 %21)
  br label %23

23:                                               ; preds = %20, %19
  %24 = phi i32* [ null, %19 ], [ %22, %20 ]
  %25 = call i32 @ppoll(%struct.pollfd* %8, i32 1, i32* %24, i32* null)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %10, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @errno, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %4, align 4
  br label %38

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %38

35:                                               ; preds = %31
  %36 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %8, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %4, align 4
  br label %38

38:                                               ; preds = %35, %34, %28
  %39 = load i32, i32* %4, align 4
  ret i32 %39
}

declare dso_local i32 @ppoll(%struct.pollfd*, i32, i32*, i32*) #1

declare dso_local i32* @timespec_store(%struct.timespec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
