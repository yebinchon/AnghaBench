; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/lan/lan/extr_routines.c_AllocatePacketWithBufferX.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/lan/lan/extr_routines.c_AllocatePacketWithBufferX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NonPagedPool = common dso_local global i32 0, align 4
@NDIS_STATUS_NOT_ACCEPTED = common dso_local global i64 0, align 8
@GlobalPacketPool = common dso_local global i32 0, align 4
@NDIS_STATUS_SUCCESS = common dso_local global i64 0, align 8
@NDIS_PACKET_TAG = common dso_local global i32 0, align 4
@GlobalBufferPool = common dso_local global i32 0, align 4
@NDIS_BUFFER_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @AllocatePacketWithBufferX(i32* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  store i32* %0, i32** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %16 = load i32, i32* @NonPagedPool, align 4
  %17 = load i32, i32* %9, align 4
  %18 = call i32 @exAllocatePool(i32 %16, i32 %17)
  store i32 %18, i32* %15, align 4
  %19 = load i32, i32* %15, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %5
  %22 = load i64, i64* @NDIS_STATUS_NOT_ACCEPTED, align 8
  store i64 %22, i64* %6, align 8
  br label %71

23:                                               ; preds = %5
  %24 = load i32, i32* %8, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load i32, i32* %15, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* %9, align 4
  %30 = call i32 @RtlCopyMemory(i32 %27, i32 %28, i32 %29)
  br label %31

31:                                               ; preds = %26, %23
  %32 = load i32, i32* @GlobalPacketPool, align 4
  %33 = call i32 @NdisAllocatePacket(i64* %14, i32* %12, i32 %32)
  %34 = load i64, i64* %14, align 8
  %35 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %36 = icmp ne i64 %34, %35
  br i1 %36, label %37, label %41

37:                                               ; preds = %31
  %38 = load i32, i32* %15, align 4
  %39 = call i32 @exFreePool(i32 %38)
  %40 = load i64, i64* %14, align 8
  store i64 %40, i64* %6, align 8
  br label %71

41:                                               ; preds = %31
  %42 = load i32, i32* @NDIS_PACKET_TAG, align 4
  %43 = load i32, i32* %12, align 4
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @TrackWithTag(i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load i32, i32* @GlobalBufferPool, align 4
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @NdisAllocateBuffer(i64* %14, i32* %13, i32 %47, i32 %48, i32 %49)
  %51 = load i64, i64* %14, align 8
  %52 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  %53 = icmp ne i64 %51, %52
  br i1 %53, label %54, label %59

54:                                               ; preds = %41
  %55 = load i32, i32* %15, align 4
  %56 = call i32 @exFreePool(i32 %55)
  %57 = load i32, i32* %12, align 4
  %58 = call i32 @FreeNdisPacket(i32 %57)
  br label %59

59:                                               ; preds = %54, %41
  %60 = load i32, i32* @NDIS_BUFFER_TAG, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* %11, align 4
  %64 = call i32 @TrackWithTag(i32 %60, i32 %61, i32 %62, i32 %63)
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* %13, align 4
  %67 = call i32 @NdisChainBufferAtFront(i32 %65, i32 %66)
  %68 = load i32, i32* %12, align 4
  %69 = load i32*, i32** %7, align 8
  store i32 %68, i32* %69, align 4
  %70 = load i64, i64* @NDIS_STATUS_SUCCESS, align 8
  store i64 %70, i64* %6, align 8
  br label %71

71:                                               ; preds = %59, %37, %21
  %72 = load i64, i64* %6, align 8
  ret i64 %72
}

declare dso_local i32 @exAllocatePool(i32, i32) #1

declare dso_local i32 @RtlCopyMemory(i32, i32, i32) #1

declare dso_local i32 @NdisAllocatePacket(i64*, i32*, i32) #1

declare dso_local i32 @exFreePool(i32) #1

declare dso_local i32 @TrackWithTag(i32, i32, i32, i32) #1

declare dso_local i32 @NdisAllocateBuffer(i64*, i32*, i32, i32, i32) #1

declare dso_local i32 @FreeNdisPacket(i32) #1

declare dso_local i32 @NdisChainBufferAtFront(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
