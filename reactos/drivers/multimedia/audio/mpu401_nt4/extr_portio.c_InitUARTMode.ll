; ModuleID = '/home/carl/AnghaBench/reactos/drivers/multimedia/audio/mpu401_nt4/extr_portio.c_InitUARTMode.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/multimedia/audio/mpu401_nt4/extr_portio.c_InitUARTMode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"InitUARTMode() called\0A\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"Resetting MPU401\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Waiting for an ACK\0A\00", align 1
@MPU401_TIMEOUT = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [20 x i8] c"Entering UART mode\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitUARTMode(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  store i32 0, i32* %5, align 4
  %6 = call i32 @DbgPrint(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %7 = load i64, i64* %3, align 8
  %8 = call i32 @WaitToSend(i64 %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %1
  %11 = load i32, i32* @FALSE, align 4
  store i32 %11, i32* %2, align 4
  br label %43

12:                                               ; preds = %1
  %13 = call i32 @DbgPrint(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0))
  %14 = load i64, i64* %3, align 8
  %15 = call i32 @MPU401_WRITE_COMMAND(i64 %14, i32 255)
  %16 = call i32 @DbgPrint(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %17 = load i64, i64* %3, align 8
  %18 = call i64 @WaitToReceive(i64 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %12
  %21 = load i64, i64* @MPU401_TIMEOUT, align 8
  store i64 %21, i64* %4, align 8
  br label %22

22:                                               ; preds = %34, %20
  %23 = load i64, i64* %3, align 8
  %24 = call i32 @MPU401_READ_DATA(i64 %23)
  %25 = and i32 %24, 254
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %22
  %28 = load i64, i64* %4, align 8
  %29 = icmp sgt i64 %28, 0
  br label %30

30:                                               ; preds = %27, %22
  %31 = phi i1 [ false, %22 ], [ %29, %27 ]
  %32 = zext i1 %31 to i32
  store i32 %32, i32* %5, align 4
  br i1 %31, label %33, label %37

33:                                               ; preds = %30
  br label %34

34:                                               ; preds = %33
  %35 = load i64, i64* %4, align 8
  %36 = add nsw i64 %35, -1
  store i64 %36, i64* %4, align 8
  br label %22

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %12
  %39 = call i32 @DbgPrint(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.3, i64 0, i64 0))
  %40 = load i64, i64* %3, align 8
  %41 = call i32 @MPU401_WRITE_COMMAND(i64 %40, i32 63)
  %42 = load i32, i32* @TRUE, align 4
  store i32 %42, i32* %2, align 4
  br label %43

43:                                               ; preds = %38, %10
  %44 = load i32, i32* %2, align 4
  ret i32 %44
}

declare dso_local i32 @DbgPrint(i8*) #1

declare dso_local i32 @WaitToSend(i64) #1

declare dso_local i32 @MPU401_WRITE_COMMAND(i64, i32) #1

declare dso_local i64 @WaitToReceive(i64) #1

declare dso_local i32 @MPU401_READ_DATA(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
