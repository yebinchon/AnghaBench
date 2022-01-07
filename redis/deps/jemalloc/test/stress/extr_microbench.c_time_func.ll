; ModuleID = '/home/carl/AnghaBench/redis/deps/jemalloc/test/stress/extr_microbench.c_time_func.c'
source_filename = "/home/carl/AnghaBench/redis/deps/jemalloc/test/stress/extr_microbench.c_time_func.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i64, i64, void ()*)* @time_func to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @time_func(i32* %0, i64 %1, i64 %2, void ()* %3) #0 {
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca void ()*, align 8
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store void ()* %3, void ()** %8, align 8
  store i64 0, i64* %9, align 8
  br label %10

10:                                               ; preds = %16, %4
  %11 = load i64, i64* %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp slt i64 %11, %12
  br i1 %13, label %14, label %19

14:                                               ; preds = %10
  %15 = load void ()*, void ()** %8, align 8
  call void %15()
  br label %16

16:                                               ; preds = %14
  %17 = load i64, i64* %9, align 8
  %18 = add nsw i64 %17, 1
  store i64 %18, i64* %9, align 8
  br label %10

19:                                               ; preds = %10
  %20 = load i32*, i32** %5, align 8
  %21 = call i32 @timer_start(i32* %20)
  store i64 0, i64* %9, align 8
  br label %22

22:                                               ; preds = %28, %19
  %23 = load i64, i64* %9, align 8
  %24 = load i64, i64* %7, align 8
  %25 = icmp slt i64 %23, %24
  br i1 %25, label %26, label %31

26:                                               ; preds = %22
  %27 = load void ()*, void ()** %8, align 8
  call void %27()
  br label %28

28:                                               ; preds = %26
  %29 = load i64, i64* %9, align 8
  %30 = add nsw i64 %29, 1
  store i64 %30, i64* %9, align 8
  br label %22

31:                                               ; preds = %22
  %32 = load i32*, i32** %5, align 8
  %33 = call i32 @timer_stop(i32* %32)
  ret void
}

declare dso_local i32 @timer_start(i32*) #1

declare dso_local i32 @timer_stop(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
