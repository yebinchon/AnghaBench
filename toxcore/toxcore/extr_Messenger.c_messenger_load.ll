; ModuleID = '/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_load.c'
source_filename = "/home/carl/AnghaBench/toxcore/toxcore/extr_Messenger.c_messenger_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MESSENGER_STATE_COOKIE_GLOBAL = common dso_local global i64 0, align 8
@messenger_load_state_callback = common dso_local global i32 0, align 4
@MESSENGER_STATE_COOKIE_TYPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @messenger_load(i32* %0, i32* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca [2 x i64], align 16
  %9 = alloca i64, align 8
  store i32* %0, i32** %5, align 8
  store i32* %1, i32** %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 16, i64* %9, align 8
  %10 = load i64, i64* %7, align 8
  %11 = load i64, i64* %9, align 8
  %12 = icmp slt i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %43

14:                                               ; preds = %3
  %15 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %16 = load i32*, i32** %6, align 8
  %17 = call i32 @memcpy(i64* %15, i32* %16, i32 8)
  %18 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %19 = getelementptr inbounds i64, i64* %18, i64 1
  %20 = load i32*, i32** %6, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 8
  %22 = call i32 @lendian_to_host32(i64* %19, i32* %21)
  %23 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 0
  %24 = load i64, i64* %23, align 16
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %42, label %26

26:                                               ; preds = %14
  %27 = getelementptr inbounds [2 x i64], [2 x i64]* %8, i64 0, i64 1
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @MESSENGER_STATE_COOKIE_GLOBAL, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %42

31:                                               ; preds = %26
  %32 = load i32, i32* @messenger_load_state_callback, align 4
  %33 = load i32*, i32** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load i64, i64* %9, align 8
  %36 = getelementptr inbounds i32, i32* %34, i64 %35
  %37 = load i64, i64* %7, align 8
  %38 = load i64, i64* %9, align 8
  %39 = sub nsw i64 %37, %38
  %40 = load i32, i32* @MESSENGER_STATE_COOKIE_TYPE, align 4
  %41 = call i32 @load_state(i32 %32, i32* %33, i32* %36, i64 %39, i32 %40)
  store i32 %41, i32* %4, align 4
  br label %43

42:                                               ; preds = %26, %14
  store i32 -1, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %31, %13
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i32 @memcpy(i64*, i32*, i32) #1

declare dso_local i32 @lendian_to_host32(i64*, i32*) #1

declare dso_local i32 @load_state(i32, i32*, i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
