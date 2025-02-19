; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_pipe_eof.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_io-util.c_pipe_eof.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pollfd = type { i32, i32, i32 }

@POLLIN = common dso_local global i32 0, align 4
@POLLHUP = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pipe_eof(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca %struct.pollfd, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 0
  %7 = load i32, i32* %3, align 4
  store i32 %7, i32* %6, align 4
  %8 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 1
  %9 = load i32, i32* @POLLIN, align 4
  %10 = load i32, i32* @POLLHUP, align 4
  %11 = or i32 %9, %10
  store i32 %11, i32* %8, align 4
  %12 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 2
  store i32 0, i32* %12, align 4
  %13 = call i32 @poll(%struct.pollfd* %4, i32 1, i32 0)
  store i32 %13, i32* %5, align 4
  %14 = load i32, i32* %5, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load i32, i32* @errno, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %28

19:                                               ; preds = %1
  %20 = load i32, i32* %5, align 4
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i32 0, i32* %2, align 4
  br label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.pollfd, %struct.pollfd* %4, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* @POLLHUP, align 4
  %27 = and i32 %25, %26
  store i32 %27, i32* %2, align 4
  br label %28

28:                                               ; preds = %23, %22, %16
  %29 = load i32, i32* %2, align 4
  ret i32 %29
}

declare dso_local i32 @poll(%struct.pollfd*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
