; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICSetMulticastAddressMask.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICSetMulticastAddressMask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32*, i64 }

@PG0_CR = common dso_local global i64 0, align 8
@CR_STP = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE1 = common dso_local global i32 0, align 4
@PG1_MAR = common dso_local global i64 0, align 8
@CR_PAGE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @NICSetMulticastAddressMask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NICSetMulticastAddressMask(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PG0_CR, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @CR_STP, align 4
  %11 = load i32, i32* @CR_RD2, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CR_PAGE1, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @NdisRawWritePortUchar(i64 %9, i32 %14)
  store i32 0, i32* %4, align 4
  br label %16

16:                                               ; preds = %36, %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp slt i32 %17, 8
  br i1 %18, label %19, label %39

19:                                               ; preds = %16
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @PG1_MAR, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = add nsw i64 %24, %26
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %4, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @NdisRawWritePortUchar(i64 %27, i32 %34)
  br label %36

36:                                               ; preds = %19
  %37 = load i32, i32* %4, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %4, align 4
  br label %16

39:                                               ; preds = %16
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @PG0_CR, align 8
  %44 = add nsw i64 %42, %43
  %45 = load i32, i32* @CR_STP, align 4
  %46 = load i32, i32* @CR_RD2, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @CR_PAGE0, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @NdisRawWritePortUchar(i64 %44, i32 %49)
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
