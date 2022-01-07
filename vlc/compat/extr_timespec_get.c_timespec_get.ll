; ModuleID = '/home/carl/AnghaBench/vlc/compat/extr_timespec_get.c_timespec_get.c'
source_filename = "/home/carl/AnghaBench/vlc/compat/extr_timespec_get.c_timespec_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i32, i32 }
%struct.timeval = type { i32, i32 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timespec_get(%struct.timespec* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timeval, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %5, align 4
  switch i32 %7, label %28 [
    i32 128, label %8
  ]

8:                                                ; preds = %2
  %9 = load i32, i32* @CLOCK_REALTIME, align 4
  %10 = load %struct.timespec*, %struct.timespec** %4, align 8
  %11 = call i32 @clock_gettime(i32 %9, %struct.timespec* %10)
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %14

13:                                               ; preds = %8
  br label %29

14:                                               ; preds = %8
  %15 = call i32 @gettimeofday(%struct.timeval* %6, i32* null)
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %27

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.timespec*, %struct.timespec** %4, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 1
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = mul nsw i32 %23, 1000
  %25 = load %struct.timespec*, %struct.timespec** %4, align 8
  %26 = getelementptr inbounds %struct.timespec, %struct.timespec* %25, i32 0, i32 0
  store i32 %24, i32* %26, align 4
  br label %29

27:                                               ; preds = %14
  br label %28

28:                                               ; preds = %2, %27
  store i32 0, i32* %3, align 4
  br label %31

29:                                               ; preds = %17, %13
  %30 = load i32, i32* %5, align 4
  store i32 %30, i32* %3, align 4
  br label %31

31:                                               ; preds = %29, %28
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @gettimeofday(%struct.timeval*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
