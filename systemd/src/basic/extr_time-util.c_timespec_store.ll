; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_timespec_store.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_timespec_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timespec = type { i64, i8* }

@USEC_INFINITY = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@TIME_T_MAX = common dso_local global i32 0, align 4
@NSEC_PER_USEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.timespec* @timespec_store(%struct.timespec* %0, i32 %1) #0 {
  %3 = alloca %struct.timespec*, align 8
  %4 = alloca %struct.timespec*, align 8
  %5 = alloca i32, align 4
  store %struct.timespec* %0, %struct.timespec** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.timespec*, %struct.timespec** %4, align 8
  %7 = call i32 @assert(%struct.timespec* %6)
  %8 = load i32, i32* %5, align 4
  %9 = load i32, i32* @USEC_INFINITY, align 4
  %10 = icmp eq i32 %8, %9
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @USEC_PER_SEC, align 4
  %14 = sdiv i32 %12, %13
  %15 = load i32, i32* @TIME_T_MAX, align 4
  %16 = icmp sge i32 %14, %15
  br i1 %16, label %17, label %23

17:                                               ; preds = %11, %2
  %18 = load %struct.timespec*, %struct.timespec** %4, align 8
  %19 = getelementptr inbounds %struct.timespec, %struct.timespec* %18, i32 0, i32 1
  store i8* inttoptr (i64 -1 to i8*), i8** %19, align 8
  %20 = load %struct.timespec*, %struct.timespec** %4, align 8
  %21 = getelementptr inbounds %struct.timespec, %struct.timespec* %20, i32 0, i32 0
  store i64 -1, i64* %21, align 8
  %22 = load %struct.timespec*, %struct.timespec** %4, align 8
  store %struct.timespec* %22, %struct.timespec** %3, align 8
  br label %40

23:                                               ; preds = %11
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @USEC_PER_SEC, align 4
  %26 = sdiv i32 %24, %25
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i8*
  %29 = load %struct.timespec*, %struct.timespec** %4, align 8
  %30 = getelementptr inbounds %struct.timespec, %struct.timespec* %29, i32 0, i32 1
  store i8* %28, i8** %30, align 8
  %31 = load i32, i32* %5, align 4
  %32 = load i32, i32* @USEC_PER_SEC, align 4
  %33 = srem i32 %31, %32
  %34 = load i32, i32* @NSEC_PER_USEC, align 4
  %35 = mul nsw i32 %33, %34
  %36 = sext i32 %35 to i64
  %37 = load %struct.timespec*, %struct.timespec** %4, align 8
  %38 = getelementptr inbounds %struct.timespec, %struct.timespec* %37, i32 0, i32 0
  store i64 %36, i64* %38, align 8
  %39 = load %struct.timespec*, %struct.timespec** %4, align 8
  store %struct.timespec* %39, %struct.timespec** %3, align 8
  br label %40

40:                                               ; preds = %23, %17
  %41 = load %struct.timespec*, %struct.timespec** %3, align 8
  ret %struct.timespec* %41
}

declare dso_local i32 @assert(%struct.timespec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
