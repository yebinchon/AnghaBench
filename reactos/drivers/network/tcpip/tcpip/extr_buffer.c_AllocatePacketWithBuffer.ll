; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_buffer.c_AllocatePacketWithBuffer.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_buffer.c_AllocatePacketWithBuffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NonPagedPool = common dso_local global i32 0, align 4
@PACKET_BUFFER_TAG = common dso_local global i32 0, align 4
@NDIS_STATUS_RESOURCES = common dso_local global i64 0, align 8
@GlobalPacketPool = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@GlobalBufferPool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AllocatePacketWithBuffer(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @NonPagedPool, align 4
  %13 = load i32, i32* %7, align 4
  %14 = load i32, i32* @PACKET_BUFFER_TAG, align 4
  %15 = call i32 @ExAllocatePoolWithTag(i32 %12, i32 %13, i32 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i32, i32* %11, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %20, label %18

18:                                               ; preds = %3
  %19 = load i64, i64* @NDIS_STATUS_RESOURCES, align 8
  store i64 %19, i64* %4, align 8
  br label %61

20:                                               ; preds = %3
  %21 = load i32, i32* %6, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %20
  %24 = load i32, i32* %11, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @RtlCopyMemory(i32 %24, i32 %25, i32 %26)
  br label %28

28:                                               ; preds = %23, %20
  %29 = load i32, i32* @GlobalPacketPool, align 4
  %30 = call i32 @NdisAllocatePacket(i64* %10, i32* %8, i32 %29)
  %31 = load i64, i64* %10, align 8
  %32 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %39

34:                                               ; preds = %28
  %35 = load i32, i32* %11, align 4
  %36 = load i32, i32* @PACKET_BUFFER_TAG, align 4
  %37 = call i32 @ExFreePoolWithTag(i32 %35, i32 %36)
  %38 = load i64, i64* %10, align 8
  store i64 %38, i64* %4, align 8
  br label %61

39:                                               ; preds = %28
  %40 = load i32, i32* @GlobalBufferPool, align 4
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @NdisAllocateBuffer(i64* %10, i32* %9, i32 %40, i32 %41, i32 %42)
  %44 = load i64, i64* %10, align 8
  %45 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %46 = icmp ne i64 %44, %45
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* @PACKET_BUFFER_TAG, align 4
  %50 = call i32 @ExFreePoolWithTag(i32 %48, i32 %49)
  %51 = load i32, i32* %8, align 4
  %52 = call i32 @FreeNdisPacket(i32 %51)
  %53 = load i64, i64* %10, align 8
  store i64 %53, i64* %4, align 8
  br label %61

54:                                               ; preds = %39
  %55 = load i32, i32* %8, align 4
  %56 = load i32, i32* %9, align 4
  %57 = call i32 @NdisChainBufferAtFront(i32 %55, i32 %56)
  %58 = load i32, i32* %8, align 4
  %59 = load i32*, i32** %5, align 8
  store i32 %58, i32* %59, align 4
  %60 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  store i64 %60, i64* %4, align 8
  br label %61

61:                                               ; preds = %54, %47, %34, %18
  %62 = load i64, i64* %4, align 8
  ret i64 %62
}

declare dso_local i32 @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @NdisAllocatePacket(i64*, i32*, i32) #1

declare dso_local i32 @ExFreePoolWithTag(i32, i32) #1

declare dso_local i32 @NdisAllocateBuffer(i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @FreeNdisPacket(i32) #1

declare dso_local i32 @NdisChainBufferAtFront(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
