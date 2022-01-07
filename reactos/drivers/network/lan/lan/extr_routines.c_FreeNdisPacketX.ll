; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/lan/lan/extr_routines.c_FreeNdisPacketX.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/lan/lan/extr_routines.c_FreeNdisPacketX.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEBUG_PBUFFER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [15 x i8] c"Packet (0x%X)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @FreeNdisPacketX(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32* %0, i32** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load i32, i32* @DEBUG_PBUFFER, align 4
  %13 = load i32*, i32** %5, align 8
  %14 = bitcast i32* %13 to i8*
  %15 = call i32 @LA_DbgPrint(i32 %12, i8* %14)
  %16 = load i32*, i32** %5, align 8
  %17 = call i32 @NdisQueryPacket(i32* %16, i32* null, i32* null, i32** %8, i32* null)
  br label %18

18:                                               ; preds = %34, %3
  %19 = load i32*, i32** %8, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %18
  %22 = load i32*, i32** %8, align 8
  %23 = call i32 @NdisGetNextBuffer(i32* %22, i32** %9)
  %24 = load i32*, i32** %8, align 8
  %25 = call i32 @NdisQueryBuffer(i32* %24, i32* %10, i32* %11)
  %26 = load i32*, i32** %8, align 8
  %27 = call i32 @NdisFreeBuffer(i32* %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* %7, align 4
  %30 = load i32*, i32** %8, align 8
  %31 = call i32 @UntrackFL(i32 %28, i32 %29, i32* %30)
  %32 = load i32, i32* %10, align 4
  %33 = call i32 @exFreePool(i32 %32)
  br label %34

34:                                               ; preds = %21
  %35 = load i32*, i32** %9, align 8
  store i32* %35, i32** %8, align 8
  br label %18

36:                                               ; preds = %18
  %37 = load i32*, i32** %5, align 8
  %38 = call i32 @NdisFreePacket(i32* %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load i32*, i32** %5, align 8
  %42 = call i32 @UntrackFL(i32 %39, i32 %40, i32* %41)
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i32 @LA_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisQueryPacket(i32*, i32*, i32*, i32**, i32*) #1

declare dso_local i32 @NdisGetNextBuffer(i32*, i32**) #1

declare dso_local i32 @NdisQueryBuffer(i32*, i32*, i32*) #1

declare dso_local i32 @NdisFreeBuffer(i32*) #1

declare dso_local i32 @UntrackFL(i32, i32, i32*) #1

declare dso_local i32 @exFreePool(i32) #1

declare dso_local i32 @NdisFreePacket(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
