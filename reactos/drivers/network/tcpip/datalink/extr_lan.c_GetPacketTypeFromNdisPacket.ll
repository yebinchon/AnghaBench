; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/datalink/extr_lan.c_GetPacketTypeFromNdisPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/datalink/extr_lan.c_GetPacketTypeFromNdisPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32 }

@NonPagedPool = common dso_local global i32 0, align 4
@HEADER_TAG = common dso_local global i32 0, align 4
@NDIS_STATUS_RESOURCES = common dso_local global i32 0, align 4
@DEBUG_DATALINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"Runt frame (size %d).\0A\00", align 1
@NDIS_STATUS_NOT_ACCEPTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @GetPacketTypeFromNdisPacket(%struct.TYPE_4__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* @NonPagedPool, align 4
  %12 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @HEADER_TAG, align 4
  %16 = call i32 @ExAllocatePoolWithTag(i32 %11, i32 %14, i32 %15)
  store i32 %16, i32* %8, align 4
  %17 = load i32, i32* %8, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %3
  %20 = load i32, i32* @NDIS_STATUS_RESOURCES, align 4
  store i32 %20, i32* %4, align 4
  br label %53

21:                                               ; preds = %3
  %22 = load i32, i32* %8, align 4
  %23 = load i32, i32* %6, align 4
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @CopyPacketToBuffer(i32 %22, i32 %23, i32 0, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp ne i32 %28, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %21
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @HEADER_TAG, align 4
  %36 = call i32 @ExFreePoolWithTag(i32 %34, i32 %35)
  %37 = load i32, i32* @DEBUG_DATALINK, align 4
  %38 = load i32, i32* %9, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i8*
  %41 = call i32 @TI_DbgPrint(i32 %37, i8* %40)
  %42 = load i32, i32* @NDIS_STATUS_NOT_ACCEPTED, align 4
  store i32 %42, i32* %4, align 4
  br label %53

43:                                               ; preds = %21
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %5, align 8
  %45 = load i32, i32* %8, align 4
  %46 = load i32, i32* %9, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i32 @GetPacketTypeFromHeaderBuffer(%struct.TYPE_4__* %44, i32 %45, i32 %46, i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load i32, i32* %8, align 4
  %50 = load i32, i32* @HEADER_TAG, align 4
  %51 = call i32 @ExFreePoolWithTag(i32 %49, i32 %50)
  %52 = load i32, i32* %10, align 4
  store i32 %52, i32* %4, align 4
  br label %53

53:                                               ; preds = %43, %33, %19
  %54 = load i32, i32* %4, align 4
  ret i32 %54
}

declare dso_local i32 @ExAllocatePoolWithTag(i32, i32, i32) #1

declare dso_local i32 @CopyPacketToBuffer(i32, i32, i32, i32) #1

declare dso_local i32 @ExFreePoolWithTag(i32, i32) #1

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @GetPacketTypeFromHeaderBuffer(%struct.TYPE_4__*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
