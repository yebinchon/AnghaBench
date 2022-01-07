; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_random-util.c_initialize_srand.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_random-util.c_initialize_srand.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@initialize_srand.srand_called = internal global i32 0, align 4
@CLOCK_REALTIME = common dso_local global i32 0, align 4
@AT_RANDOM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @initialize_srand() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = load i32, i32* @initialize_srand.srand_called, align 4
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  br label %26

6:                                                ; preds = %0
  store i32 0, i32* %1, align 4
  %7 = load i32, i32* @CLOCK_REALTIME, align 4
  %8 = call i64 @now(i32 %7)
  %9 = trunc i64 %8 to i32
  %10 = load i32, i32* %1, align 4
  %11 = xor i32 %10, %9
  store i32 %11, i32* %1, align 4
  %12 = call i64 (...) @gettid()
  %13 = trunc i64 %12 to i32
  %14 = load i32, i32* %1, align 4
  %15 = xor i32 %14, %13
  store i32 %15, i32* %1, align 4
  %16 = call i64 @rdrand(i64* %2)
  %17 = icmp sge i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %6
  %19 = load i64, i64* %2, align 8
  %20 = trunc i64 %19 to i32
  %21 = load i32, i32* %1, align 4
  %22 = xor i32 %21, %20
  store i32 %22, i32* %1, align 4
  br label %23

23:                                               ; preds = %18, %6
  %24 = load i32, i32* %1, align 4
  %25 = call i32 @srand(i32 %24)
  store i32 1, i32* @initialize_srand.srand_called, align 4
  br label %26

26:                                               ; preds = %23, %5
  ret void
}

declare dso_local i64 @now(i32) #1

declare dso_local i64 @gettid(...) #1

declare dso_local i64 @rdrand(i64*) #1

declare dso_local i32 @srand(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
