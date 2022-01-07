; ModuleID = '/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiSendThread.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rosapps/applications/net/tditest/tditest/extr_tditest.c_TdiSendThread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@STATUS_SUCCESS = common dso_local global i8* null, align 8
@__const.TdiSendThread.Data = private unnamed_addr constant [40 x i8] c"Testing one, two, three, ...\00\00\00\00\00\00\00\00\00\00\00\00", align 16
@OpenError = common dso_local global i32 0, align 4
@SynchronizationEvent = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@StopEvent = common dso_local global i32 0, align 4
@WaitAny = common dso_local global i32 0, align 4
@Executive = common dso_local global i32 0, align 4
@KernelMode = common dso_local global i32 0, align 4
@MAX_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"Received terminate signal...\0A\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"Sending data - '%s'\0A\00", align 1
@TdiTransportObject = common dso_local global i32 0, align 4
@TEST_PORT = common dso_local global i32 0, align 4
@LocalAddress = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"Failed sending data (Status = 0x%X)\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"Terminating send thread...\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @TdiSendThread(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca [2 x i32*], align 16
  %6 = alloca %struct.TYPE_3__, align 8
  %7 = alloca i8*, align 8
  %8 = alloca [40 x i8], align 16
  store i32 %0, i32* %3, align 4
  %9 = load i8*, i8** @STATUS_SUCCESS, align 8
  store i8* %9, i8** %7, align 8
  %10 = bitcast [40 x i8]* %8 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %10, i8* align 16 getelementptr inbounds ([40 x i8], [40 x i8]* @__const.TdiSendThread.Data, i32 0, i32 0), i64 40, i1 false)
  %11 = load i32, i32* @OpenError, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %60, label %13

13:                                               ; preds = %1
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 10000000, i64* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = mul nsw i64 %16, 2
  store i64 %17, i64* %15, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = sub nsw i64 0, %19
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  store i64 %20, i64* %21, align 8
  %22 = load i32, i32* @SynchronizationEvent, align 4
  %23 = load i32, i32* @FALSE, align 4
  %24 = call i32 @KeInitializeEvent(i32* %4, i32 %22, i32 %23)
  %25 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  store i32* @StopEvent, i32** %25, align 16
  %26 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 1
  store i32* %4, i32** %26, align 8
  br label %27

27:                                               ; preds = %58, %13
  %28 = load i8*, i8** %7, align 8
  %29 = call i64 @NT_SUCCESS(i8* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %59

31:                                               ; preds = %27
  %32 = getelementptr inbounds [2 x i32*], [2 x i32*]* %5, i64 0, i64 0
  %33 = ptrtoint i32** %32 to i32
  %34 = load i32, i32* @WaitAny, align 4
  %35 = load i32, i32* @Executive, align 4
  %36 = load i32, i32* @KernelMode, align 4
  %37 = load i32, i32* @FALSE, align 4
  %38 = call i32 @KeWaitForMultipleObjects(i32 2, i32 %33, i32 %34, i32 %35, i32 %36, i32 %37, %struct.TYPE_3__* %6, i32* null)
  %39 = call i64 @KeReadStateEvent(i32* @StopEvent)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %31
  %42 = load i32, i32* @MAX_TRACE, align 4
  %43 = call i32 @TDI_DbgPrint(i32 %42, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  br label %59

44:                                               ; preds = %31
  %45 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %46 = call i32 @DbgPrint(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8* %45)
  %47 = load i32, i32* @TdiTransportObject, align 4
  %48 = load i32, i32* @TEST_PORT, align 4
  %49 = load i32, i32* @LocalAddress, align 4
  %50 = getelementptr inbounds [40 x i8], [40 x i8]* %8, i64 0, i64 0
  %51 = call i8* @TdiSendDatagram(i32 %47, i32 %48, i32 %49, i8* %50, i32 40)
  store i8* %51, i8** %7, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = call i64 @NT_SUCCESS(i8* %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %44
  %56 = load i8*, i8** %7, align 8
  %57 = call i32 @DbgPrint(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i8* %56)
  br label %58

58:                                               ; preds = %55, %44
  br label %27

59:                                               ; preds = %41, %27
  br label %60

60:                                               ; preds = %59, %1
  %61 = load i32, i32* @MAX_TRACE, align 4
  %62 = call i32 @TDI_DbgPrint(i32 %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %63 = load i8*, i8** @STATUS_SUCCESS, align 8
  %64 = call i32 @PsTerminateSystemThread(i8* %63)
  %65 = load i32, i32* %2, align 4
  ret i32 %65
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @KeInitializeEvent(i32*, i32, i32) #2

declare dso_local i64 @NT_SUCCESS(i8*) #2

declare dso_local i32 @KeWaitForMultipleObjects(i32, i32, i32, i32, i32, i32, %struct.TYPE_3__*, i32*) #2

declare dso_local i64 @KeReadStateEvent(i32*) #2

declare dso_local i32 @TDI_DbgPrint(i32, i8*) #2

declare dso_local i32 @DbgPrint(i8*, i8*) #2

declare dso_local i8* @TdiSendDatagram(i32, i32, i32, i8*, i32) #2

declare dso_local i32 @PsTerminateSystemThread(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
