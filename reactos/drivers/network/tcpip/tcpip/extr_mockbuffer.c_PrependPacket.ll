; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_mockbuffer.c_PrependPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_mockbuffer.c_PrependPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@STATUS_NO_MEMORY = common dso_local global i64 0, align 8
@GlobalBufferPool = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@STATUS_SUCCESS = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PrependPacket(i32 %0, i64 %1, i32 %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load i64, i64* %9, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %27

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = call i64 @PoolAllocateBuffer(i32 %16)
  store i64 %17, i64* %12, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %22, label %20

20:                                               ; preds = %15
  %21 = load i64, i64* @STATUS_NO_MEMORY, align 8
  store i64 %21, i64* %5, align 8
  br label %44

22:                                               ; preds = %15
  %23 = load i64, i64* %12, align 8
  %24 = load i64, i64* %7, align 8
  %25 = load i32, i32* %8, align 4
  %26 = call i32 @RtlCopyMemory(i64 %23, i64 %24, i32 %25)
  br label %29

27:                                               ; preds = %4
  %28 = load i64, i64* %7, align 8
  store i64 %28, i64* %12, align 8
  br label %29

29:                                               ; preds = %27, %22
  %30 = load i32, i32* @GlobalBufferPool, align 4
  %31 = load i64, i64* %7, align 8
  %32 = load i32, i32* %8, align 4
  %33 = call i32 @NdisAllocateBuffer(i64* %11, i32* %10, i32 %30, i64 %31, i32 %32)
  %34 = load i64, i64* %11, align 8
  %35 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %39

37:                                               ; preds = %29
  %38 = load i64, i64* %11, align 8
  store i64 %38, i64* %5, align 8
  br label %44

39:                                               ; preds = %29
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %10, align 4
  %42 = call i32 @NdisChainBufferAtFront(i32 %40, i32 %41)
  %43 = load i64, i64* @STATUS_SUCCESS, align 8
  store i64 %43, i64* %5, align 8
  br label %44

44:                                               ; preds = %39, %37, %20
  %45 = load i64, i64* %5, align 8
  ret i64 %45
}

declare dso_local i64 @PoolAllocateBuffer(i32) #1

declare dso_local i32 @RtlCopyMemory(i64, i64, i32) #1

declare dso_local i32 @NdisAllocateBuffer(i64*, i32*, i32, i64, i32) #1

declare dso_local i32 @NdisChainBufferAtFront(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
