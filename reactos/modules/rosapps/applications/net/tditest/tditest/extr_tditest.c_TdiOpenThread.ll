; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiOpenThread.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiOpenThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@TRUE = common dso_local global i32 0, align 4
@OpenError = common dso_local global i32 0, align 4
@UDP_DEVICE_NAME = common dso_local global i32 0, align 4
@TEST_PORT = common dso_local global i32 0, align 4
@TdiTransport = common dso_local global i32 0, align 4
@TdiTransportObject = common dso_local global i32 0, align 4
@LocalAddress = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"Using local IP address 0x%X\0A\00", align 1
@MIN_TRACE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [39 x i8] c"Unable to determine local IP address.\0A\00", align 1
@.str.3 = private unnamed_addr constant [40 x i8] c"Cannot open transport (Status = 0x%X).\0A\00", align 1
@.str.4 = private unnamed_addr constant [22 x i8] c"Setting close event.\0A\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"Leaving.\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiOpenThread(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @MAX_TRACE, align 4
  %6 = call i32 @TDI_DbgPrint(i32 %5, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @TRUE, align 4
  store i32 %7, i32* @OpenError, align 4
  %8 = load i32, i32* @UDP_DEVICE_NAME, align 4
  %9 = load i32, i32* @TEST_PORT, align 4
  %10 = call i32 @TdiOpenTransport(i32 %8, i32 %9, i32* @TdiTransport, i32* @TdiTransportObject)
  store i32 %10, i32* %4, align 4
  %11 = load i32, i32* %4, align 4
  %12 = call i64 @NT_SUCCESS(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %1
  %15 = load i32, i32* @TdiTransportObject, align 4
  %16 = call i32 @TdiQueryAddress(i32 %15, i32* @LocalAddress)
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i64 @NT_SUCCESS(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %24

20:                                               ; preds = %14
  %21 = load i32, i32* @FALSE, align 4
  store i32 %21, i32* @OpenError, align 4
  %22 = load i32, i32* @LocalAddress, align 4
  %23 = call i32 @DbgPrint(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %22)
  br label %27

24:                                               ; preds = %14
  %25 = load i32, i32* @MIN_TRACE, align 4
  %26 = call i32 @TDI_DbgPrint(i32 %25, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.2, i64 0, i64 0))
  br label %27

27:                                               ; preds = %24, %20
  br label %34

28:                                               ; preds = %1
  %29 = load i32, i32* @MIN_TRACE, align 4
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TDI_DbgPrint(i32 %29, i8* %32)
  br label %34

34:                                               ; preds = %28, %27
  %35 = load i32, i32* @MAX_TRACE, align 4
  %36 = call i32 @TDI_DbgPrint(i32 %35, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.4, i64 0, i64 0))
  %37 = load i64, i64* %3, align 8
  %38 = trunc i64 %37 to i32
  %39 = load i32, i32* @FALSE, align 4
  %40 = call i32 @KeSetEvent(i32 %38, i32 0, i32 %39)
  %41 = load i32, i32* @MIN_TRACE, align 4
  %42 = call i32 @TDI_DbgPrint(i32 %41, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0))
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @TDI_DbgPrint(i32, i8*) #1

declare dso_local i32 @TdiOpenTransport(i32, i32, i32*, i32*) #1

declare dso_local i64 @NT_SUCCESS(i32) #1

declare dso_local i32 @TdiQueryAddress(i32, i32*) #1

declare dso_local i32 @DbgPrint(i8*, i32) #1

declare dso_local i32 @KeSetEvent(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
