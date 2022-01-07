; ModuleID = '/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_address.c_AddrBuildAddress.c'
source_filename = "/home/carl/AnghaBench/reactos/sdk/lib/drivers/ip/network/extr_address.c_AddrBuildAddress.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32 }

@TDI_ADDRESS_TYPE_IP = common dso_local global i64 0, align 8
@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"AddressType %x, Not valid\0A\00", align 1
@STATUS_INVALID_ADDRESS = common dso_local global i32 0, align 4
@TDI_ADDRESS_LENGTH_IP = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [43 x i8] c"AddressLength %x, Not valid (expected %x)\0A\00", align 1
@STATUS_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @AddrBuildAddress(%struct.TYPE_5__* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_7__*, %struct.TYPE_7__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i64 0
  store %struct.TYPE_7__* %13, %struct.TYPE_7__** %9, align 8
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @TDI_ADDRESS_TYPE_IP, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %27

19:                                               ; preds = %3
  %20 = load i32, i32* @MID_TRACE, align 4
  %21 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %22 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to i8*
  %25 = call i32 @TI_DbgPrint(i32 %20, i8* %24)
  %26 = load i32, i32* @STATUS_INVALID_ADDRESS, align 4
  store i32 %26, i32* %4, align 4
  br label %57

27:                                               ; preds = %3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %29 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @TDI_ADDRESS_LENGTH_IP, align 8
  %32 = icmp slt i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load i32, i32* @MID_TRACE, align 4
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @TDI_ADDRESS_LENGTH_IP, align 8
  %39 = inttoptr i64 %38 to i8*
  %40 = call i32 @TI_DbgPrint(i32 %34, i8* %39)
  %41 = load i32, i32* @STATUS_INVALID_ADDRESS, align 4
  store i32 %41, i32* %4, align 4
  br label %57

42:                                               ; preds = %27
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.TYPE_6__*
  store %struct.TYPE_6__* %46, %struct.TYPE_6__** %8, align 8
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @AddrInitIPv4(i32 %47, i32 %50)
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32*, i32** %7, align 8
  store i32 %54, i32* %55, align 4
  %56 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %56, i32* %4, align 4
  br label %57

57:                                               ; preds = %42, %33, %19
  %58 = load i32, i32* %4, align 4
  ret i32 %58
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @AddrInitIPv4(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
