; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_timeval_load.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_time-util.c_timeval_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.timeval = type { i64, i64 }

@USEC_INFINITY = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @timeval_load(%struct.timeval* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.timeval*, align 8
  store %struct.timeval* %0, %struct.timeval** %3, align 8
  %4 = load %struct.timeval*, %struct.timeval** %3, align 8
  %5 = call i32 @assert(%struct.timeval* %4)
  %6 = load %struct.timeval*, %struct.timeval** %3, align 8
  %7 = getelementptr inbounds %struct.timeval, %struct.timeval* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp slt i64 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %1
  %11 = load %struct.timeval*, %struct.timeval** %3, align 8
  %12 = getelementptr inbounds %struct.timeval, %struct.timeval* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = icmp slt i64 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %10, %1
  %16 = load i32, i32* @USEC_INFINITY, align 4
  store i32 %16, i32* %2, align 4
  br label %47

17:                                               ; preds = %10
  %18 = load %struct.timeval*, %struct.timeval** %3, align 8
  %19 = getelementptr inbounds %struct.timeval, %struct.timeval* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = load i32, i32* @UINT64_MAX, align 4
  %24 = sext i32 %23 to i64
  %25 = load %struct.timeval*, %struct.timeval** %3, align 8
  %26 = getelementptr inbounds %struct.timeval, %struct.timeval* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load i32, i32* @USEC_PER_SEC, align 4
  %30 = sext i32 %29 to i64
  %31 = sdiv i64 %28, %30
  %32 = icmp sgt i64 %22, %31
  br i1 %32, label %33, label %35

33:                                               ; preds = %17
  %34 = load i32, i32* @USEC_INFINITY, align 4
  store i32 %34, i32* %2, align 4
  br label %47

35:                                               ; preds = %17
  %36 = load %struct.timeval*, %struct.timeval** %3, align 8
  %37 = getelementptr inbounds %struct.timeval, %struct.timeval* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = trunc i64 %38 to i32
  %40 = load i32, i32* @USEC_PER_SEC, align 4
  %41 = mul nsw i32 %39, %40
  %42 = load %struct.timeval*, %struct.timeval** %3, align 8
  %43 = getelementptr inbounds %struct.timeval, %struct.timeval* %42, i32 0, i32 1
  %44 = load i64, i64* %43, align 8
  %45 = trunc i64 %44 to i32
  %46 = add nsw i32 %41, %45
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %35, %33, %15
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @assert(%struct.timeval*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
