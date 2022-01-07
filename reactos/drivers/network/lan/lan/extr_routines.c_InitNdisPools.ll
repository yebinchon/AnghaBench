; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/lan/lan/extr_routines.c_InitNdisPools.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/lan/lan/extr_routines.c_InitNdisPools.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@GlobalPacketPool = common dso_local global i32 0, align 4
@GlobalBufferPool = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @InitNdisPools() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = call i32 @NdisAllocatePacketPool(i32* %2, i32* @GlobalPacketPool, i32 100, i32 0)
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @NT_SUCCESS(i32 %4)
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %0
  %8 = load i32, i32* %2, align 4
  store i32 %8, i32* %1, align 4
  br label %19

9:                                                ; preds = %0
  %10 = call i32 @NdisAllocateBufferPool(i32* %2, i32* @GlobalBufferPool, i32 100)
  %11 = load i32, i32* %2, align 4
  %12 = call i32 @NT_SUCCESS(i32 %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = load i32, i32* @GlobalPacketPool, align 4
  %16 = call i32 @NdisFreePacketPool(i32 %15)
  br label %17

17:                                               ; preds = %14, %9
  %18 = load i32, i32* %2, align 4
  store i32 %18, i32* %1, align 4
  br label %19

19:                                               ; preds = %17, %7
  %20 = load i32, i32* %1, align 4
  ret i32 %20
}

declare dso_local i32 @NdisAllocatePacketPool(i32*, i32*, i32, i32) #1

declare dso_local i32 @NT_SUCCESS(i32) #1

declare dso_local i32 @NdisAllocateBufferPool(i32*, i32*, i32) #1

declare dso_local i32 @NdisFreePacketPool(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
