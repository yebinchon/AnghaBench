; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiReceiveThread.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiReceiveThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_SUCCESS = common dso_local global i64 0, align 8
@OpenError = common dso_local global i32 0, align 4
@TdiTransportObject = common dso_local global i32 0, align 4
@TEST_PORT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Received data - '%s'\0A\00", align 1
@STATUS_CANCELLED = common dso_local global i64 0, align 8
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Receive error (Status = 0x%X).\0A\00", align 1
@MAX_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [20 x i8] c"IRP was cancelled.\0A\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"Terminating receive thread...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiReceiveThread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [40 x i32], align 16
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store i32 %0, i32* %3, align 4
  %8 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %8, i64* %7, align 8
  %9 = load i32, i32* @OpenError, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %45, label %11

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %43, %11
  %13 = load i64, i64* %7, align 8
  %14 = call i64 @NT_SUCCESS(i64 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  store i32 160, i32* %6, align 4
  %17 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %18 = load i32, i32* %6, align 4
  %19 = call i32 @RtlZeroMemory(i32* %17, i32 %18)
  %20 = load i32, i32* @TdiTransportObject, align 4
  %21 = load i32, i32* @TEST_PORT, align 4
  %22 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %23 = call i64 @TdiReceiveDatagram(i32 %20, i32 %21, i32* %4, i32* %22, i32* %6)
  store i64 %23, i64* %7, align 8
  %24 = load i64, i64* %7, align 8
  %25 = call i64 @NT_SUCCESS(i64 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = getelementptr inbounds [40 x i32], [40 x i32]* %5, i64 0, i64 0
  %29 = call i32 @DbgPrint(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %28)
  br label %43

30:                                               ; preds = %16
  %31 = load i64, i64* %7, align 8
  %32 = load i64, i64* @STATUS_CANCELLED, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %30
  %35 = load i32, i32* @MIN_TRACE, align 4
  %36 = load i64, i64* %7, align 8
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @TDI_DbgPrint(i32 %35, i8* %37)
  br label %42

39:                                               ; preds = %30
  %40 = load i32, i32* @MAX_TRACE, align 4
  %41 = call i32 @TDI_DbgPrint(i32 %40, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  br label %42

42:                                               ; preds = %39, %34
  br label %43

43:                                               ; preds = %42, %27
  br label %12

44:                                               ; preds = %12
  br label %45

45:                                               ; preds = %44, %1
  %46 = load i32, i32* @MAX_TRACE, align 4
  %47 = call i32 @TDI_DbgPrint(i32 %46, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %48 = load i64, i64* @STATUS_SUCCESS, align 8
  %49 = call i32 @PsTerminateSystemThread(i64 %48)
  %50 = load i32, i32* %2, align 4
  ret i32 %50
}

declare dso_local i64 @NT_SUCCESS(i64) #1

declare dso_local i32 @RtlZeroMemory(i32*, i32) #1

declare dso_local i64 @TdiReceiveDatagram(i32, i32, i32*, i32*, i32*) #1

declare dso_local i32 @DbgPrint(i8*, i32*) #1

declare dso_local i32 @TDI_DbgPrint(i32, i8*) #1

declare dso_local i32 @PsTerminateSystemThread(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
