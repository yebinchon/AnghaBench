; ModuleID = '/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_tcp_data_callback.c'
source_filename = "/home/carl/AnghaBench/toxcore/auto_tests/extr_TCP_test.c_tcp_data_callback.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [7 x i8] c"Gentoo\00", align 1
@tcp_data_callback_called = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32*, i32)* @tcp_data_callback to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_data_callback(i8* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i8*, i8** %6, align 8
  %11 = icmp ne i8* %10, inttoptr (i64 120397 to i8*)
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %28

13:                                               ; preds = %4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 123
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 -1, i32* %5, align 4
  br label %28

17:                                               ; preds = %13
  %18 = load i32, i32* %9, align 4
  %19 = icmp ne i32 %18, 6
  br i1 %19, label %20, label %21

20:                                               ; preds = %17
  store i32 -1, i32* %5, align 4
  br label %28

21:                                               ; preds = %17
  %22 = load i32*, i32** %8, align 8
  %23 = load i32, i32* %9, align 4
  %24 = call i64 @memcmp(i32* %22, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  store i32 -1, i32* %5, align 4
  br label %28

27:                                               ; preds = %21
  store i32 1, i32* @tcp_data_callback_called, align 4
  store i32 0, i32* %5, align 4
  br label %28

28:                                               ; preds = %27, %26, %20, %16, %12
  %29 = load i32, i32* %5, align 4
  ret i32 %29
}

declare dso_local i64 @memcmp(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
