; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_buffer.c_FreeNdisPacket.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/tcpip/tcpip/extr_buffer.c_FreeNdisPacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_PBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Packet (0x%X)\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"Freeing ndis buffer (0x%X)\0A\00", align 1
@.str.2 = private unnamed_addr constant [28 x i8] c"Freeing exal buffer (0x%X)\0A\00", align 1
@PACKET_BUFFER_TAG = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeNdisPacket(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %8 = load i32, i32* @DEBUG_PBUFFER, align 4
  %9 = load i32, i32* %3, align 4
  %10 = sext i32 %9 to i64
  %11 = inttoptr i64 %10 to i8*
  %12 = call i32 @TI_DbgPrint(i32 %8, i8* %11)
  %13 = load i32, i32* %3, align 4
  %14 = call i32 @NdisQueryPacket(i32 %13, i32* null, i32* null, i32** %4, i32* null)
  br label %15

15:                                               ; preds = %37, %1
  %16 = load i32*, i32** %4, align 8
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %39

18:                                               ; preds = %15
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @NdisGetNextBuffer(i32* %19, i32** %5)
  %21 = load i32*, i32** %4, align 8
  %22 = call i32 @NdisQueryBuffer(i32* %21, i32* %6, i32* %7)
  %23 = load i32, i32* @DEBUG_PBUFFER, align 4
  %24 = load i32*, i32** %4, align 8
  %25 = bitcast i32* %24 to i8*
  %26 = call i32 @TI_DbgPrint(i32 %23, i8* %25)
  %27 = load i32*, i32** %4, align 8
  %28 = call i32 @NdisFreeBuffer(i32* %27)
  %29 = load i32, i32* @DEBUG_PBUFFER, align 4
  %30 = load i32, i32* %6, align 4
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i8*
  %33 = call i32 @TI_DbgPrint(i32 %29, i8* %32)
  %34 = load i32, i32* %6, align 4
  %35 = load i32, i32* @PACKET_BUFFER_TAG, align 4
  %36 = call i32 @ExFreePoolWithTag(i32 %34, i32 %35)
  br label %37

37:                                               ; preds = %18
  %38 = load i32*, i32** %5, align 8
  store i32* %38, i32** %4, align 8
  br label %15

39:                                               ; preds = %15
  %40 = load i32, i32* %3, align 4
  %41 = call i32 @NdisFreePacket(i32 %40)
  %42 = load i32, i32* %2, align 4
  ret i32 %42
}

declare dso_local i32 @TI_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisQueryPacket(i32, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @NdisGetNextBuffer(i32*, i32**) #1

declare dso_local i32 @NdisQueryBuffer(i32*, i32*, i32*) #1

declare dso_local i32 @NdisFreeBuffer(i32*) #1

declare dso_local i32 @ExFreePoolWithTag(i32, i32) #1

declare dso_local i32 @NdisFreePacket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
