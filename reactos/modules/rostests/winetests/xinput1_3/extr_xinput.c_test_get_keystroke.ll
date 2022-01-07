; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_keystroke.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/xinput1_3/extr_xinput.c_test_get_keystroke.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@XUSER_MAX_COUNT = common dso_local global i64 0, align 8
@XINPUT_FLAG_GAMEPAD = common dso_local global i32 0, align 4
@ERROR_EMPTY = common dso_local global i64 0, align 8
@ERROR_SUCCESS = common dso_local global i64 0, align 8
@ERROR_DEVICE_NOT_CONNECTED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [37 x i8] c"XInputGetKeystroke failed with (%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"Controller %d is not connected\0A\00", align 1
@ERROR_BAD_ARGUMENTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [34 x i8] c"XInputGetKeystroke returned (%d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_get_keystroke to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_get_keystroke() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  store i64 0, i64* %2, align 8
  br label %4

4:                                                ; preds = %36, %0
  %5 = load i64, i64* %2, align 8
  %6 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %7 = icmp slt i64 %5, %6
  br i1 %7, label %8, label %39

8:                                                ; preds = %4
  %9 = call i32 @ZeroMemory(i32* %1, i32 4)
  %10 = load i64, i64* %2, align 8
  %11 = load i32, i32* @XINPUT_FLAG_GAMEPAD, align 4
  %12 = call i64 @pXInputGetKeystroke(i64 %10, i32 %11, i32* %1)
  store i64 %12, i64* %3, align 8
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @ERROR_EMPTY, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %24, label %16

16:                                               ; preds = %8
  %17 = load i64, i64* %3, align 8
  %18 = load i64, i64* @ERROR_SUCCESS, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %24, label %20

20:                                               ; preds = %16
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %23 = icmp eq i64 %21, %22
  br label %24

24:                                               ; preds = %20, %16, %8
  %25 = phi i1 [ true, %16 ], [ true, %8 ], [ %23, %20 ]
  %26 = zext i1 %25 to i32
  %27 = load i64, i64* %3, align 8
  %28 = call i32 @ok(i32 %26, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i64 %27)
  %29 = load i64, i64* @ERROR_DEVICE_NOT_CONNECTED, align 8
  %30 = load i64, i64* %3, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i64, i64* %2, align 8
  %34 = call i32 @skip(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i64 %33)
  br label %35

35:                                               ; preds = %32, %24
  br label %36

36:                                               ; preds = %35
  %37 = load i64, i64* %2, align 8
  %38 = add nsw i64 %37, 1
  store i64 %38, i64* %2, align 8
  br label %4

39:                                               ; preds = %4
  %40 = call i32 @ZeroMemory(i32* %1, i32 4)
  %41 = load i64, i64* @XUSER_MAX_COUNT, align 8
  %42 = add nsw i64 %41, 1
  %43 = load i32, i32* @XINPUT_FLAG_GAMEPAD, align 4
  %44 = call i64 @pXInputGetKeystroke(i64 %42, i32 %43, i32* %1)
  store i64 %44, i64* %3, align 8
  %45 = load i64, i64* %3, align 8
  %46 = load i64, i64* @ERROR_BAD_ARGUMENTS, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i32
  %49 = load i64, i64* %3, align 8
  %50 = call i32 @ok(i32 %48, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i64 %49)
  ret void
}

declare dso_local i32 @ZeroMemory(i32*, i32) #1

declare dso_local i64 @pXInputGetKeystroke(i64, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i32 @skip(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
