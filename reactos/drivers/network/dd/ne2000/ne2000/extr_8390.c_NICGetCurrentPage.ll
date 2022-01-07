; ModuleID = '/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICGetCurrentPage.c'
source_filename = "/home/carl/AnghaBench/reactos/drivers/network/dd/ne2000/ne2000/extr_8390.c_NICGetCurrentPage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@PG0_CR = common dso_local global i64 0, align 8
@CR_STA = common dso_local global i32 0, align 4
@CR_RD2 = common dso_local global i32 0, align 4
@CR_PAGE1 = common dso_local global i32 0, align 4
@PG1_CURR = common dso_local global i64 0, align 8
@CR_PAGE0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_3__*)* @NICGetCurrentPage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @NICGetCurrentPage(%struct.TYPE_3__* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 1
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @PG0_CR, align 8
  %9 = add nsw i64 %7, %8
  %10 = load i32, i32* @CR_STA, align 4
  %11 = load i32, i32* @CR_RD2, align 4
  %12 = or i32 %10, %11
  %13 = load i32, i32* @CR_PAGE1, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @NdisRawWritePortUchar(i64 %9, i32 %14)
  %16 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %17 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @PG1_CURR, align 8
  %20 = add nsw i64 %18, %19
  %21 = call i32 @NdisRawReadPortUchar(i64 %20, i32* %4)
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @PG0_CR, align 8
  %26 = add nsw i64 %24, %25
  %27 = load i32, i32* @CR_STA, align 4
  %28 = load i32, i32* @CR_RD2, align 4
  %29 = or i32 %27, %28
  %30 = load i32, i32* @CR_PAGE0, align 4
  %31 = or i32 %29, %30
  %32 = call i32 @NdisRawWritePortUchar(i64 %26, i32 %31)
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load i32, i32* %2, align 4
  ret i32 %36
}

declare dso_local i32 @NdisRawWritePortUchar(i64, i32) #1

declare dso_local i32 @NdisRawReadPortUchar(i64, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
