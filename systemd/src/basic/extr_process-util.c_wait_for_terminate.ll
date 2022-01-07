; ModuleID = '/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_wait_for_terminate.c'
source_filename = "/home/carl/AnghaBench/systemd/src/basic/extr_process-util.c_wait_for_terminate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@P_PID = common dso_local global i32 0, align 4
@WEXITED = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EINTR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wait_for_terminate(i32 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  %7 = load i32, i32* %4, align 4
  %8 = icmp sge i32 %7, 1
  %9 = zext i1 %8 to i32
  %10 = call i32 @assert(i32 %9)
  %11 = load i32*, i32** %5, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32* %6, i32** %5, align 8
  br label %14

14:                                               ; preds = %13, %2
  br label %15

15:                                               ; preds = %29, %14
  %16 = load i32*, i32** %5, align 8
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @zero(i32 %17)
  %19 = load i32, i32* @P_PID, align 4
  %20 = load i32, i32* %4, align 4
  %21 = load i32*, i32** %5, align 8
  %22 = load i32, i32* @WEXITED, align 4
  %23 = call i64 @waitid(i32 %19, i32 %20, i32* %21, i32 %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %32

25:                                               ; preds = %15
  %26 = load i64, i64* @errno, align 8
  %27 = load i64, i64* @EINTR, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %15

30:                                               ; preds = %25
  %31 = call i32 (...) @negative_errno()
  store i32 %31, i32* %3, align 4
  br label %33

32:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %33

33:                                               ; preds = %32, %30
  %34 = load i32, i32* %3, align 4
  ret i32 %34
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @zero(i32) #1

declare dso_local i64 @waitid(i32, i32, i32*, i32) #1

declare dso_local i32 @negative_errno(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
