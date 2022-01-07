; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiQueryGetIPSnmpInfo.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_ninfo.c_InfoTdiQueryGetIPSnmpInfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i8*, i8* }

@TDI_INVALID_REQUEST = common dso_local global i32 0, align 4
@DEBUG_INFO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"Called.\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Returning %08x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InfoTdiQueryGetIPSnmpInfo(i32 %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_3__, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %13 = call i8* (...) @CountInterfaces()
  store i8* %13, i8** %10, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i8* @CountFIBs(i32 %14)
  store i8* %15, i8** %11, align 8
  %16 = load i32, i32* @TDI_INVALID_REQUEST, align 4
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* @DEBUG_INFO, align 4
  %18 = call i32 @TI_DbgPrint(i32 %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0))
  %19 = call i32 @RtlZeroMemory(%struct.TYPE_3__* %9, i32 24)
  %20 = load i8*, i8** %10, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 2
  store i8* %20, i8** %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 0
  store i32 1, i32* %22, align 8
  %23 = load i8*, i8** %11, align 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %9, i32 0, i32 1
  store i8* %23, i8** %24, align 8
  %25 = ptrtoint %struct.TYPE_3__* %9 to i32
  %26 = load i32, i32* %7, align 4
  %27 = load i32, i32* %8, align 4
  %28 = call i32 @InfoCopyOut(i32 %25, i32 24, i32 %26, i32 %27)
  store i32 %28, i32* %12, align 4
  %29 = load i32, i32* @DEBUG_INFO, align 4
  %30 = load i32, i32* %12, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TI_DbgPrint(i32 %29, i8* %32)
  %34 = load i32, i32* %12, align 4
  ret i32 %34
}

declare dso_local i8* @CountInterfaces(...) #1

declare dso_local i8* @CountFIBs(i32) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @RtlZeroMemory(%struct.TYPE_3__*, i32) #1

declare dso_local i32 @InfoCopyOut(i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
