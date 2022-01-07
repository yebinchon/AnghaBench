; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_ProbeAddressForNIC.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_ProbeAddressForNIC.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MID_TRACE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"Probing address 0x%x\0A\00", align 1
@PG0_IMR = common dso_local global i64 0, align 8
@PG0_CR = common dso_local global i64 0, align 8
@CR_STP = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_STA = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @ProbeAddressForNIC to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ProbeAddressForNIC(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  store i64 %0, i64* %3, align 8
  %5 = load i32, i32* @MID_TRACE, align 4
  %6 = load i64, i64* %3, align 8
  %7 = inttoptr i64 %6 to i8*
  %8 = call i32 @NDIS_DbgPrint(i32 %5, i8* %7)
  %9 = load i64, i64* %3, align 8
  %10 = load i64, i64* @PG0_IMR, align 8
  %11 = add nsw i64 %9, %10
  %12 = call i32 @NdisRawWritePortUchar(i64 %11, i32 0)
  %13 = load i64, i64* %3, align 8
  %14 = load i64, i64* @PG0_CR, align 8
  %15 = add nsw i64 %13, %14
  %16 = load i32, i32* @CR_STP, align 4
  %17 = load i32, i32* @CR_RD2, align 4
  %18 = or i32 %16, %17
  %19 = call i32 @NdisRawWritePortUchar(i64 %15, i32 %18)
  %20 = call i32 @NdisStallExecution(i32 1600)
  %21 = load i64, i64* %3, align 8
  %22 = load i64, i64* @PG0_CR, align 8
  %23 = add nsw i64 %21, %22
  %24 = call i32 @NdisRawReadPortUchar(i64 %23, i32* %4)
  %25 = load i32, i32* %4, align 4
  %26 = load i32, i32* @CR_RD2, align 4
  %27 = load i32, i32* @CR_STP, align 4
  %28 = or i32 %26, %27
  %29 = icmp eq i32 %25, %28
  br i1 %29, label %38, label %30

30:                                               ; preds = %1
  %31 = load i32, i32* %4, align 4
  %32 = load i32, i32* @CR_RD2, align 4
  %33 = load i32, i32* @CR_STP, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @CR_STA, align 4
  %36 = or i32 %34, %35
  %37 = icmp eq i32 %31, %36
  br i1 %37, label %38, label %40

38:                                               ; preds = %30, %1
  %39 = load i32, i32* @TRUE, align 4
  store i32 %39, i32* %2, align 4
  br label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @FALSE, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @NDIS_DbgPrint(i32, i8*) #1

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NdisStallExecution(i32) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
