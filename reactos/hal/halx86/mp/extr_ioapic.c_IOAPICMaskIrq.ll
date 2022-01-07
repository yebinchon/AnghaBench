; ModuleID = '/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_ioapic.c_IOAPICMaskIrq.c'
source_filename = "/home/carl/AnghaBench/reactos/hal/halx86/mp/extr_ioapic.c_IOAPICMaskIrq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@IrqApicMap = common dso_local global i64* null, align 8
@IOAPIC_REDTBL = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @IOAPICMaskIrq(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  %4 = alloca %struct.TYPE_6__, align 4
  %5 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %6 = load i64*, i64** @IrqApicMap, align 8
  %7 = load i64, i64* %3, align 8
  %8 = getelementptr inbounds i64, i64* %6, i64 %7
  %9 = load i64, i64* %8, align 8
  store i64 %9, i64* %5, align 8
  %10 = load i64, i64* %5, align 8
  %11 = load i64, i64* @IOAPIC_REDTBL, align 8
  %12 = load i64, i64* %3, align 8
  %13 = mul i64 2, %12
  %14 = add i64 %11, %13
  %15 = call i32 @IOAPICRead(i64 %10, i64 %14)
  %16 = bitcast %struct.TYPE_6__* %4 to i32*
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  store i32 %15, i32* %17, align 4
  %18 = load i64, i64* %5, align 8
  %19 = load i64, i64* @IOAPIC_REDTBL, align 8
  %20 = load i64, i64* %3, align 8
  %21 = mul i64 2, %20
  %22 = add i64 %19, %21
  %23 = add i64 %22, 1
  %24 = call i32 @IOAPICRead(i64 %18, i64 %23)
  %25 = bitcast %struct.TYPE_6__* %4 to i32*
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = call i32 (...) @KeGetCurrentProcessorNumber()
  %28 = shl i32 1, %27
  %29 = xor i32 %28, -1
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = and i32 %33, %29
  store i32 %34, i32* %32, align 4
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 1
  %36 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %1
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %4, i32 0, i32 0
  store i32 1, i32* %41, align 4
  br label %42

42:                                               ; preds = %40, %1
  %43 = load i64, i64* %5, align 8
  %44 = load i64, i64* @IOAPIC_REDTBL, align 8
  %45 = load i64, i64* %3, align 8
  %46 = mul i64 2, %45
  %47 = add i64 %44, %46
  %48 = add i64 %47, 1
  %49 = bitcast %struct.TYPE_6__* %4 to i32*
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @IOAPICWrite(i64 %43, i64 %48, i32 %51)
  %53 = load i64, i64* %5, align 8
  %54 = load i64, i64* @IOAPIC_REDTBL, align 8
  %55 = load i64, i64* %3, align 8
  %56 = mul i64 2, %55
  %57 = add i64 %54, %56
  %58 = bitcast %struct.TYPE_6__* %4 to i32*
  %59 = getelementptr inbounds i32, i32* %58, i64 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @IOAPICWrite(i64 %53, i64 %57, i32 %60)
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @IOAPICRead(i64, i64) #1

declare dso_local i32 @KeGetCurrentProcessorNumber(...) #1

declare dso_local i32 @IOAPICWrite(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
