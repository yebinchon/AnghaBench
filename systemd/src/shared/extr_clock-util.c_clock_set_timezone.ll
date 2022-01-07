; ModuleID = '/home/carl/AnghaBench/systemd/src/shared/extr_clock-util.c_clock_set_timezone.c'
source_filename = "/home/carl/AnghaBench/systemd/src/shared/extr_clock-util.c_clock_set_timezone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i32 }
%struct.timespec = type { i32 }
%struct.tm = type { i32 }
%struct.timezone = type { i32, i64 }

@CLOCK_REALTIME = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @clock_set_timezone(i32* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.timeval*, align 8
  %5 = alloca %struct.timespec, align 4
  %6 = alloca %struct.tm, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.timezone, align 8
  store i32* %0, i32** %3, align 8
  store %struct.timeval* null, %struct.timeval** %4, align 8
  %9 = load i32, i32* @CLOCK_REALTIME, align 4
  %10 = call i64 @clock_gettime(i32 %9, %struct.timespec* %5)
  %11 = icmp eq i64 %10, 0
  %12 = zext i1 %11 to i32
  %13 = call i32 @assert_se(i32 %12)
  %14 = getelementptr inbounds %struct.timespec, %struct.timespec* %5, i32 0, i32 0
  %15 = call i32 @localtime_r(i32* %14, %struct.tm* %6)
  %16 = call i32 @assert_se(i32 %15)
  %17 = getelementptr inbounds %struct.tm, %struct.tm* %6, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = sdiv i32 %18, 60
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* %7, align 4
  %21 = sub nsw i32 0, %20
  %22 = getelementptr inbounds %struct.timezone, %struct.timezone* %8, i32 0, i32 0
  store i32 %21, i32* %22, align 8
  %23 = getelementptr inbounds %struct.timezone, %struct.timezone* %8, i32 0, i32 1
  store i64 0, i64* %23, align 8
  %24 = load %struct.timeval*, %struct.timeval** %4, align 8
  %25 = call i64 @settimeofday(%struct.timeval* %24, %struct.timezone* %8)
  %26 = icmp slt i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %1
  %28 = call i32 (...) @negative_errno()
  store i32 %28, i32* %2, align 4
  br label %36

29:                                               ; preds = %1
  %30 = load i32*, i32** %3, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %35

32:                                               ; preds = %29
  %33 = load i32, i32* %7, align 4
  %34 = load i32*, i32** %3, align 8
  store i32 %33, i32* %34, align 4
  br label %35

35:                                               ; preds = %32, %29
  store i32 0, i32* %2, align 4
  br label %36

36:                                               ; preds = %35, %27
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @assert_se(i32) #1

declare dso_local i64 @clock_gettime(i32, %struct.timespec*) #1

declare dso_local i32 @localtime_r(i32*, %struct.tm*) #1

declare dso_local i64 @settimeofday(%struct.timeval*, %struct.timezone*) #1

declare dso_local i32 @negative_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
