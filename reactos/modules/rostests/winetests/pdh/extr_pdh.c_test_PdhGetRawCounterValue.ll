; ModuleID = '/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetRawCounterValue.c'
source_filename = "/home/carl/AnghaBench/reactos/modules/rostests/winetests/pdh/extr_pdh.c_test_PdhGetRawCounterValue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@ERROR_SUCCESS = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"PdhOpenQueryA failed 0x%08x\0A\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"\\System\\System Up Time\00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"PdhAddCounterA failed 0x%08x\0A\00", align 1
@PDH_INVALID_HANDLE = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [37 x i8] c"PdhGetRawCounterValue failed 0x%08x\0A\00", align 1
@PDH_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [31 x i8] c"expected ERROR_SUCCESS got %x\0A\00", align 1
@.str.5 = private unnamed_addr constant [35 x i8] c"PdhCollectQueryData failed 0x%08x\0A\00", align 1
@.str.6 = private unnamed_addr constant [29 x i8] c"PdhCloseQuery failed 0x%08x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_PdhGetRawCounterValue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_PdhGetRawCounterValue() #0 {
  %1 = alloca i64, align 8
  %2 = alloca i32, align 4
  %3 = alloca i32*, align 8
  %4 = alloca %struct.TYPE_3__, align 8
  %5 = call i64 @PdhOpenQueryA(i32* null, i32 0, i32* %2)
  store i64 %5, i64* %1, align 8
  %6 = load i64, i64* %1, align 8
  %7 = load i64, i64* @ERROR_SUCCESS, align 8
  %8 = icmp eq i64 %6, %7
  %9 = zext i1 %8 to i32
  %10 = load i64, i64* %1, align 8
  %11 = call i32 @ok(i32 %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i64 %10)
  %12 = load i32, i32* %2, align 4
  %13 = call i64 @PdhAddCounterA(i32 %12, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 0, i32** %3)
  store i64 %13, i64* %1, align 8
  %14 = load i64, i64* %1, align 8
  %15 = load i64, i64* @ERROR_SUCCESS, align 8
  %16 = icmp eq i64 %14, %15
  %17 = zext i1 %16 to i32
  %18 = load i64, i64* %1, align 8
  %19 = call i32 @ok(i32 %17, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i64 %18)
  %20 = call i64 @PdhGetRawCounterValue(i32* null, i32* null, %struct.TYPE_3__* %4)
  store i64 %20, i64* %1, align 8
  %21 = load i64, i64* %1, align 8
  %22 = load i64, i64* @PDH_INVALID_HANDLE, align 8
  %23 = icmp eq i64 %21, %22
  %24 = zext i1 %23 to i32
  %25 = load i64, i64* %1, align 8
  %26 = call i32 @ok(i32 %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %25)
  %27 = load i32*, i32** %3, align 8
  %28 = call i64 @PdhGetRawCounterValue(i32* %27, i32* null, %struct.TYPE_3__* null)
  store i64 %28, i64* %1, align 8
  %29 = load i64, i64* %1, align 8
  %30 = load i64, i64* @PDH_INVALID_ARGUMENT, align 8
  %31 = icmp eq i64 %29, %30
  %32 = zext i1 %31 to i32
  %33 = load i64, i64* %1, align 8
  %34 = call i32 @ok(i32 %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %33)
  %35 = load i32*, i32** %3, align 8
  %36 = call i64 @PdhGetRawCounterValue(i32* %35, i32* null, %struct.TYPE_3__* %4)
  store i64 %36, i64* %1, align 8
  %37 = load i64, i64* %1, align 8
  %38 = load i64, i64* @ERROR_SUCCESS, align 8
  %39 = icmp eq i64 %37, %38
  %40 = zext i1 %39 to i32
  %41 = load i64, i64* %1, align 8
  %42 = call i32 @ok(i32 %40, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %41)
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ERROR_SUCCESS, align 8
  %46 = icmp eq i64 %44, %45
  %47 = zext i1 %46 to i32
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %49 = load i64, i64* %48, align 8
  %50 = call i32 @ok(i32 %47, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %49)
  %51 = load i32, i32* %2, align 4
  %52 = call i64 @PdhCollectQueryData(i32 %51)
  store i64 %52, i64* %1, align 8
  %53 = load i64, i64* %1, align 8
  %54 = load i64, i64* @ERROR_SUCCESS, align 8
  %55 = icmp eq i64 %53, %54
  %56 = zext i1 %55 to i32
  %57 = load i64, i64* %1, align 8
  %58 = call i32 @ok(i32 %56, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.5, i64 0, i64 0), i64 %57)
  %59 = load i32*, i32** %3, align 8
  %60 = call i64 @PdhGetRawCounterValue(i32* %59, i32* null, %struct.TYPE_3__* %4)
  store i64 %60, i64* %1, align 8
  %61 = load i64, i64* %1, align 8
  %62 = load i64, i64* @ERROR_SUCCESS, align 8
  %63 = icmp eq i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = load i64, i64* %1, align 8
  %66 = call i32 @ok(i32 %64, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.3, i64 0, i64 0), i64 %65)
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @ERROR_SUCCESS, align 8
  %70 = icmp eq i64 %68, %69
  %71 = zext i1 %70 to i32
  %72 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %4, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = call i32 @ok(i32 %71, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.4, i64 0, i64 0), i64 %73)
  %75 = load i32, i32* %2, align 4
  %76 = call i64 @PdhCloseQuery(i32 %75)
  store i64 %76, i64* %1, align 8
  %77 = load i64, i64* %1, align 8
  %78 = load i64, i64* @ERROR_SUCCESS, align 8
  %79 = icmp eq i64 %77, %78
  %80 = zext i1 %79 to i32
  %81 = load i64, i64* %1, align 8
  %82 = call i32 @ok(i32 %80, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.6, i64 0, i64 0), i64 %81)
  ret void
}

declare dso_local i64 @PdhOpenQueryA(i32*, i32, i32*) #1

declare dso_local i32 @ok(i32, i8*, i64) #1

declare dso_local i64 @PdhAddCounterA(i32, i8*, i32, i32**) #1

declare dso_local i64 @PdhGetRawCounterValue(i32*, i32*, %struct.TYPE_3__*) #1

declare dso_local i64 @PdhCollectQueryData(i32) #1

declare dso_local i64 @PdhCloseQuery(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
