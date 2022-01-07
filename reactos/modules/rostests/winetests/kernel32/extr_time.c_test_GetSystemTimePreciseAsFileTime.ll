; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetSystemTimePreciseAsFileTime.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/kernel32/extr_time.c_test_GetSystemTimePreciseAsFileTime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [96 x i8] c"Difference between GetSystemTimeAsFileTime and GetSystemTimePreciseAsFileTime more than 100 ms\0A\00", align 1
@.str.1 = private unnamed_addr constant [62 x i8] c"GetSystemTimePreciseAsFileTime incremented by more than 1 ms\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_GetSystemTimePreciseAsFileTime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_GetSystemTimePreciseAsFileTime() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = call i32 @GetSystemTimeAsFileTime(i32* %1)
  %6 = call i64 @get_longlong_time(i32* %1)
  store i64 %6, i64* %2, align 8
  %7 = call i32 @pGetSystemTimePreciseAsFileTime(i32* %1)
  %8 = call i64 @get_longlong_time(i32* %1)
  store i64 %8, i64* %3, align 8
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* %2, align 8
  %11 = sub nsw i64 %9, %10
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %4, align 4
  %13 = load i32, i32* %4, align 4
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %0
  %16 = load i32, i32* %4, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %18

18:                                               ; preds = %15, %0
  %19 = load i32, i32* %4, align 4
  %20 = icmp slt i32 %19, 1000000
  %21 = zext i1 %20 to i32
  %22 = call i32 @ok(i32 %21, i8* getelementptr inbounds ([96 x i8], [96 x i8]* @.str, i64 0, i64 0))
  %23 = call i32 @pGetSystemTimePreciseAsFileTime(i32* %1)
  %24 = call i64 @get_longlong_time(i32* %1)
  store i64 %24, i64* %2, align 8
  br label %25

25:                                               ; preds = %28, %18
  %26 = call i32 @pGetSystemTimePreciseAsFileTime(i32* %1)
  %27 = call i64 @get_longlong_time(i32* %1)
  store i64 %27, i64* %3, align 8
  br label %28

28:                                               ; preds = %25
  %29 = load i64, i64* %3, align 8
  %30 = load i64, i64* %2, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %25, label %32

32:                                               ; preds = %28
  %33 = load i64, i64* %3, align 8
  %34 = load i64, i64* %2, align 8
  %35 = sub nsw i64 %33, %34
  %36 = trunc i64 %35 to i32
  store i32 %36, i32* %4, align 4
  %37 = load i32, i32* %4, align 4
  %38 = icmp slt i32 %37, 10000
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = load i32, i32* %4, align 4
  %41 = icmp sgt i32 %40, 0
  br label %42

42:                                               ; preds = %39, %32
  %43 = phi i1 [ false, %32 ], [ %41, %39 ]
  %44 = zext i1 %43 to i32
  %45 = call i32 @ok(i32 %44, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @GetSystemTimeAsFileTime(i32*) #1

declare dso_local i64 @get_longlong_time(i32*) #1

declare dso_local i32 @pGetSystemTimePreciseAsFileTime(i32*) #1

declare dso_local i32 @ok(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
