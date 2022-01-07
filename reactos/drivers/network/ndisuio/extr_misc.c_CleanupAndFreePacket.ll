; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_misc.c_CleanupAndFreePacket.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/ndisuio/extr_misc.c_CleanupAndFreePacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@TRUE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CleanupAndFreePacket(i32 %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i64 %1, i64* %5, align 8
  br label %9

9:                                                ; preds = %28, %2
  %10 = load i64, i64* @TRUE, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @NdisUnchainBufferAtFront(i32 %13, i32* %6)
  %15 = load i32, i32* %6, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %12
  br label %29

18:                                               ; preds = %12
  %19 = load i32, i32* %6, align 4
  %20 = call i32 @NdisQueryBuffer(i32 %19, i32* %7, i32* %8)
  %21 = load i32, i32* %6, align 4
  %22 = call i32 @NdisFreeBuffer(i32 %21)
  %23 = load i64, i64* %5, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load i32, i32* %7, align 4
  %27 = call i32 @ExFreePool(i32 %26)
  br label %28

28:                                               ; preds = %25, %18
  br label %9

29:                                               ; preds = %17, %9
  %30 = load i32, i32* %4, align 4
  %31 = call i32 @NdisFreePacket(i32 %30)
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @NdisUnchainBufferAtFront(i32, i32*) #1

declare dso_local i32 @NdisQueryBuffer(i32, i32*, i32*) #1

declare dso_local i32 @NdisFreeBuffer(i32) #1

declare dso_local i32 @ExFreePool(i32) #1

declare dso_local i32 @NdisFreePacket(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
